extension IterableExtension<E> on Iterable<E>? {
  bool get listIsEmpty {
    if (this == null) return true;
    return this!.isEmpty;
  }

  bool get listIsNotEmpty {
    if (this == null) return false;
    return this!.isNotEmpty;
  }
}
