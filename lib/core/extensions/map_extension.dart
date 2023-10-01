import 'iterable_extension.dart';

extension MapExtension<K, V> on Map<K, V>? {
  bool get isMapEmpty {
    if (this == null) return true;
    return this!.keys.listIsEmpty;
  }

  bool get isMapNotEmpty {
    if (this == null) return false;
    return this!.keys.listIsNotEmpty;
  }
}
