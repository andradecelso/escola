
import 'Aluno.dart';

class Turma{

  int _codigo;
  String _nomeTurma;
  List<Aluno> _alunosTurma;

  String get nomeTurma => this._nomeTurma;
  int get codigo => this._codigo;
  List<Aluno> get alunosTurma => this._alunosTurma;

     set codigo(int value) => this._codigo = value;
     set nomeTurma(String value) => this._nomeTurma = value;
     set alunosTurma(List<Aluno> value) => this._alunosTurma = value;

}

