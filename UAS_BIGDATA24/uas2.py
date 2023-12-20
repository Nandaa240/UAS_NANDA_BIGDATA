# Buat koneksi ke server MySQL
import mysql.connector
db_connection = mysql.connector.connect(

    host="localhost",

    user="root",

    password="",

    database="test_database"  # Ganti dengan nama database yang telah Anda buat

)

 

# Buat objek cursor

db_cursor = db_connection.cursor()

 

# Definisikan struktur tabel 'users'

create_table_query = """
CREATE TABLE desa (
    kode_kec VARCHAR(255) PRIMARY KEY,
    nama_kecamatan VARCHAR(255),
    laki_laki INT,
   perempuan INT,
   jumlah INT
   
)

"""

 

# Eksekusi perintah SQL untuk membuat tabel

db_cursor.execute(create_table_query)

 

# Komit perubahan ke database

db_connection.commit()

 

# Tutup cursor dan koneksi