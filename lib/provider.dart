import 'package:flutter/foundation.dart';

class FavoriteModel with ChangeNotifier {
  Map<String, bool> _favoriDurumlari = {};

  Map<String, bool> get favoriDurumlari => _favoriDurumlari;

  void favoriDurumunuGuncelle(String fotoId, {required bool yeniDurum}) {
    _favoriDurumlari[fotoId] = yeniDurum;
    notifyListeners();
  }

  bool favoriMi(String fotoId) => _favoriDurumlari[fotoId] ?? false;
}
