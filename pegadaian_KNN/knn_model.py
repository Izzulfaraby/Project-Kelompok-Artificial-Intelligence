import pandas as pd

from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import train_test_split

from sklearn.metrics import (
    accuracy_score,
    precision_score,
    recall_score,
    confusion_matrix
)

from db import get_connection


# ==========================
# LOAD DATASET DARI MYSQL
# ==========================
def load_dataset():

    conn = get_connection()

    query = """
    SELECT
        kategori_barang,
        kondisi_barang,
        garansi,
        box_barang,
        aksesoris,
        bukti_kepemilikan,
        ktp,
        status_kelayakan
    FROM dataset_training
    """

    df = pd.read_sql(query, conn)

    conn.close()

    return df


# ==========================
# TRAIN MODEL
# ==========================
def train_model(k=3):

    df = load_dataset()

    X = df.drop("status_kelayakan", axis=1)
    y = df["status_kelayakan"]

    model = KNeighborsClassifier(n_neighbors=k)

    model.fit(X, y)

    return model


# ==========================
# PREDIKSI DATA BARU
# ==========================
def predict_data(input_data):

    model = train_model()

    hasil = model.predict([input_data])

    return int(hasil[0])


# ==========================
# KONVERSI LABEL
# ==========================
def konversi_hasil(label):

    mapping = {
        0: "Tidak Layak",
        1: "Dipertimbangkan",
        2: "Layak"
    }

    return mapping.get(label, "Tidak Diketahui")


# ==========================
# EVALUASI MODEL
# ==========================
def evaluate_model(k=3):

    df = load_dataset()

    X = df.drop("status_kelayakan", axis=1)
    y = df["status_kelayakan"]

    X_train, X_test, y_train, y_test = train_test_split(
        X,
        y,
        test_size=0.2,
        random_state=42
    )

    model = KNeighborsClassifier(n_neighbors=k)

    model.fit(X_train, y_train)

    y_pred = model.predict(X_test)

    accuracy = accuracy_score(y_test, y_pred)

    precision = precision_score(
        y_test,
        y_pred,
        average="weighted",
        zero_division=0
    )

    recall = recall_score(
        y_test,
        y_pred,
        average="weighted",
        zero_division=0
    )

    cm = confusion_matrix(y_test, y_pred)

    return {
        "accuracy": round(accuracy * 100, 2),
        "precision": round(precision * 100, 2),
        "recall": round(recall * 100, 2),
        "confusion_matrix": cm
    }


# ==========================
# CARI NILAI K TERBAIK
# ==========================
def find_best_k():

    df = load_dataset()

    X = df.drop("status_kelayakan", axis=1)
    y = df["status_kelayakan"]

    X_train, X_test, y_train, y_test = train_test_split(
        X,
        y,
        test_size=0.2,
        random_state=42
    )

    hasil = []

    for k in range(1, 11):

        model = KNeighborsClassifier(n_neighbors=k)

        model.fit(X_train, y_train)

        pred = model.predict(X_test)

        acc = accuracy_score(y_test, pred)

        hasil.append({
            "k": k,
            "accuracy": round(acc * 100, 2)
        })

    return hasil