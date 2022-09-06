import 'acao.dart';

class Problema {
  String estadoInicial = 'T';
  String estadoObjetivo = 'TB';
  List<Acao> acoes = [
    Acao('T', 'P', 1),
    Acao('P', 'T', 1),
    Acao('P', 'J', 4),
    Acao('J', 'P', 4),
    Acao('P', 'C', 1),
    Acao('C', 'P', 1),
    Acao('C', 'J', 2),
    Acao('J', 'C', 2),
    Acao('J', 'PV', 5),
    Acao('PV', 'J', 5),
    Acao('C', 'JA', 5),
    Acao('JA', 'C', 5),
    Acao('JA', 'PV', 5),
    Acao('PV', 'JA', 5),
    Acao('PV', 'CA', 4),
    Acao('CA', 'PV', 4),
    Acao('CA', 'JA', 4),
    Acao('JA', 'CA', 4),
    Acao('JA', 'F', 4),
    Acao('F', 'JA', 4),
    Acao('F', 'CA', 6),
    Acao('CA', 'F', 6),
    Acao('CA', 'S', 5),
    Acao('S', 'CA', 5),
    Acao('F', 'PI', 2),
    Acao('PI', 'F', 2),
    Acao('F', 'G', 4),
    Acao('G', 'F', 4),
    Acao('S', 'G', 3),
    Acao('G', 'S', 3),
    Acao('S', 'BB', 6),
    Acao('BB', 'S', 6),
    Acao('BB', 'TB', 6),
    Acao('TB', 'BB', 6),
    Acao('TB', 'G', 9),
    Acao('G', 'TB', 9),
  ];
}
