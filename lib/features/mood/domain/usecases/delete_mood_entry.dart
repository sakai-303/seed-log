import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/mood_repository.dart';

class DeleteMoodEntry {
  final MoodRepository repository;

  DeleteMoodEntry(this.repository);

  Future<Either<Failure, void>> call(String id) async {
    return await repository.deleteMoodEntry(id);
  }
}