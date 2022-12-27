import 'package:flutter/cupertino.dart';

import 'acao.dart';
import 'no.dart';
import 'problema.dart';

List<No> obterResultado(String partida, String destino) {
  Problema problema = Problema();
  problema.estadoInicial = partida;
  problema.estadoObjetivo = destino;
  try {
    final resultado = buscaEmArvore(problema, []);
    resultado.forEach(
      (element) => print(element),
    );
    return resultado;
    // print(resultado.toString() + '\n');
  } catch (e) {
    debugPrint('Aconteceu algum problema: $e');
    return [];
  }
}

List<No> buscaEmArvore(Problema problema, List<No> borda) {
  List<No> solucao = [];
  List<No> caminho = [];

  borda.add(No.criarNo(problema.estadoInicial));
  while (solucao.isEmpty) {
    borda = verificarCaminho(caminho, borda);
    if (borda.isEmpty) throw 'Falha: borda está vazia';

    No no = borda.removeAt(0);

    caminho.add(no);

    if (problema.estadoObjetivo == no.estado) {
      solucao.addAll(caminho);
      return solucao;
    }
    borda.addAll(expandir(no, problema));
  }
  return solucao;
}

Iterable<No> expandir(No no, Problema problema) {
  final sucessores = <No>[];
  for (Acao acao in problema.acoes) {
    if (no.estado == acao.pontoPartida) {
      No sucessor = No.criarNo(
        acao.pontoDestino,
        no,
        acao,
        acao.custo + no.custo,
        no.profundidade + 1,
      );
      sucessores.add(sucessor);
    }
  }
  return sucessores;
}

List<No> verificarCaminho(List<No> caminho, List<No> borda) {
  borda.removeWhere((b) => caminho.any((c) => c.estado == b.estado));
  return borda;
}
