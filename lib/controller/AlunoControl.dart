import 'package:escola/DAO/AlunoDao.dart' as alunodao;
import 'package:escola/model/Aluno.dart';



class AlunoControl {



  List<Aluno> listaAlunos = alunodao.AlunoDao.listaDeAlunos;


  List<Aluno> listar(){

    return  listaAlunos;
  }


  int proximo(){

    return alunodao.AlunoDao.listaDeAlunos.length + 1;

  }

  void adicionarAluno(Aluno aluno) {

    aluno.cod = proximo();
    alunodao.AlunoDao.listaDeAlunos.add(aluno);
  }



  bool removerAluno(Aluno aluno) {
    if (alunodao.AlunoDao.listaDeAlunos.remove(aluno)) {
      return true;
    } else
      return false;
  }


}