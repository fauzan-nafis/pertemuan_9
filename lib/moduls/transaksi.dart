import 'bisa_dicetak.dart';
import 'item_transaksi.dart';

class Transaksi implements BisaDicetak {
  final String idTransaksi;
  final DateTime tanggal;
  final List<ItemTransaksi> items;

  Transaksi({
    required this.idTransaksi,
    required this.tanggal,
    required this.items,
  });

  double get totalHarga =>
      items.fold(0, (sum, item) => sum + item.subtotal);

  @override
  String cetakStruk() {
    final buffer = StringBuffer()..writeln('=== STRUK: $idTransaksi ===');
    for (final item in items) {
      buffer.writeln(
        '${item.produk.nama} x${item.jumlah} Rp${item.subtotal.toStringAsFixed(0)}',
      );
    }
    buffer.writeln('TOTAL: Rp${totalHarga.toStringAsFixed(0)}');
    return buffer.toString();
  }
}