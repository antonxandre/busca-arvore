import 'acao.dart';
import 'no.dart';
import 'problema.dart';

main() {
  Problema problema = Problema();
  try {
    buscaEmArvore(problema, []);
  } catch (e) {
    print('Aconteceu algum problema: $e');
  }
}

No criarNo(String estadoInicial,
        [No? noPai, Acao? acao, int custo = 0, int profundidade = 0]) =>
    No(
      estado: estadoInicial,
      noPai: noPai,
      acao: acao,
      custo: custo,
      profundidade: profundidade,
    );

List<No> buscaEmArvore(Problema problema, List<No> borda) {
  List<No> solucao = [];

  borda.add(criarNo(problema.estadoInicial));
  while (solucao.isEmpty) {
    if (borda.isEmpty) throw 'Falha: borda está vazia';
    No no = borda.removeAt(0);
    if (problema.estadoObjetivo == no.estado) return solucao..add(no);

    borda.addAll(expandir(no, problema));
  }
  return solucao;
}

Iterable<No> expandir(No no, Problema problema) {
  var sucessores = <No>[];
  print('teste');
  return sucessores;
}
