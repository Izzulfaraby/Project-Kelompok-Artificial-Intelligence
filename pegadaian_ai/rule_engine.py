from db import get_connection

def check_condition(input_value, operator, condition_value):
    if input_value is None:
        return False

    input_value = str(input_value).lower()
    condition_value = str(condition_value).lower()

    if operator == "=":
        return input_value == condition_value
    elif operator == "!=":
        return input_value != condition_value

    return False


def evaluate_rules(user_input):
    conn = get_connection()

    if not conn:
        return {
            "status": "Error",
            "risiko": "-",
            "persentase": 0,
            "rule": "Koneksi gagal",
            "keterangan": "Tidak dapat terhubung ke database"
        }

    try:
        cursor = conn.cursor(dictionary=True)

        cursor.execute("SELECT * FROM rules ORDER BY id_rule ASC")
        rules = cursor.fetchall()

        cursor.execute("SELECT * FROM conditions")
        all_conditions = cursor.fetchall()

        kategori = user_input.get("kategori_barang")

        # 🔥 Pisahkan rule berdasarkan kategori
        filtered_rules = []

        for rule in rules:
            conds = [c for c in all_conditions if c["id_rule"] == rule["id_rule"]]

            for c in conds:
                if c["parameter"] == "kategori_barang" and c["value"] == kategori:
                    filtered_rules.append((rule, conds))
                    break

        default_rule = None

        # ========================
        # LOOP RULE
        # ========================
        for rule, conditions in filtered_rules:

            # 🔥 DETEKSI DEFAULT (BENAR)
            if "default" in rule["nama_rule"].lower():
                default_rule = rule
                continue

            matched = True

            for condition in conditions:
                parameter = condition["parameter"]
                operator = condition["operator"]
                value = condition["value"]

                input_value = user_input.get(parameter)

                if not check_condition(input_value, operator, value):
                    matched = False
                    break

            if matched:
                cursor.close()
                conn.close()

                return {
                    "status": rule["hasil_status"],
                    "risiko": rule["tingkat_risiko"],
                    "persentase": rule["persentase_pinjaman"],
                    "rule": rule["nama_rule"],
                    "keterangan": rule["keterangan"]
                }

        # ========================
        # DEFAULT KHUSUS KATEGORI
        # ========================
        if default_rule:
            cursor.close()
            conn.close()

            return {
                "status": default_rule["hasil_status"],
                "risiko": default_rule["tingkat_risiko"],
                "persentase": default_rule["persentase_pinjaman"],
                "rule": default_rule["nama_rule"],
                "keterangan": default_rule["keterangan"]
            }

        # ========================
        # FALLBACK
        # ========================
        cursor.close()
        conn.close()

        return {
            "status": "Tidak Ditemukan",
            "risiko": "-",
            "persentase": 0,
            "rule": "Tidak ada rule cocok",
            "keterangan": "Data tidak memenuhi rule manapun"
        }

    except Exception as e:
        return {
            "status": "Error",
            "risiko": "-",
            "persentase": 0,
            "rule": "Exception",
            "keterangan": str(e)
        }