import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:retro_drive_app/models/collection.dart';

class CollectionService extends ChangeNotifier {
  final String _baseUrl = 'retro-drive-default-rtdb.firebaseio.com';
  final List<Collection> collections = [];

  bool isLoading = true;
  bool isSaving = false;
  Collection? selectedCollection;

  //constructor
  CollectionService() {
    this.getCollections();
  }

  //método que obtiene los productos de la base de datos
  Future getCollections() async {
    this.isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, 'collections.json');
    final resp = await http.get(url);
    final Map<String, dynamic> collectionsMap = json.decode(resp.body);

    //recorremos el map de productos y agregamos cada uno a la lista
    collectionsMap.forEach((key, value) {
      final collectionTemp = Collection.fromMap(value);

      collectionTemp.id = key;
      this.collections.add(collectionTemp);
    });

    this.isLoading = false;
    notifyListeners();

    //print(this.productos[0].nombre);
    return this.collections;
  }

  //método que hace update
  Future<String> updateCollection(Collection collection) async {
    final url = Uri.https(_baseUrl, 'collections/${collection.id}.json');
    final resp = await http.put(url, body: collection.toJson());
    final decodedData = resp.body;
    print('txt $decodedData');

    final index =
        this.collections.indexWhere((element) => element.id == collection.id);
    this.collections[index] = collection;

    return collection.id!;
  }

  //método para crear o actualizar datos
  Future saveOrCreateCollection(Collection collection) async {
    isSaving = true;
    notifyListeners();
    if (collection.id == null) {
      //producto nuevo
    } else {
      await this.updateCollection(collection);
    }
    isSaving = false;
    notifyListeners();
  }
}
