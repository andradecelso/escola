



import '../DAO/AlunoDao.dart';
import '../model/Aluno.dart';



class AlunoControl {

  List<Aluno> listar(){

    return  AlunoDao().listAlunos;
  }


  int proximo(){

    return AlunoDao.listaDeAlunos.length + 1;

  }

  void adicionarAluno(Aluno aluno) {

    aluno.cod = proximo();
    AlunoDao.listaDeAlunos.add(aluno);
  }



  bool removerAluno(Aluno aluno) {
    if (AlunoDao.listaDeAlunos.remove(aluno)) {
      return true;
    } else
      return false;
  }


}