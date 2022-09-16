extension ListExtension<T> on List<T> {
  Map<U, List<T>> groupBy<U>(U Function(T) parameterGetter) {
    final mapEntries = map(parameterGetter)
      .toSet()
      .map((key) => MapEntry(key, where((item) => parameterGetter(item) == key).toList()));
    return { for (final item in mapEntries) item.key: item.value };
  }
}
