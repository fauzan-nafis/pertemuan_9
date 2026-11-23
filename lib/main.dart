import 'moduls/models.dart';

void main() {
  final List<Produk> katalog = [
    ProdukMakanan.restok('MKN001', 'Nasi Goreng', 15000, 10),
    ProdukMinuman.restok('MNM001', 'Es Teh Manis', 5000, 20),
  ];

  for (final produk in katalog) {
    print('${produk.nama}: pajak Rp${produk.hitungPajak()}');
  }
}