import 'package:dio/dio.dart';
import 'package:rick_and_morty/Constants/strings.dart';

class CharacterWebService {
  late Dio dio;
  static const Duration time = Duration(seconds: 20);
  CharacterWebService() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: time,
      receiveTimeout: time,
    );
    dio = Dio(options);
  }

  Future<Map<dynamic, dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return {};
    }
  }
}
