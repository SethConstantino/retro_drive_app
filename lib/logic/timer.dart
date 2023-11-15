import 'dart:async';

void main() {
  int hrs, min, seconds, secs = 0;

  min = 2;
  hrs = 0;

  if (hrs != 0) min += hrs * 60;

  seconds = min * 60;

  Timer.periodic(Duration(seconds: 1), (timer) {
    if (seconds == 0) {
      timer.cancel();
      print('Cuenta regresiva finalizada');
    } else {
      print('Quedan $seconds segundos');
      seconds--;
      secs++;
      if (secs == 60) {
        secs = 0;
        min--;
        print('minutos restantes $min');
      }
    }
  });
}
