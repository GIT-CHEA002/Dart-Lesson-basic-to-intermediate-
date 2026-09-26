import 'dart:async';

Stream<int> countStream(int max) {
  late StreamController<int> controller;
  Timer? timer;
  int count = 0;

  controller = StreamController<int>(
    onListen: () {
      timer = Timer.periodic(const Duration(seconds: 1), (_) {
        count++;
        controller.add(count);
        if (count >= max) {
          controller.close();
          timer?.cancel();
        }
      });
    },
    onCancel: () => timer?.cancel(),
  );

  return controller.stream;
}

void main() {
  countStream(5).listen(
    (data) => print('Tick: $data'),
    onDone: () => print('Done counting'),
  );
}
