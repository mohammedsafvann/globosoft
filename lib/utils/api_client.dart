import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/items_model.dart';

final dio = Dio();
final baseUrl = "https://mansharcart.com/image/";
Future<ItemsModel> getData() async {
  final response = await Dio()
      .get("https://mansharcart.com/api/getProduct/p_id/2050/key/123456789");
  Map<String, dynamic> data = jsonDecode(response.data);
  ItemsModel itemsModel = ItemsModel.fromJson(data);
  print("itemsModel");
  print(itemsModel);

  return itemsModel;
}
