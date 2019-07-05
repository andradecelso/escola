import 'package:escola/view/MenuAluno.dart' as menualuno;
import 'package:escola/view/MenuTurma.dart' as menuturma;
import 'dart:io';

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

    int op = int.parse(stdin.readLineSync());

      switch (op) {
        case 1:
          menualuno.MenuAluno().menuAluno();
          break;
        case 2:menuturma.MenuTurma().menuTurma();
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