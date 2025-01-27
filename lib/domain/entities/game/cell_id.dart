import 'package:equatable/equatable.dart';
import 'package:useful_extensions/useful_extensions.dart';

class CellId extends Equatable {
  final int x;
  final int y;

  const CellId(this.x, this.y);

  const CellId.start()
      : x = 0,
        y = 0;

  factory CellId.fromJson(String json) {
    final list = json.split(';');
    return CellId(list.first.toInt(), list[1].toInt());
  }

  String toJson() => id;

  String get id => '$x;$y';

  @override
  List<Object?> get props => [x, y];
}
