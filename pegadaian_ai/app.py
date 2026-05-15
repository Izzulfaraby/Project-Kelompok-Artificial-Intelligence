import streamlit as st
from login import login_page
from rule_engine import evaluate_rules
from db import get_connection

st.set_page_config(page_title="Pegadaian RBS", layout="centered")
def load_css():
    with open("style.css") as f:
        st.markdown(f"<style>{f.read()}</style>", unsafe_allow_html=True)

load_css()
# ========================
# CEK LOGIN
# ========================
if "login" not in st.session_state:
    st.session_state["login"] = False

if not st.session_state["login"]:
    login_page()
    st.stop()

# ========================
# HALAMAN UTAMA
# ========================
st.image("logo.jpeg", width=90)
st.title("Sistem Penentuan Kelayakan Gadai Elektronik")
st.subheader("Pegadaian Rule-Based System")

st.write(f"Login sebagai: **{st.session_state['username']}**")

if st.button("Logout"):
    st.session_state.clear()
    st.rerun()

# ========================
# FORM INPUT
# ========================
st.markdown("### Form Pengajuan")

nama_nasabah = st.text_input("Nama Nasabah")

kategori_barang = st.selectbox(
    "Kategori Barang",
    ["handphone", "laptop", "kamera", "playstation", "speaker"]
)

nama_barang = st.text_input("Nama Barang")

kondisi_barang = st.selectbox(
    "Kondisi Barang",
    ["baik", "cukup", "buruk"]
)

# Kelengkapan
garansi = st.selectbox("Garansi", ["ada", "tidak ada"])
box = st.selectbox("Box/Dus", ["ada", "tidak ada"])
aksesoris = st.selectbox("Aksesoris", ["lengkap", "tidak lengkap"])

# Dokumen
kepemilikan = st.selectbox("Bukti Kepemilikan", ["ada", "tidak ada"])
ktp = st.selectbox("KTP/Identitas", ["ada", "tidak ada"])

# ========================
# PROSES
# ========================
if st.button("Proses Penilaian"):

    if nama_nasabah.strip() == "":
        st.warning("Nama nasabah harus diisi!")
        st.stop()

    # ========================
    # PREPROCESSING (WAJIB)
    # ========================

    # Kelengkapan
    if garansi == "ada" and box == "ada" and aksesoris == "lengkap":
        kelengkapan = "lengkap"
    else:
        kelengkapan = "tidak lengkap"

    # Dokumen
    if kepemilikan == "ada" and ktp == "ada":
        dokumen = "lengkap"
    else:
        dokumen = "tidak lengkap"

    # ========================
    # INPUT KE RULE ENGINE
    # ========================
    user_input = {
    "kategori_barang": kategori_barang,
    "kondisi_barang": kondisi_barang,
    "garansi": garansi,
    "box": box,
    "aksesoris": aksesoris,
    "bukti_kepemilikan": kepemilikan,
    "ktp": ktp
}

    # ========================
    # PROSES RULE
    # ========================
    with st.spinner("Memproses penilaian..."):
        hasil = evaluate_rules(user_input)

    # ========================
    # OUTPUT
    # ========================
    st.success("Hasil Evaluasi")
    st.write(f"**Nama Nasabah:** {nama_nasabah}")
    st.write(f"**Status Kelayakan:** {hasil['status']}")
    st.write(f"**Tingkat Risiko:** {hasil['risiko']}")
    st.write(f"**Persentase Pinjaman:** {hasil['persentase']}%")
    st.write(f"**Rule Digunakan:** {hasil['rule']}")
    st.write(f"**Alasan:** {hasil['keterangan']}")

    # ========================
    # SIMPAN KE DATABASE
    # ========================
    conn = get_connection()

    if conn:
        try:
            cursor = conn.cursor()

            query = """
                INSERT INTO pengajuan
                (nama_nasabah, kategori_barang, nama_barang, kondisi_barang,
                 garansi, box, aksesoris,
                 bukti_kepemilikan, ktp,
                 hasil_status, tingkat_risiko, persentase_pinjaman, rule_terpakai)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """

            values = (
                nama_nasabah,
                kategori_barang,
                nama_barang,
                kondisi_barang,
                garansi,
                box,
                aksesoris,
                kepemilikan,
                ktp,
                hasil["status"],
                hasil["risiko"],
                hasil["persentase"],
                hasil["rule"]
            )

            cursor.execute(query, values)
            conn.commit()

            cursor.close()
            conn.close()

            st.success("Data berhasil disimpan!")

        except Exception as e:
            st.error(f"Gagal menyimpan ke database: {e}")
    else:
        st.error("Gagal koneksi ke database!")