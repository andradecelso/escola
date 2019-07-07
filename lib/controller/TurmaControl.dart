



import '../DAO/TurmaDao.dart';
import '../model/Turma.dart';

class TurmaControl {



  List<Turma> listaTurmas = TurmaDao.listaDeTurmas;


  List<Turma> listar(){

    return listaTurmas;
  }



  int proximo(){

    return TurmaDao.listaDeTurmas.length + 1;

  }



  void adicionarTurma(Turma turma) {

    turma.codigo = proximo();
    TurmaDao.listaDeTurmas.add(turma);
  }



  bool removerTurma(Turma turma) {
    if (TurmaDao.listaDeTurmas.remove(turma)) {
      return true;
    } else
      return false;
  }


}