import 'package:crworkout_tracker/domain/entities/weight.dart';
import 'package:crworkout_tracker/domain/repositories/weight_repository.dart';

class WeightSqliteRepository extends WeightRepository {
  @override
  Future<List<Weight>> getWeights() {
    // TODO: implement getWeights
    throw UnimplementedError();
  }
}