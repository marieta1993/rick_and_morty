import 'dart:io';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl({this.lookupAddress = 'rickandmortyapi.com'});

  final String lookupAddress;

  @override
  Future<bool> get isConnected async {
    try {
      final result = await InternetAddress.lookup(lookupAddress);
      return result.isNotEmpty && result.first.rawAddress.isNotEmpty;
    } on SocketException {
      return false;
    }
  }
}

