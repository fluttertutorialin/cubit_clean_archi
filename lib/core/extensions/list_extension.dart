extension ListExtension<T> on List<T> {
  //GET DATA INDEX USING
  T? get(int index) {
    final result = this[index];
    return result;
  }
}
