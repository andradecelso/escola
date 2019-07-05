import 'dart:io';
import 'package:escola/controller/AlunoControl.dart' as alunocontrol;
import 'package:escola/controller/TurmaControl.dart' as turmacontrol;
import 'package:escola/model/Aluno.dart';
import 'package:escola/model/Turma.dart';


class MenuAluno{


  void menuAluno() {
    int op = 100;

    print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-');
    print('-=-=-=-==-=-  Menu Aluno  -=-=-=-=-=-==-==-=-=-=-=-=-');
    print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-');

    do {
      print('Selecione opcao:');
      print('(1) - Inserir');
      print('(2) - Remover');
      print('(3) - Listar');
      print('(0) - Sair');


      int op = int.parse(stdin.readLineSync());


      switch (op) {
        case 1:inserir();
          break;
        case 2:
          break;
        case 3:listar();
          break;
        case 4:
          break;
        case 5:
          break;
        case 0: break;
          break;
      }
    } while (op != 0);
  }


  void inserir(){

    Aluno aluno = Aluno();

    print('Favor digitar \n ');
    print('nome:');
    aluno.nome = stdin.readLineSync();

    print('idade:');
    aluno.idade = int.parse(stdin.readLineSync());

    print('cpf:');
    aluno.cpf = stdin.readLineSync();


    alunocontrol.AlunoControl().adicionarAluno(aluno);


  }


  void listar(){

alunocontrol.AlunoControl().listaAlunos.forEach((aluno)
            {
      print('Cod.: ${aluno.cod} - Nome: ${aluno.nome} - idade: ${aluno.idade}');
    });

  }





}