import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// The `SecureStorage` class provides a simplified interface for performing secure storage operations,
/// such as writing, reading, and deleting sensitive data, using `FlutterSecureStorage` as the underlying mechanism.
class SecureStorage {
  /// Instance of `FlutterSecureStorage` used to interact with the device's secure storage.
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  /// Securely writes a key-value pair to the device's storage.
  ///
  /// [key] The key under which the value will be stored. Must be unique for each piece of information.
  /// [value] The value associated with the key that is to be securely stored.
  ///
  /// This operation is asynchronous and may throw exceptions if errors occur during storage.
  Future<void> writeSecureData(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  /// Reads a securely stored value from the device's storage, given its key.
  ///
  /// [key] The key associated with the value to be retrieved.
  ///
  /// Returns the value associated with the specified key, or `null` if the key does not exist.
  /// This operation is asynchronous.
  Future<String?> readSecureData(String key) async {
    return await _storage.read(key: key);
  }

  /// Reads all securely stored values from the device's storage.
  ///
  /// [key] The key is not used in this method and could be removed to avoid confusion.
  ///
  /// Returns a map of all securely stored key-value pairs.
  /// This operation is asynchronous.
  Future<Map<String, String>> readAll(String key) async {
    return await _storage.readAll();
  }

  /// Deletes a specific securely stored value from the device's storage, given its key.
  ///
  /// [key] The key associated with the value to be deleted.
  ///
  /// This operation is asynchronous and may throw exceptions if errors occur during deletion.
  Future<void> deleteSecureData(String key) async {
    await _storage.delete(key: key);
  }

  /// Deletes all values securely stored in the device's storage.
  ///
  /// This operation is asynchronous and may throw exceptions if errors occur during deletion.
  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }
}