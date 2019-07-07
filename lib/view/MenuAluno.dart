import 'dart:io';

import '../DAO/TurmaDao.dart';
import '../controller/AlunoControl.dart';
import '../controller/TurmaControl.dart';
import '../model/Aluno.dart';
import '../model/Turma.dart';


class MenuAluno{
Aluno aluno = Aluno();

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




void inserir() {

  int posicao;
  int codTurmaSelecionada;
  print('Favor digitar \n ');
  print('nome:');
  aluno.nome = stdin.readLineSync();
  print('idade:');
  aluno.idade = int.parse(stdin.readLineSync());
  print('cpf:');
  aluno.cpf = stdin.readLineSync();

  print('Selecione turma pelo codigo:');
// verifica se a lista esta vazia, se nao estiver, lista o conteudo de turmas



  if (TurmaControl().listar().isEmpty) {

    print('nao existe turma ainda, favor cadastrar');
    AlunoControl().adicionarAluno(aluno);
    AlunoControl().listar();
  }
  else {

    TurmaControl().listar().forEach((turma) {
      print('${turma.codigo}\t\t ${turma.nomeTurma}');
    });
    print(':');


    //armazena o codigo da turma selecionada
    codTurmaSelecionada = int.parse(stdin.readLineSync());
    // recebe numa instancia de turma o que foi selecionado
    Turma turmaCel = Turma();
    turmaCel.codigo = codTurmaSelecionada;

    // verifica se existe realmente a turma na lista e obtem a posical na lista
    TurmaDao.listaDeTurmas.forEach((turma) {
      if (turma.codigo == turmaCel.codigo) {
        posicao = turma.codigo - 1;
      } else {
        print('opcao nao encontrada');
        exit(0);
      }
    });
    // na instancia de aluno insere a turma que foi selecionada
    aluno.turma = TurmaControl().listar()[posicao];
    AlunoControl().adicionarAluno(aluno);

    // tenta inserir na turma selecionada os dados do aluno instanciado.  --> esta parte que da erro, como se estivesse nulo,
    // mas nao esta pois na lista tem o a turma criada, e tento inserir o objeto aluno que tambem esta em memoria
    TurmaDao.listaDeTurmas[posicao].alunosTurma.add(aluno);


  }
}




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

  AlunoControl().listar().forEach((aluno)
            {


                print('${aluno.cod} \t\t ${aluno.nome} \t\t${aluno.idade} \t\t\t ${aluno.cpf} ');

            });

  } //fim metodo listar





}  //fim classe