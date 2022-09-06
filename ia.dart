import 'acao.dart';
import 'no.dart';
import 'problema.dart';

main() {
  Problema problema = Problema();
  buscaEmArvore(problema, []);
}

No criarNo(String estadoInicial, No? noPai, Acao? acao, int custo,
        int profundidade) =>
    No(
      estado: estadoInicial,
      noPai: noPai,
      acao: acao,
      custo: custo,
      profundidade: profundidade,
    );

List<No> buscaEmArvore(Problema problema, List<No> borda) {
  List<No> solucao = [];

  borda.add(criarNo(problema.estadoInicial, null, null, 0, 0));
  while (solucao.isEmpty) {
    if (borda.isEmpty) throw 'Falha: borda está vazia';
    No no = borda.removeAt(0);
    solucao.add(no);
    if (problema.estadoObjetivo == no.estado) return solucao..add(no);

    borda.addAll(expandir(no, problema));
  }
  return solucao;
}

Iterable<No> expandir(No no, Problema problema) {
  var sucessores = <No>[];
  return sucessores;
}
