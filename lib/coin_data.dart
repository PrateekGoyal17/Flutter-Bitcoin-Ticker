import 'package:dio/dio.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const url = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '2A3F0F51-AC1B-4FBA-B29D-2315D4690845';

class CoinData {
  Future<dynamic> getCoinData(String currency) async {
    String coinApiUrl = '$url/BTC/$currency?apikey=$apiKey';
    Dio dio = Dio();
    Response response = await dio.get(coinApiUrl);
    if (response.statusCode == 200) {
      var data = response.data;
      double lastPrice = data['rate'];
      return lastPrice;
    } else {
      print('Error');
    }
  }
}
