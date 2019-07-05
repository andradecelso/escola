import 'dart:io';

class MenuTurma{




  void menuTurma() {
    int op = 100;

    print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-');
    print('-=-=-=-==-=-  Menu Turma  -=-=-=-=-=-==-==-=-=-=-=-=-');
    print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-');

    do {
      print('Selecione opcao:');
      print('(1) - Inserir');
      print('(2) - Remover');
      print('(3) - Listar');
      print('(0) - Sair');


      int op = int.parse(stdin.readLineSync());


      switch (op) {
        case 1:
          break;
        case 2:
          break;
        case 3:
          break;
        case 4:
          break;
        case 5:
          break;
        case 0:
          break;
      }
    } while (op != 0);
  }
}