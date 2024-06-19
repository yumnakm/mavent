import 'package:flutter/material.dart';
import 'package:mavent/ui/widgets/custom_input_form.dart';

class TambahEvent extends StatefulWidget {
  const TambahEvent({Key? key}) : super(key: key);

  @override
  _TambahEventState createState() => _TambahEventState();
}

class _TambahEventState extends State<TambahEvent> {
  final TextEditingController _judulController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();
  final TextEditingController _waktuController = TextEditingController();
  final TextEditingController _tempatController = TextEditingController();
  final TextEditingController _lokasiController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();
  final TextEditingController _imageUrlController = TextEditingController(); // Controller untuk URL gambar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: Text('Tambah Event'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Input form untuk URL gambar
              CustomInputForm(
                controller: _imageUrlController,
                label: 'URL Gambar',
                hint: 'Masukkan URL gambar event',
              ),
              SizedBox(height: 16.0),

              // Preview gambar (jika URL gambar dimasukkan)
              _imageUrlController.text.isNotEmpty
                  ? Image.network(
                      _imageUrlController.text,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    )
                  : SizedBox.shrink(),

              SizedBox(height: 16.0),
              // Input form untuk judul, deskripsi, tanggal, waktu, tempat, lokasi, harga
              CustomInputForm(
                controller: _judulController,
                label: 'Judul',
                hint: 'Masukkan judul event',
              ),
              SizedBox(height: 16.0),
              CustomInputForm(
                controller: _deskripsiController,
                label: 'Deskripsi',
                hint: 'Masukkan deskripsi event',
                maxLines: 3,
              ),
              SizedBox(height: 16.0),
              CustomInputForm(
                controller: _tanggalController,
                label: 'Tanggal',
                hint: 'Masukkan tanggal event',
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 16.0),
              CustomInputForm(
                controller: _waktuController,
                label: 'Waktu',
                hint: 'Masukkan waktu event',
              ),
              SizedBox(height: 16.0),
              CustomInputForm(
                controller: _tempatController,
                label: 'Tempat',
                hint: 'Masukkan tempat event',
              ),
              SizedBox(height: 16.0),
              CustomInputForm(
                controller: _lokasiController,
                label: 'Lokasi',
                hint: 'Masukkan lokasi event',
              ),
              SizedBox(height: 16.0),
              CustomInputForm(
                controller: _hargaController,
                label: 'Harga',
                hint: 'Masukkan harga event',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 24.0),
              // Button untuk menyimpan event
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk menyimpan data event
                  // Misalnya:

                  // Mengambil nilai dari controller URL gambar
                  String imageUrl = _imageUrlController.text;

                  // Disimpan ke database atau diproses lebih lanjut
                  // Misalnya simpan ke Firebase atau penyimpanan lainnya
                  // Setelah selesai, bisa kembali ke halaman sebelumnya atau lainnya
                  Navigator.pop(context); // Kembali ke halaman sebelumnya
                },
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(double.infinity, 50), // Atur ukuran minimum tombol
                ),
                child: Text('Simpan Event'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
