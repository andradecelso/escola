import 'package:escola/DAO/TurmaDao.dart' as turmadao;
import 'package:escola/model/Turma.dart';



class TurmaControl {



  List<Turma> listaTurmas = turmadao.TurmaDao.listaDeTurmas;


  List<Turma> listar(){

    return listaTurmas;
  }


  void adicionarTurma(Turma turma) {
    turmadao.TurmaDao.listaDeTurmas.add(turma);
  }



  bool removerTurma(Turma turma) {
    if (turmadao.TurmaDao.listaDeTurmas.remove(turma)) {
      return true;
    } else
      return false;
  }


}