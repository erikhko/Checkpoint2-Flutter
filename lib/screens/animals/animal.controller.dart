import 'package:get/get.dart';
import 'package:revisao_pre_cp02/database/app.database.dart';
import 'package:revisao_pre_cp02/domain/animal.dart';

class AnimalController extends GetxController{
  final Rx<bool> _status = Rx(false);
  AnimalDatabase animalDatabase = AnimalDatabase.instance;


  AnimalController();

  saveAnimal(Animal value) async {
    await animalDatabase.insert(value);
    _status.value = true;
  }
}