import 'package:crworkout_tracker/domain/entities/entities.dart';

abstract class WeightRepository {
  Future<List<Weight>> getWeights();
}