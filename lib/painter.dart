import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iabairrosmaceio/models/acao.dart';
import 'package:iabairrosmaceio/models/no.dart';

class DemoPainter extends CustomPainter {
  final List<No> nos;

  DemoPainter(this.nos);
  @override
  void paint(Canvas canvas, Size size) {
    int i = 0;
    for (No no in nos) {
      var paint = Paint()
        ..color = Color.fromRGBO(i * 20, i * 0, 0, 1.0)
        ..strokeWidth = 6
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;
      var path = Path();
      if (no.acao != null) {
        Posicao posPartida = Acao.getPosicao(no.acao!.pontoPartida);
        Posicao posDestino = Acao.getPosicao(no.acao!.pontoDestino);
        path.moveTo(posPartida.x.toDouble(), posPartida.y.toDouble());
        path.lineTo(posDestino.x.toDouble(), posDestino.y.toDouble());

        canvas.drawPath(path, paint);
        i++;
        if (i == 1) {
          final TextPainter textPainter = TextPainter(
              text: const TextSpan(
                  text: 'Início',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontSize: 18,
                  )),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.ltr)
            ..layout(maxWidth: size.width - 12.0 - 12.0);

          textPainter.paint(
              canvas, Offset(posPartida.x.toDouble(), posPartida.y.toDouble()));
        } else if (i == nos.length - 1) {
          final TextPainter textPainter = TextPainter(
              text: const TextSpan(
                  text: 'Fim',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.green,
                    color: Colors.white,
                    fontSize: 18,
                  )),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.ltr)
            ..layout(maxWidth: size.width - 12.0 - 12.0);

          textPainter.paint(
              canvas, Offset(posDestino.x.toDouble(), posDestino.y.toDouble()));
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
