


import '../model/Aluno.dart';

class AlunoDao{

  static List<Aluno> listaDeAlunos = List<Aluno>();

  List<Aluno> get listAlunos => listaDeAlunos;



  void inserirAluno(Aluno aluno) {

  listaDeAlunos.add(aluno);

}

  bool removerAluno(Aluno aluno){

    if(listaDeAlunos.remove(aluno)){
      return true;

    }else
      return false;
}




}