import 'package:flutter/material.dart';
import 'package:iabairrosmaceio/models/ia.dart';
import 'package:iabairrosmaceio/models/no.dart';
import 'package:iabairrosmaceio/painter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<No> resultado = [];
  TextEditingController partidaCtrl = TextEditingController();
  TextEditingController destinoCtrl = TextEditingController();
  @override
  void initState() {
    super.initState();
    resultado = obterResultado(
      'T',
      'TB',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: partidaCtrl,
                    decoration: const InputDecoration(
                      label: Text('Partida'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    controller: destinoCtrl,
                    decoration: const InputDecoration(
                      label: Text('Destino'),
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.play_circle_fill),
                    onPressed: () {
                      setState(() {
                        resultado = obterResultado(
                          partidaCtrl.text.toUpperCase(),
                          destinoCtrl.text.toUpperCase(),
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 764,
            height: 731,
            child: CustomPaint(
              foregroundPainter: DemoPainter(resultado),
              size: const Size(764, 731),

              // child: Container(),
              child: Image.asset(
                'assets/mapa.png',
                fit: BoxFit.none,
                width: 764,
                height: 731,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
