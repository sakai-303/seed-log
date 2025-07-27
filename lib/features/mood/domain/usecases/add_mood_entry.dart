import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/mood_entry.dart';
import '../repositories/mood_repository.dart';

class AddMoodEntry {
  final MoodRepository repository;

  AddMoodEntry(this.repository);

  Future<Either<Failure, MoodEntry>> call(MoodEntry entry) async {
    return await repository.addMoodEntry(entry);
  }
}