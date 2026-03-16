import mysql.connector

try:
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Str0ngPassw0rd123!"
    )

    print("MySQL connection successful!")

    conn.close()

except Exception as e:
    print("Connection failed:", e)