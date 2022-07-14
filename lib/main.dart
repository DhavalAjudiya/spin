import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vapidemo/apidemo1/apidemo.dart';
import 'package:vapidemo/apidemo10/employee_button.dart';
import 'package:vapidemo/apidemo2/getdata.dart';
import 'package:vapidemo/apidemo3/persondetail.dart';
import 'package:vapidemo/apidemo4/engine_screen.dart';
import 'package:vapidemo/apidemo5/fackstroe_page.dart';
import 'package:vapidemo/apidemo7/buttonapi.dart';
import 'package:vapidemo/apidemo7/userpage_screen.dart';
import 'package:vapidemo/apidemo8/author_button.dart';
import 'package:vapidemo/apidemo9/userdata_button.dart';
import 'package:vapidemo/paginationdemo/pagedemoscreen.dart';
import 'package:vapidemo/paginationdemo/postuserapi_button.dart';
import 'package:vapidemo/rupee1/rupee1_screen.dart';
import 'package:vapidemo/ruppe/rupee_screen.dart';
import 'package:vapidemo/spin/spin.dart';
import 'package:vapidemo/spin/spin2.dart';
import 'package:vapidemo/spin/spin4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: PageDemoScreen(),
        );
      },
    );
  }
}
