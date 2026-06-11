import streamlit as st
from login import login_page
from knn_model import (
    predict_data,
    konversi_hasil,
    evaluate_model
)
from db import get_connection

st.set_page_config(
    page_title="Pegadaian KNN",
    layout="centered"
)


# ==========================
# LOAD CSS
# ==========================
def load_css():
    with open("style.css") as f:
        st.markdown(
            f"<style>{f.read()}</style>",
            unsafe_allow_html=True
        )


load_css()


# ==========================
# ENCODING INPUT
# ==========================
def encode_input(
    kategori,
    kondisi,
    garansi,
    box,
    aksesoris,
    kepemilikan,
    ktp
):

    kategori_map = {
        "speaker": 1,
        "handphone": 2,
        "laptop": 3,
        "kamera": 4,
        "playstation": 5
    }

    kondisi_map = {
        "buruk": 1,
        "cukup": 2,
        "baik": 3
    }

    ya_tidak = {
        "tidak ada": 0,
        "ada": 1
    }

    aksesoris_map = {
        "tidak lengkap": 0,
        "lengkap": 1
    }

    return [
        kategori_map[kategori],
        kondisi_map[kondisi],
        ya_tidak[garansi],
        ya_tidak[box],
        aksesoris_map[aksesoris],
        ya_tidak[kepemilikan],
        ya_tidak[ktp]
    ]


# ==========================
# LOGIN
# ==========================
if "login" not in st.session_state:
    st.session_state["login"] = False

if not st.session_state["login"]:
    login_page()
    st.stop()


# ==========================
# HEADER
# ==========================
st.image("logo.jpeg", width=90)

st.title("Sistem Penentuan Kelayakan Gadai Elektronik")
st.subheader("Machine Learning - k-Nearest Neighbor (K-NN)")

st.write(
    f"Login sebagai: **{st.session_state['username']}**"
)

if st.button("Logout"):
    st.session_state.clear()
    st.rerun()


# ==========================
# EVALUASI MODEL
# ==========================
st.markdown("## Evaluasi Model")

try:

    evaluasi = evaluate_model()

    st.write(f"Accuracy : {evaluasi['accuracy']}%")
    st.write(f"Precision : {evaluasi['precision']}%")
    st.write(f"Recall : {evaluasi['recall']}%")

    st.write("### Confusion Matrix")
    st.dataframe(evaluasi["confusion_matrix"])

except Exception as e:
    st.warning(f"Evaluasi model belum tersedia: {e}")


# ==========================
# FORM INPUT
# ==========================
st.markdown("---")
st.markdown("## Form Pengajuan")

nama_nasabah = st.text_input(
    "Nama Nasabah"
)

kategori_barang = st.selectbox(
    "Kategori Barang",
    [
        "speaker",
        "handphone",
        "laptop",
        "kamera",
        "playstation"
    ]
)

nama_barang = st.text_input(
    "Nama Barang"
)

kondisi_barang = st.selectbox(
    "Kondisi Barang",
    [
        "baik",
        "cukup",
        "buruk"
    ]
)

garansi = st.selectbox(
    "Garansi",
    [
        "ada",
        "tidak ada"
    ]
)

box = st.selectbox(
    "Box / Dus",
    [
        "ada",
        "tidak ada"
    ]
)

aksesoris = st.selectbox(
    "Aksesoris",
    [
        "lengkap",
        "tidak lengkap"
    ]
)

kepemilikan = st.selectbox(
    "Bukti Kepemilikan",
    [
        "ada",
        "tidak ada"
    ]
)

ktp = st.selectbox(
    "KTP / Identitas",
    [
        "ada",
        "tidak ada"
    ]
)


# ==========================
# PROSES PREDIKSI
# ==========================
if st.button("Proses Penilaian"):

    if nama_nasabah.strip() == "":
        st.warning("Nama nasabah harus diisi")
        st.stop()

    data_input = encode_input(
        kategori_barang,
        kondisi_barang,
        garansi,
        box,
        aksesoris,
        kepemilikan,
        ktp
    )

    with st.spinner("Melakukan prediksi K-NN..."):

        prediksi = predict_data(data_input)

        hasil = konversi_hasil(prediksi)

    st.success("Hasil Prediksi")

    st.write(f"**Nama Nasabah:** {nama_nasabah}")
    st.write(f"**Nama Barang:** {nama_barang}")
    st.write(f"**Kategori Barang:** {kategori_barang}")
    st.write(f"**Status Kelayakan:** {hasil}")

    # ==========================
    # SIMPAN KE DATABASE
    # ==========================
    try:

        conn = get_connection()
        cursor = conn.cursor()

        query = """
        INSERT INTO pengajuan
        (
            nama_nasabah,
            kategori_barang,
            nama_barang,
            kondisi_barang,
            garansi,
            box,
            aksesoris,
            bukti_kepemilikan,
            ktp,
            hasil_status
        )
        VALUES
        (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
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
            hasil
        )

        cursor.execute(query, values)

        conn.commit()

        cursor.close()
        conn.close()

        st.success(
            "Data berhasil disimpan ke database"
        )

    except Exception as e:
        st.error(
            f"Gagal menyimpan data: {e}"
        )