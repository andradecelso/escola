



import '../DAO/AlunoDao.dart';
import '../model/Aluno.dart';



class AlunoControl {



  List<Aluno> listaAlunos = AlunoDao.listaDeAlunos;


  List<Aluno> listar(){

    return  listaAlunos;
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