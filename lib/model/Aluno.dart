import 'package:escola/model/Turma.dart';



class Aluno{

  String _nome;
  int _idade;
  String _cpf;
  int _cod;
  Turma _turma;



  String get nome => this._nome;
   set nome(String value) => this._nome = value;

  int get idade => this._idade;
   set idade(int value) => this._idade = value;

  String get cpf => this._cpf;
   set cpf(String value) => this._cpf = value;

  int get cod => this._cod;
   set cod(int value) => this._cod = value;

  Turma get turma => this._turma;
   set turma(Turma value) => this._turma = value;




}