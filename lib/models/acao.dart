class Acao {
  String pontoPartida = '';
  String pontoDestino = '';
  int custo = 0;

  Acao(
    this.pontoPartida,
    this.pontoDestino,
    this.custo,
  );

  static Posicao getPosicao(String siglaBairro) {
    Posicao posicao;
    switch (siglaBairro) {
      case 'T':
        posicao = Posicao(175, 610);
        break;
      case 'P':
        posicao = Posicao(200, 600);
        break;
      case 'C':
        posicao = Posicao(238, 580);
        break;
      case 'J':
        posicao = Posicao(275, 590);
        break;
      case 'PV':
        posicao = Posicao(335, 561);
        break;
      case 'JA':
        posicao = Posicao(287, 507);
        break;
      case 'CA':
        posicao = Posicao(340, 464);
        break;
      case 'F':
        posicao = Posicao(244, 533);
        break;
      case 'S':
        posicao = Posicao(280, 370);
        break;
      case 'PI':
        posicao = Posicao(215, 480);
        break;
      case 'G':
        posicao = Posicao(240, 425);
        break;
      case 'BB':
        posicao = Posicao(301, 231);
        break;
      case 'TB':
        posicao = Posicao(153, 281);
        break;
      default:
        posicao = Posicao(0, 0);
    }
    return posicao;
  }
}

class Posicao {
  int x, y;
  Posicao(
    this.x,
    this.y,
  );
}
