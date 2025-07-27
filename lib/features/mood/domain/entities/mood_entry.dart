import 'package:equatable/equatable.dart';
import 'tag.dart';

class MoodEntry extends Equatable {
  final String id;
  final String userId;
  final int moodLevel;
  final DateTime date;
  final String? memo;
  final List<Tag> tags;
  final String? photoPath;
  final DateTime createdAt;
  final DateTime updatedAt;

  const MoodEntry({
    required this.id,
    required this.userId,
    required this.moodLevel,
    required this.date,
    this.memo,
    required this.tags,
    this.photoPath,
    required this.createdAt,
    required this.updatedAt,
  });

  MoodEntry copyWith({
    String? id,
    String? userId,
    int? moodLevel,
    DateTime? date,
    String? memo,
    List<Tag>? tags,
    String? photoPath,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MoodEntry(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      moodLevel: moodLevel ?? this.moodLevel,
      date: date ?? this.date,
      memo: memo ?? this.memo,
      tags: tags ?? this.tags,
      photoPath: photoPath ?? this.photoPath,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        moodLevel,
        date,
        memo,
        tags,
        photoPath,
        createdAt,
        updatedAt,
      ];
}