import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/mood_entry.dart';
import '../entities/mood_statistics.dart';
import '../entities/tag.dart';

abstract class MoodRepository {
  Future<Either<Failure, MoodEntry>> addMoodEntry(MoodEntry entry);
  
  Future<Either<Failure, List<MoodEntry>>> getMoodEntries({
    DateTime? startDate,
    DateTime? endDate,
    List<String>? tagIds,
    int? limit,
    int? offset,
  });
  
  Future<Either<Failure, MoodEntry>> getMoodEntryById(String id);
  
  Future<Either<Failure, MoodEntry>> updateMoodEntry(MoodEntry entry);
  
  Future<Either<Failure, void>> deleteMoodEntry(String id);
  
  Future<Either<Failure, MoodStatistics>> getMoodStatistics({
    DateTime? startDate,
    DateTime? endDate,
  });
  
  Future<Either<Failure, List<Tag>>> getAllTags();
  
  Future<Either<Failure, Tag>> addTag(Tag tag);
  
  Future<Either<Failure, void>> deleteTag(String id);
}