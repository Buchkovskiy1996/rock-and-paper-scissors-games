import 'dart:io';
import 'dart:math';

enum Move { Rock, Paper, Scissors }

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock,paper or scissors (r/p/s) '); // добовляем в консоль
    final input = stdin.readLineSync(); // тут ввод с той самой строки
    if (input == 'r' || input == 'p' || input == 's') {
      var player;
      if (input == 'r') {
        player = Move.Rock;
      } else if (input == 'p') {
        player = Move.Paper;
      } else {
        player = Move.Scissors;
      }
      final random = rng.nextInt(3);
      final aiMovie = Move.values[random];
      print('Ты player $player');
      print('Ты aiMovie $aiMovie');
      if (player == aiMovie) {
        print('Ничья');
      } else if (player == Move.Rock && aiMovie == Move.Scissors ||
          player == Move.Paper && aiMovie == Move.Rock ||
          player == Move.Scissors && aiMovie == Move.Paper) {
        print('Ты выиграл');
      } else {
        print('Ты проиграл');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
}
