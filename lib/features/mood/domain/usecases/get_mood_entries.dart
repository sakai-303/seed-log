import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/mood_entry.dart';
import '../repositories/mood_repository.dart';

class GetMoodEntries {
  final MoodRepository repository;

  GetMoodEntries(this.repository);

  Future<Either<Failure, List<MoodEntry>>> call(GetMoodEntriesParams params) async {
    return await repository.getMoodEntries(
      startDate: params.startDate,
      endDate: params.endDate,
      tagIds: params.tagIds,
      limit: params.limit,
      offset: params.offset,
    );
  }
}

class GetMoodEntriesParams extends Equatable {
  final DateTime? startDate;
  final DateTime? endDate;
  final List<String>? tagIds;
  final int? limit;
  final int? offset;

  const GetMoodEntriesParams({
    this.startDate,
    this.endDate,
    this.tagIds,
    this.limit,
    this.offset,
  });

  @override
  List<Object?> get props => [startDate, endDate, tagIds, limit, offset];
}