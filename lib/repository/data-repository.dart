import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:trinity_wizard_test/models/data-model.dart';

class DataRepository {
  Future<Either<String, List<ListDataModel>>> getData() async {
    final response = await rootBundle.loadString('assets/json/data.json');
    final data = await json.decode(response);
    print('data $data');
    return Right(
      List<ListDataModel>.from(
        data.map(
          (x) => ListDataModel.fromMap(x),
        ),
      ),
    );
  }
}
