import mysql.connector
from mysql.connector import Error

db_config = {
    "host": "localhost",
    "user": "root",
    "password": "gokstad",
    "database": "musikk",
    "port": 3006
}

def get_connection():
    try:
        conn = mysql.connector.connect(**db_config)

        if conn.is_connected():
            print(f"\nConnected to MySQL database\n")
            return conn
    except Error as e:
        print(f"\n Connection error {e}")
        return None

def select(table: str) -> list[tuple] | None:
    conn = get_connection()
    if not conn:
        return None


def setup_database(*files):
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="gokstad"
    )
    cursor = conn.cursor()

    for sql_file_name in files:
        print(f"Running script [{sql_file_name}]...")
        with open(sql_file_name, 'r', encoding='utf-8') as sql_file:
            sql_script = sql_file.read()

        for result in cursors.execute(sql_script, multi=True):
            pass
        print(f"request-finished.")

    conn.commit()
    conn.close()
    print("Database and tables setup complete!")


def setup_database(*files):
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="gokstad"
    )

    for sql_file_name in files:
        print(f"Running script [{sql_file_name}]...")

        with open(sql_file_name, 'r', encoding='utf-8') as sql_file:
            sql_script = sql_file.read()

        for result in conn.cmd_query_iter(sql_script):
            pass

        print(f"request-finished.")

    conn.commit()
    conn.close()
    print("Database and tables setup complete!")