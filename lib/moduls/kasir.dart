import 'transaksi.dart';

class Kasir {
  final String idKasir;
  final String nama;
  final List<Transaksi> riwayatTransaksi = [];

  Kasir(this.idKasir, this.nama);

  void catatTransaksi(Transaksi transaksi) {
    riwayatTransaksi.add(transaksi);
  }
}