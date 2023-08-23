import 'package:crworkout_tracker/domain/entities/entities.dart';

abstract class WeightDatasource {
  Future<List<Weight>> getWeights();
}