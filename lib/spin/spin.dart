import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class SpinWheelPage extends StatefulWidget {
  @override
  _SpinWheelPageState createState() => _SpinWheelPageState();
}

class _SpinWheelPageState extends State<SpinWheelPage> {
  int selected = 0;
  StreamController<int> controller = StreamController<int>();

  int rotation_count = 10;
  List<int> point = [0, 0, 0, 0, 0, 0, 0, 0];
  final items = <String>[
    'Team 1',
    'Team 2',
    'Team 3',
    'Team 4',
    'Team 5',
    'Team 6',
    'Team 7',
    'Team 8',
  ];
  late Timer timer;
  late Random random;
  late String result;
  late double degree;
  late int time;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    point = [0, 0, 0, 0, 0, 0, 0, 0];

    ///------
    random = Random();
    degree = 0;
    result = "";
  }

  void rotateWheel() {
    time = 3000;
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (time > 0) {
        setState(() {
          degree = random.nextInt(360).toDouble();
          result = pointc(degree) ?? "";
        });
        time = time - 100;
      }
    });
  }

  String? pointc(double degree) {
    String res = "";
    int lowpoint = 0;
    int arc = 30;
    int sectore = 12;

    for (int i = sectore; i > 0; i--) {
      if (degree > lowpoint && degree < lowpoint + arc) {
        res = i.toString();
        print("res---$res");
        break;
      }
      lowpoint = lowpoint + arc;
    }

    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spin Wheel - IPL'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = Random().nextInt(items.length);
              point[selected] = point[selected] + 1;
              print("Selected value1 $selected ${point[selected]}");
            });
          },
          child: Column(
            children: [
              Container(
                height: 250,
                child: Column(
                  children: [
                    Expanded(
                      child: FortuneWheel(
                        styleStrategy: AlternatingStyleStrategy(),
                        rotationCount: rotation_count,
                        onFling: () => {
                          setState(() {
                            selected = Random().nextInt(items.length);
                            point[selected] = point[selected] + 1;
                            print(
                                "Selected value1 $selected ${point[selected]}");
                          })
                        },
                        selected: controller.stream,
                        items: [
                          for (var it in items) FortuneItem(child: Text(it)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.add(
                      Fortune.randomInt(0, items.length),
                    );
                  },
                  child: Text("aaaa")),
              Stack(
                children: [
                  Positioned(
                    child: Align(
                      alignment: Alignment.center,
                      child: Transform.rotate(
                        angle: 3.14 / 180 * degree,
                        child: Image.asset("asset/spine.png",
                            height: 280, width: 280),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("asset/pointer.png",
                          height: 50, width: 90),
                    ),
                  ),
                ],
              ),
              Text("${result}"),
              ElevatedButton(
                  onPressed: () {
                    rotateWheel();
                  },
                  child: Text("Spin")),
            ],
          ),
        ),
      ),
    );
  }
}
