sealed class Optional<T> {
  const Optional();

  bool get isNil => this is Nil;
  bool get isNotNil => this is! Nil;

  T get value => switch (this) {
        Nil() => throw Exception('Cannot get value from Nil'),
        Value(:final _value) => _value,
      };

  const factory Optional.nil() = Nil<T>;
  const factory Optional.from(T value) = Value<T>;
}

final class Nil<T> extends Optional<T> {
  const Nil();
}

final class Value<T> extends Optional<T> {
  const Value(this._value);

  final T _value;
}
