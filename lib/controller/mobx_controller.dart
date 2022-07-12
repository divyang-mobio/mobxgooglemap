import 'package:mobx/mobx.dart';
import '../utils/database.dart';
import '../models/location_model.dart';

part 'mobx_controller.g.dart';

class LocationController extends _LocationController with _$LocationController{}


abstract class _LocationController with Store{

  @observable
  List<LocationData> data = [];

  @action
  void add(LocationData location) {
    DatabaseHelper.instance.add(location);
    getData();
  }

  @action
  void delete(int id) {
    DatabaseHelper.instance.delete(id);
    getData();
  }

  @action
  getData() async {
    data = await DatabaseHelper.instance.getData();
  }
}