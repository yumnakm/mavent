import 'package:flutter/material.dart';
import 'package:mavent/models/event_model.dart';
import 'package:mavent/ui/widgets/custom_input_form.dart';

class EditEventPage extends StatefulWidget {
  final EventModel event;

  const EditEventPage({Key? key, required this.event}) : super(key: key);

  @override
  _EditEventPageState createState() => _EditEventPageState();
}

class _EditEventPageState extends State<EditEventPage> {
  late TextEditingController _judulController;
  late TextEditingController _deskripsiController;
  late TextEditingController _tanggalController;
  late TextEditingController _waktuController;
  late TextEditingController _tempatController;
  late TextEditingController _lokasiController;
  late TextEditingController _hargaController;

  @override
  void initState() {
    super.initState();
    _judulController = TextEditingController(text: widget.event.title);
    _deskripsiController =
        TextEditingController(text: widget.event.description);
    _tanggalController = TextEditingController(text: widget.event.date);
    _waktuController = TextEditingController(); // Isi dengan waktu dari event
    _tempatController = TextEditingController(text: widget.event.location);
    _lokasiController = TextEditingController(text: widget.event.city);
    _hargaController =
        TextEditingController(text: widget.event.price.toString());
  }

  @override
  void dispose() {
    _judulController.dispose();
    _deskripsiController.dispose();
    _tanggalController.dispose();
    _waktuController.dispose();
    _tempatController.dispose();
    _lokasiController.dispose();
    _hargaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Event'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menyimpan perubahan event ke database atau penyimpanan lainnya
                // Setelah selesai, bisa kembali ke halaman sebelumnya atau lainnya
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              style: ElevatedButton.styleFrom(
                minimumSize:
                    Size(double.infinity, 50), // Atur ukuran minimum tombol
              ),
              child: Text('Simpan Perubahan'),
            ),
          ],
        ),
      ),
    );
  }
}
