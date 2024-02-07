import 'dart:convert';

class EncryptData {
  static String encryptBase64(String value) {
    return base64.encode(utf8.encode(value));
  }

  static String decryptBase64(String value) {
    return utf8.decode(base64.decode(value));
  }
}
