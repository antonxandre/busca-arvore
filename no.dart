import 'acao.dart';

class No {
  String estado;
  No? noPai;
  Acao? acao;
  int custo = 0;
  int profundidade = 0;
  No({
    this.estado = '',
    this.acao,
    this.noPai,
    this.custo = 0,
    this.profundidade = 0,
  });
}
