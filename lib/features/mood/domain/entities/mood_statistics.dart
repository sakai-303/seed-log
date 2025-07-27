import 'package:equatable/equatable.dart';

class MoodStatistics extends Equatable {
  final double averageMood;
  final int totalEntries;
  final int highestMood;
  final int lowestMood;
  final Map<int, int> moodDistribution;
  final Map<String, double> tagAverageMood;
  final Map<int, double> weekdayAverageMood;

  const MoodStatistics({
    required this.averageMood,
    required this.totalEntries,
    required this.highestMood,
    required this.lowestMood,
    required this.moodDistribution,
    required this.tagAverageMood,
    required this.weekdayAverageMood,
  });

  @override
  List<Object> get props => [
        averageMood,
        totalEntries,
        highestMood,
        lowestMood,
        moodDistribution,
        tagAverageMood,
        weekdayAverageMood,
      ];
}