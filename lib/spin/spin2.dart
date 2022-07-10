import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';

class Spine2 extends StatefulWidget {
  const Spine2({Key? key}) : super(key: key);

  @override
  _Spine2State createState() => _Spine2State();
}

class _Spine2State extends State<Spine2> {
  final StreamController _dividerController = StreamController<int>();

  final _wheelNotifier = StreamController<double>();
  late int sto;
  @override
  void dispose() {
    super.dispose();
    _dividerController.close();
    _wheelNotifier.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffDDC3FF), elevation: 0.0),
      backgroundColor: Color(0xffDDC3FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AbsorbPointer(
              absorbing: true,
              child: SpinningWheel(
                Image.asset('asset/ss.png'),
                width: 300,
                height: 280,
                initialSpinAngle: _generateRandomAngle(),
                spinResistance: 0.6,
                canInteractWhileSpinning: false,
                dividers: 8,
                onUpdate: _dividerController.add,
                // onEnd: (value) {
                //   if (value != 8) {
                //     final store = (Random().nextDouble() * 6000) + 2000;
                //     _wheelNotifier.sink.add(store);
                //   }
                // },
                secondaryImage: Image.asset('asset/w3.png'),
                secondaryImageHeight: 90,
                secondaryImageWidth: 45,
                secondaryImageLeft: 120,
                secondaryImageTop: 82,
                shouldStartOrStop: _wheelNotifier.stream,
              ),
            ),
            const SizedBox(height: 30),
            StreamBuilder(
                stream: _dividerController.stream,
                builder: (context, AsyncSnapshot snapshot) {
                  sto = snapshot.data;
                  return snapshot.hasData
                      ? RouletteScore(snapshot.data)
                      : Container();
                }),
            SizedBox(height: 30),
            RaisedButton(
                child: Text("Start"),
                onPressed: () {
                  final pistore = Random().nextDouble() * pi * 2;
                  final store = (Random().nextDouble() * 6000) + 2000;
                  print("store=====---$store");
                  print("pistore=====---$pistore");
                  _wheelNotifier.sink.add(store);
                  if (sto == 300) {
                    _wheelNotifier.sink.close();
                  }
                })
          ],
        ),
      ),
    );
  }

  double _generateRandomVelocity() => (Random().nextDouble() * 6000) + 10000;

  double _generateRandomAngle() => 5;
}

class RouletteScore extends StatelessWidget {
  final int selected;

  final Map<int, String> labels = {
    1: '1000\$',
    2: '400\$',
    3: '800\$',
    4: '7000\$',
    5: '5000\$',
    6: '300\$',
    7: '2000\$',
    8: '-100\$',
  };

  RouletteScore(this.selected);

  @override
  Widget build(BuildContext context) {
    return Text('${labels[selected]}',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24.0));
  }
}
