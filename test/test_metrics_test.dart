// ignore_for_file: unused_element

enum Key { a, b, c }

class _StructWithMap {
  final Map<Key, double> m;

  _StructWithMap({
    required this.m,
  });
}

Map<Key, double> _mapMakerLintA() => const {
      Key.a: 0.1,
      Key.b: 0.1,
      Key.c: 0.1,
    };

Map<Key, double> _mapMakerLintB() {
  return const {
    Key.a: 0.1,
    Key.b: 0.1,
    Key.c: 0.1,
  };
}

Map<Key, double> _mapMakerOK() {
  const m = {
    Key.a: 0.1,
    Key.b: 0.1,
    Key.c: 0.1,
  };

  return m;
}

_StructWithMap _structMakerLintA() => _StructWithMap(
      m: const {
        Key.a: 0.1,
        Key.b: 0.1,
        Key.c: 0.1,
      },
    );

_StructWithMap _structMakerLintB() {
  return _StructWithMap(
    m: const {
      Key.a: 0.1,
      Key.b: 0.1,
      Key.c: 0.1,
    },
  );
}

_StructWithMap _structMakerOK() {
  final s = _StructWithMap(
    m: const {
      Key.a: 0.1,
      Key.b: 0.1,
      Key.c: 0.1,
    },
  );

  return s;
}
