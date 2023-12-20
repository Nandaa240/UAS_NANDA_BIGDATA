import requests #library yang kita gunakan untuk mengakses API/json
import pandas as pd
import json
 
# Alamat URL API
api_url = "https://satudata.kuburayakab.go.id/dataset/e82143d4-daef-47eb-89c6-6e9cea462bcf/resource/122b47d9-ded0-4e1d-a3cb-2b2331af0776/download/data-agregat-kabupaten-kubu-raya-menurut-wna.json"
 
try:
    # Mengirim permintaan GET ke API
    response = requests.get(api_url)
 
    # Memeriksa status kode respons
    if response.status_code == 200:
        # Parse data JSON yang diterima
        datauas_ = response.json()
 
        with open("datauas.json", "w") as json_file:
            json.dump(datauas_, json_file)
 
        # Baca data JSON dari file
        with open('datauas.json', 'r') as json_file:
            data = json_file.read()
 
        # Ubah JSON menjadi DataFrame pandas
        df = pd.read_json(data)
 
        # Simpan DataFrame ke dalam file Excel
        excel_file = 'data_uas.xlsx'
        df.to_excel(excel_file, index=False)
 
        print(f"Data telah disimpan dalam file Excel: {excel_file}")
 
        # Menampilkan hasil
        for desa in datauas_:
            print(f"Kode Desa: {desa['KODE KEC']}")
            print(f"Nama Desa: {desa['NAMA KECAMATAN']}")
            print("-" * 30)
    else:
        print(f"Gagal mengambil data. Kode status: {response.status_code}")
 
except requests.exceptions.RequestException as e:
    print(f"Terjadi kesalahan saat menghubungi API: {str(e)}")
 
 

