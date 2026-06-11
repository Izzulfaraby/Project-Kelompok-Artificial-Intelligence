import streamlit as st
from db import get_connection


def check_login(username, password):
    conn = get_connection()

    if not conn:
        return None

    cursor = conn.cursor(dictionary=True)

    query = "SELECT * FROM users WHERE username = %s AND password = %s"
    cursor.execute(query, (username, password))
    user = cursor.fetchone()

    cursor.close()
    conn.close()

    return user
def load_css():
    with open("style.css") as f:
        st.markdown(f"<style>{f.read()}</style>", unsafe_allow_html=True)
        
load_css()

def login_page():
    st.image("logo.jpeg", width=90)
    st.title("LOGIN SISTEM PEGADAIAN")
    st.subheader("Silakan login terlebih dahulu")

    username = st.text_input("Username")
    password = st.text_input("Password", type="password")

    if st.button("Login"):

        # VALIDASI INPUT
        if username == "" or password == "":
            st.warning("Username dan password harus diisi!")
            return

        user = check_login(username, password)

        if user:
            st.session_state["login"] = True
            st.session_state["username"] = user["username"]
            st.success("Login berhasil!")
            st.rerun()
        else:
            st.error("Username atau password salah")