import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/mood_statistics.dart';
import '../repositories/mood_repository.dart';

class GetMoodStatistics {
  final MoodRepository repository;

  GetMoodStatistics(this.repository);

  Future<Either<Failure, MoodStatistics>> call(GetMoodStatisticsParams params) async {
    return await repository.getMoodStatistics(
      startDate: params.startDate,
      endDate: params.endDate,
    );
  }
}

class GetMoodStatisticsParams extends Equatable {
  final DateTime? startDate;
  final DateTime? endDate;

  const GetMoodStatisticsParams({
    this.startDate,
    this.endDate,
  });

  @override
  List<Object?> get props => [startDate, endDate];
}