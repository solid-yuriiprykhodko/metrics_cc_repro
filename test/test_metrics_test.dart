// ignore_for_file: prefer-match-file-name, unused_element

enum _E { a, b, c }

class _StructWithMap {
  final Map<_E, double> m;

  _StructWithMap({
    required this.m,
  });
}

Map<_E, double> _mapMakerLintA() => const {
      _E.a: 0.1,
      _E.b: 0.1,
      _E.c: 0.1,
    };

Map<_E, double> _mapMakerLintB() {
  return const {
    _E.a: 0.1,
    _E.b: 0.1,
    _E.c: 0.1,
  };
}

Map<_E, double> _mapMakerOK() {
  const m = {
    _E.a: 0.1,
    _E.b: 0.1,
    _E.c: 0.1,
  };

  return m;
}

_StructWithMap _structMakerLintA() => _StructWithMap(
      m: const {
        _E.a: 0.1,
        _E.b: 0.1,
        _E.c: 0.1,
      },
    );

_StructWithMap _structMakerLintB() {
  return _StructWithMap(
    m: const {
      _E.a: 0.1,
      _E.b: 0.1,
      _E.c: 0.1,
    },
  );
}

_StructWithMap _structMakerOK() {
  final s = _StructWithMap(
    m: const {
      _E.a: 0.1,
      _E.b: 0.1,
      _E.c: 0.1,
    },
  );

  return s;
}
