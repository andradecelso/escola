
import 'Aluno.dart';

class Turma{

  int _codigo;
  String _nomeTurma;
  Aluno _aluno;




  String get nomeTurma => _nomeTurma;
  int get codigo => _codigo;
  Aluno get aluno => _aluno;


  void   set codigo(int value) => _codigo = value;
  void   set nomeTurma(String value) => _nomeTurma = value;
  void   set aluno(Aluno value) => _aluno = value;





}

