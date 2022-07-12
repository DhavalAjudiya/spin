import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vapidemo/apidemo4/engine_controller.dart';

class EngineScreen extends StatelessWidget {
  EngineScreen({Key? key}) : super(key: key);
  final EngineController engineScreen = Get.put(EngineController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Obx(
          () => Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text("${engineScreen.engineModal[index].id}"),
                    Text("${engineScreen.engineModal[index].active}"),
                    Text("${engineScreen.engineModal[index].stages}"),
                    Text("${engineScreen.engineModal[index].boosters}"),
                    Text("${engineScreen.engineModal[index].costPerLaunch}"),
                    Text("${engineScreen.engineModal[index].successRatePct}"),
                    Text("${engineScreen.engineModal[index].firstFlight}"),
                    Text("${engineScreen.engineModal[index].country}"),
                    Text("${engineScreen.engineModal[index].company}"),
                    Text("${engineScreen.engineModal[index].height}"),
                    Text("${engineScreen.engineModal[index].height?.meters}"),
                    Text("${engineScreen.engineModal[index].height?.feet}"),
                    Text("${engineScreen.engineModal[index].diameter}"),
                    Text("${engineScreen.engineModal[index].diameter?.meters}"),
                    Text("${engineScreen.engineModal[index].diameter?.feet}"),
                    Text("${engineScreen.engineModal[index].mass}"),
                    Text("${engineScreen.engineModal[index].mass?.kg}"),
                    Text("${engineScreen.engineModal[index].mass?.lb}"),
                    Text("${engineScreen.engineModal[index].payloadWeights}"),
                    Text("${engineScreen.engineModal[index].firstStage}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.reusable}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.engines}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.fuelAmountTons}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.burnTimeSec}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.thrustSeaLevel}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.thrustSeaLevel?.kN}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.thrustSeaLevel?.lbf}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.thrustVacuum}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.thrustVacuum?.kN}"),
                    Text(
                        "${engineScreen.engineModal[index].firstStage?.thrustVacuum?.lbf}"),
                    Text("${engineScreen.engineModal[index].secondStage}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.reusable}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.engines}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.fuelAmountTons}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.burnTimeSec}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.thrust}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.thrust?.kN}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.thrust?.lbf}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.payloads}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.payloads?.option1}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.payloads?.compositeFairing?.height?.meters}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.payloads?.compositeFairing?.height?.feet}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.payloads?.compositeFairing?.diameter?.meters}"),
                    Text(
                        "${engineScreen.engineModal[index].secondStage?.payloads?.compositeFairing?.diameter?.feet}"),
                    Text("${engineScreen.engineModal[index].engines}"),
                    Text("${engineScreen.engineModal[index].engines?.number}"),
                    Text("${engineScreen.engineModal[index].engines?.type}"),
                    Text("${engineScreen.engineModal[index].engines?.version}"),
                    Text("${engineScreen.engineModal[index].engines?.layout}"),
                    Text("${engineScreen.engineModal[index].engines?.isp}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.isp?.seaLevel}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.isp?.vacuum}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.engineLossMax}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.propellant1}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.propellant2}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.thrustSeaLevel}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.thrustSeaLevel?.kN}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.thrustSeaLevel?.lbf}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.thrustVacuum}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.thrustVacuum?.kN}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.thrustVacuum?.lbf}"),
                    Text(
                        "${engineScreen.engineModal[index].engines?.thrustToWeight}"),
                    Text("${engineScreen.engineModal[index].landingLegs}"),
                    Text(
                        "${engineScreen.engineModal[index].landingLegs?.number}"),
                    Text(
                        "${engineScreen.engineModal[index].landingLegs?.material}"),
                    Image.network(
                      "${engineScreen.engineModal[index].flickrImages?[index]}",
                    ),
                    Text("${engineScreen.engineModal[index].wikipedia}"),
                    Text("${engineScreen.engineModal[index].description}"),
                    Text("${engineScreen.engineModal[index].id}"),
                    Text("${engineScreen.engineModal[index].rocketName}"),
                    Text("${engineScreen.engineModal[index].rocketType}"),
                  ],
                );
              },
              separatorBuilder: (BuildContext conext, int index) {
                return Divider(
                  thickness: 2,
                  color: Colors.black,
                );
              },
              itemCount: engineScreen.engineModal.length,
            ),
          ),
        )
      ]),
    );
  }
}
