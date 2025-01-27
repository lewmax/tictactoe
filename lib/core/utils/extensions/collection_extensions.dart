import 'dart:collection';

extension IterableExtensions<E> on Iterable<E> {
  Iterable<E> intersperse(E element) sync* {
    final iterator = this.iterator;
    if (iterator.moveNext()) {
      yield iterator.current;
      while (iterator.moveNext()) {
        yield element;
        yield iterator.current;
      }
    }
  }

  Iterable<MapEntry<int, E>> indexed() sync* {
    var index = 0;
    for (final element in this) {
      yield MapEntry(index++, element);
    }
  }
}

extension ListExtensions<E> on List<E> {
  List<List<E>> split(int chunkSize) {
    if (isEmpty) return [];
    if (chunkSize <= 0) throw ArgumentError('Chunk size must be greater than 0');

    final result = <List<E>>[];
    for (var i = 0; i < length; i += chunkSize) {
      final end = (i + chunkSize < length) ? i + chunkSize : length;
      result.add(sublist(i, end));
    }
    return result;
  }

  Iterable<MapEntry<K, List<E>>> groupByIterable<K>(K Function(E e) keySelector) sync* {
    var startIndex = 0;
    K? priorKey;

    for (var index = 0; index < length; index++) {
      final key = keySelector(this[index]);
      if (key != priorKey) {
        if (priorKey != null) {
          yield MapEntry(priorKey, UnmodifiableSublistView(this, startIndex, index));
        }
        startIndex = index;
        priorKey = key;
      }
    }

    if (priorKey != null) {
      yield MapEntry(priorKey, UnmodifiableSublistView(this, startIndex, length));
    }
  }
}

class UnmodifiableSublistView<E> extends UnmodifiableListView<E> {
  final Iterable<E> _source;
  final int _start;
  final int? _end;

  /// 0 ≤ `start` ≤ `end` ≤ [length]
  UnmodifiableSublistView(super.source, int start, [int? end])
      : assert(0 <= start),
        assert(end == null || start <= end),
        assert(end == null || end <= source.length),
        _source = source,
        _start = start,
        _end = end;

  @override
  List<R> cast<R>() => UnmodifiableListView(_source.cast<R>());
  @override
  int get length => (_end ?? _source.length) - _start;

  @override
  E operator [](int index) => _source.elementAt(_start + index);
}
