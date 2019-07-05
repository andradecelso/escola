import 'dart:io';

import 'MenuAluno.dart';
import 'MenuTurma.dart';

class MenuGeral {


  void menu() {
    int op = 100;

    do {
      print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-');
      print('-=-=-=-=-=-=  Escola Dart Side=-=-=-=-=-=-=-=-=-=-=-');
      print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-');
      print('Selecione opcao:');
      print('(1) - Menu Aluno');
      print('(2) - Menu Turma');
      print('(0) - Sair');

   op = int.parse(stdin.readLineSync());

      switch (op) {
        case 1:
          MenuAluno().menu();
          break;
        case 2:MenuTurma().menu();
          break;
        case 3:
          break;
        case 4:
          break;
        case 5:
          break;
        case 0:
          break;
          break;
      }
    } while (op != 0);
  }









}