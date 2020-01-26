import 'networking.dart';

const String apiURL = 'https://vindecoder.p.rapidapi.com/v2.0/decode_vin';
const Map<String,String> headers = {
  'x-rapidapi-host' : 'vindecoder.p.rapidapi.com',
  'x-rapidapi-key' : '79eaae4939msh5ad344c72ff728dp1d7a47jsn7c6060d43b05',
};

class CarDataModel{

  Future<dynamic> getCarInfoByVin(String vinNumber) async {

    NetworkHelper networkHelper = NetworkHelper(url: '$apiURL?vin=$vinNumber', );
    var carInfo = await networkHelper.getData();
   return carInfo;

  }
}