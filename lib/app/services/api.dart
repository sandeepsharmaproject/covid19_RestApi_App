import 'package:covid_tracker_app/app/services/api_keys.dart';
import 'package:flutter/foundation.dart';

class API {
  API({@required this.apiKey});
  final String apiKey;
  factory API.sandbox() => API(apiKey: APIkeys.ncovSandboxKey);
  static final String host = 'https://ncov2019-admin.firebaseapp.com';
  Uri tokenUri() => Uri(
        scheme: 'http',
        host: host,
        path: 'token',
      );
}
