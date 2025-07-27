import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Tag extends Equatable {
  final String id;
  final String name;
  final Color color;
  final IconData? icon;

  const Tag({
    required this.id,
    required this.name,
    required this.color,
    this.icon,
  });

  Tag copyWith({
    String? id,
    String? name,
    Color? color,
    IconData? icon,
  }) {
    return Tag(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      icon: icon ?? this.icon,
    );
  }

  @override
  List<Object?> get props => [id, name, color, icon];
}