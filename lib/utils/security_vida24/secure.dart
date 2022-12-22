import 'dart:convert';
import 'package:encrypt/encrypt.dart';
import 'package:convert/convert.dart';

class Secure {
  String? decrypt(var text, secureKey) {
    var base = base64.decode(text);
    var fbase = utf8.decode(base);
    var list = fbase.split('::');

    if (list.isNotEmpty) {
      Key key;
      key = Key.fromBase64(secureKey);
      final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
      final iv = IV.fromBase16(list[1]);
      final encrypted = Encrypted.fromBase16(list[0]);
      final decrypted = encrypter.decrypt(encrypted, iv: iv);
      return decrypted;
    } else {
      return null;
    }
  }

  String encrypt(var text, secureKey) {
    var key;
    key = Key.fromBase64(secureKey);
    final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
    final iv = IV.fromLength(16);
    final encryptedData = encrypter.encrypt(text, iv: iv);
    var temp = hex.encode(encryptedData.bytes) + '::' + hex.encode(iv.bytes);
    final encrypted = base64.encode(utf8.encode(temp));
    return encrypted;
  }
}