// ignore_for_file: unused_local_variable

void main(List<String> args) {
  List<num> l = List.generate(10, (i) => i);

  // write to mutable variable -> no lint
  num v = l[5];

  // write to final variable -> no lint
  final f = l[5];

  // pass to a function -> lint
  print(l[5]);

  Map<int, String> m = {
    1: '',
    2: '',
    3: '',
  };

  String? mv = m[2];

  final mf = m[2];

  print(m[2]);
}
