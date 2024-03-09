import 'package:getx_mvvm/data/networks/network_api_services.dart';
import 'package:getx_mvvm/res/app_urls/app_url.dart';

class LoginRepository {
  final _apiServices = NetWorkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppAPIUrl.loginApiUrl);
    return response;
  }
}
