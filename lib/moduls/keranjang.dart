import 'item_transaksi.dart';
import 'produk.dart';

class Keranjang {
  // Map<kodeProduk, ItemTransaksi> -> mencari item by kode instan dalam O(1)!
  final Map<String, ItemTransaksi> _items = {};

  void tambah(Produk produk, {int jumlah = 1}) {
    if (_items.containsKey(produk.kode)) {
      final lama = _items[produk.kode]!;
      _items[produk.kode] = ItemTransaksi(produk, lama.jumlah + jumlah);
    } else {
      _items[produk.kode] = ItemTransaksi(produk, jumlah);
    }
  }

  void hapus(String kodeProduk) => _items.remove(kodeProduk);

  List<ItemTransaksi> get daftarItem => _items.values.toList();

  double get totalHarga =>
      _items.values.fold(0, (sum, item) => sum + item.subtotal);

  bool get kosong => _items.isEmpty;

  void bersihkan() => _items.clear();
}