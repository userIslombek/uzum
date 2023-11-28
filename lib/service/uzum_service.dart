import 'package:dio/dio.dart';
import 'package:umarket/model/uzum_model.dart';

class UzumService {
  // eleven 11.11
  Future<dynamic> getData() async {
    try {
      Response response = await Dio().get('https://fakestoreapi.com/products');
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => UzumModel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioException catch (e) {
      return e.message.toString();
    }
  }
  // popular

  // new
}
