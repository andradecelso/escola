import 'dart:io';

import '../DAO/TurmaDao.dart';
import '../controller/AlunoControl.dart';
import '../controller/TurmaControl.dart';
import '../model/Aluno.dart';
import '../model/Turma.dart';
import 'MenuTurma.dart';


class MenuAluno{


  void menu() {
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


      op = int.parse(stdin.readLineSync());


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

    print('Selecione turma pelo codigo:');


    if (!TurmaControl().listar().isEmpty){
      TurmaControl().listaTurmas.forEach((turma){

        print('${turma.codigo}\t\t ${turma.nomeTurma}');

      }) ;

      print(':');

      int codigo = int.parse(stdin.readLineSync());

      int qtd = TurmaControl().listar().length;

      if (codigo > qtd){
        print('Turma selecionada nao existe, deseja cadastra-la? (s/n) ');

        String turmaNova = stdin.readLineSync();

        if ((turmaNova.isEmpty) || (turmaNova.toLowerCase() == 'n') ){

          exit(0);
        }else if (turmaNova.toLowerCase() == 's'){

          MenuTurma().inserirTurma();

          aluno.turma = TurmaControl().listar().last;
          int codTurma = TurmaControl().listar().last.codigo;
          TurmaControl().listaTurmas.elementAt(codTurma).aluno = aluno;

          print('codigo turma cadastrada: ${codTurma}, nome da turma cadastrada no aluno:${aluno.turma.nomeTurma}');
          print('nome do aluno cadastrado na turma: ${TurmaControl().listaTurmas.elementAt(codTurma).aluno.nome}');

        }
      };

      aluno.turma = TurmaControl().listar().elementAt(codigo-1);

    }else {
      print('Não ha turma cadastrada. Deseja cadastrar agora? (s/n)');

      String turmaNova = stdin.readLineSync();

      if ((turmaNova.isEmpty) || (turmaNova.toLowerCase() == 'n') ){

        exit(0);
      }else if (turmaNova.toLowerCase() == 's'){

        MenuTurma().inserirTurma();

        aluno.turma = TurmaControl().listar().last;
        int codTurma = TurmaControl().listar().last.codigo;
        print('codigo turma cadastrada: ${aluno.turma.codigo}, nome da turma cadastrada no aluno:${aluno.turma.nomeTurma}');

        AlunoControl().adicionarAluno(aluno);

        MenuTurma().listarTurma();

        //TurmaControl().listaTurmas[codTurma].aluno = aluno;

      //  print('codigo turma cadastrada: ${codTurma}, nome da turma cadastrada no aluno:${aluno.turma.nomeTurma}');
       // print('nome do aluno cadastrado na turma: ${TurmaControl().listaTurmas.elementAt(codTurma).aluno.nome}');
      }


    }

//    AlunoControl().adicionarAluno(aluno);


  }  // metodo inserir



  void removerAluno(){

    listar();

    print('Selecione aluno pelo codigo:');
    int codaluno = int.parse(stdin.readLineSync());

    if (AlunoControl().listar().isNotEmpty){

      Aluno rmvAluno = AlunoControl().listar().elementAt(codaluno-1);

      AlunoControl().removerAluno(rmvAluno);
      print(':');

    } else
      print('Nao ha aluno cadastrado');




  } //fim metodo remover



  void listar(){

    print('Cod. \t Nome \t\t Idade\t\t CPF \t\t Cod. Turma \t\t Nome Turma');

  AlunoControl().listaAlunos.forEach((aluno)
            {

              if (!TurmaControl().listar().isEmpty)
                print('${aluno.cod} \t\t ${aluno.nome} \t\t${aluno.idade} \t\t\t ${aluno.cpf} \t\t\t${aluno.turma.codigo}\t\t${aluno.turma.nomeTurma}');
              else
                print('${aluno.cod} \t\t ${aluno.nome} \t\t${aluno.idade} \t\t\t ${aluno.cpf} ');

            });

  } //fim metodo listar





}  //fim classe