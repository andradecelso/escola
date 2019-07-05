import 'dart:io';

import '../DAO/TurmaDao.dart';
import '../controller/AlunoControl.dart';
import '../controller/TurmaControl.dart';
import '../model/Aluno.dart';
import '../model/Turma.dart';


class MenuTurma{




  void menu() {
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


      op = int.parse(stdin.readLineSync());


      switch (op) {
        case 1: inserirTurma();
          break;
        case 2:
          break;
        case 3: listarTurma();
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



  void inserirTurma(){


    Turma turma = Turma();

    print('Insira nome da turma:');
    turma.nomeTurma = stdin.readLineSync();

    TurmaControl().adicionarTurma(turma);

  }



  void listarTurma(){


    print('codigo\t\t Descricao \t\t cod. aluno \t\tAluno');


    TurmaControl().listaTurmas.forEach((turma){


      if(TurmaDao().listTurmas.last.aluno != null){
        print('${turma.codigo}\t\t ${turma.nomeTurma} \t\t ${turma.aluno.cod} \t\t ${turma.aluno.nome}');

      }else
        print('${turma.codigo}\t\t ${turma.nomeTurma}');

}) ;



  }



}



