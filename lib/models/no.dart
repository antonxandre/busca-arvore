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

  factory No.criarNo(String estadoInicial,
          [No? noPai, Acao? acao, int custo = 0, int profundidade = 0]) =>
      No(
        estado: estadoInicial,
        noPai: noPai,
        acao: acao,
        custo: custo,
        profundidade: profundidade,
      );

  @override
  String toString() {
    return 'No(estado: $estado, acao: $acao, custo: $custo, profundidade: $profundidade)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is No &&
        other.estado == estado &&
        other.acao == acao &&
        other.custo == custo &&
        other.profundidade == profundidade;
  }

  @override
  int get hashCode {
    return estado.hashCode ^
        acao.hashCode ^
        custo.hashCode ^
        profundidade.hashCode;
  }
}
