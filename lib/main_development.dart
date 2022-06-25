// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:calc/app/app.dart';
import 'package:calc/bootstrap.dart';
import 'package:calc/config/constants.dart';
import 'package:device_preview/device_preview.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox<List<String>>(calcCubitBox);
  await bootstrap(
    () => DevicePreview(builder: (context) => const App()),
  );
}
