

import 'package:vassal/models/category_model.dart';
import 'package:vassal/models/service_model.dart';

class ScreenArguments {
  final Category category;
  final Service service;

  ScreenArguments(this.service, this.category);
}