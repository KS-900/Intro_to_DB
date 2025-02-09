import mysql.connector
from mysql.connector import Error
try:
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Daviddimples1")
    if mydb.is_connected():
        cursor = mydb.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
except Error as e:
    print(f"Error while connecting to MySQL: {e}")
finally:
    if 'cursor' in locals():
        cursor.close()
    if mydb.is_connected():
        mydb.close()
        print("MySQL connection closed")