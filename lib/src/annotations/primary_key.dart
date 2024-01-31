import 'package:dart_orm_annotation/dart_orm_annotation.dart';

enum PrimaryKeyType {
  serial,
  uuid,
}

class PrimaryKey extends Field {
  const PrimaryKey({
    required this.type,
    super.name,
  });

  final PrimaryKeyType type;
}
