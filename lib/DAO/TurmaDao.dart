import 'package:escola/model/Turma.dart';


class TurmaDao{

  static List<Turma> listaDeTurmas = List<Turma>();

  List<Turma> get listTurmas => listaDeTurmas;


  void inserirTurma(Turma turma) {

    listaDeTurmas.add(turma);

  }

  bool removerTurma(Turma turma){

    if(listaDeTurmas.remove(turma)){
      return true;

    }else
      return false;
  }





}