import requests
import mysql.connector
 
# Konfigurasi database
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'test_database'
}
 
# Alamat URL API
api_url = "https://satudata.kuburayakab.go.id/dataset/e82143d4-daef-47eb-89c6-6e9cea462bcf/resource/122b47d9-ded0-4e1d-a3cb-2b2331af0776/download/data-agregat-kabupaten-kubu-raya-menurut-wna.json"
 
try:
    # Mengirim permintaan GET ke API
    response = requests.get(api_url)
 
    # Memeriksa status kode respons
    if response.status_code == 200:
        # Parse data JSON yang diterima
        desa_data = response.json()
 
        # Membuka koneksi ke database
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
 
        # Menambahkan data pengguna ke dalam tabel
        for desa in desa_data:
            cursor.execute('''
                INSERT INTO desa (kode_kec, nama_kecamatan, laki_laki, perempuan, jumlah)
                VALUES (%s, %s, %s, %s, %s)
            ''', (desa['KODE KEC'], desa['NAMA KECAMATAN'], desa['LAKI-LAKI'], desa['PEREMPUAN'], desa['JUMLAH']))
 
        # Menyimpan perubahan dan menutup koneksi
        conn.commit()
        conn.close()
 
        print("Data pengguna telah disimpan ke database MySQL.")
    else:
        print(f"Gagal mengambil data. Kode status: {response.status_code}")
 
except requests.exceptions.RequestException as e:
    print(f"Terjadi kesalahan saat menghubungi API: {str(e)}")
 