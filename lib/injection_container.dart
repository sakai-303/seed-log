import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';
import 'features/mood/domain/repositories/mood_repository.dart';
import 'features/mood/domain/usecases/add_mood_entry.dart';
import 'features/mood/domain/usecases/delete_mood_entry.dart';
import 'features/mood/domain/usecases/get_mood_entries.dart';
import 'features/mood/domain/usecases/get_mood_statistics.dart';
import 'features/mood/domain/usecases/update_mood_entry.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Use cases
  sl.registerLazySingleton(() => AddMoodEntry(sl()));
  sl.registerLazySingleton(() => GetMoodEntries(sl()));
  sl.registerLazySingleton(() => UpdateMoodEntry(sl()));
  sl.registerLazySingleton(() => DeleteMoodEntry(sl()));
  sl.registerLazySingleton(() => GetMoodStatistics(sl()));

  // Repository
  // sl.registerLazySingleton<MoodRepository>(
  //   () => MoodRepositoryImpl(localDataSource: sl()),
  // );

  // Data sources
  // sl.registerLazySingleton<MoodLocalDataSource>(
  //   () => MoodLocalDataSourceImpl(database: sl()),
  // );

  // Database
  // final database = await _initDatabase();
  // sl.registerLazySingleton<Database>(() => database);

  // BLoCs
  // sl.registerFactory(
  //   () => MoodBloc(
  //     addMoodEntry: sl(),
  //     getMoodEntries: sl(),
  //     updateMoodEntry: sl(),
  //     deleteMoodEntry: sl(),
  //   ),
  // );
}

// Future<Database> _initDatabase() async {
//   final databasePath = await getDatabasesPath();
//   final path = join(databasePath, 'mood_log.db');

//   return await openDatabase(
//     path,
//     version: 1,
//     onCreate: (db, version) async {
//       await db.execute('''
//         CREATE TABLE mood_entries (
//           id TEXT PRIMARY KEY,
//           user_id TEXT NOT NULL,
//           mood_level INTEGER NOT NULL CHECK (mood_level >= 1 AND mood_level <= 5),
//           date TEXT NOT NULL,
//           memo TEXT,
//           photo_path TEXT,
//           created_at TEXT NOT NULL,
//           updated_at TEXT NOT NULL
//         )
//       ''');

//       await db.execute('''
//         CREATE TABLE tags (
//           id TEXT PRIMARY KEY,
//           name TEXT NOT NULL,
//           color TEXT NOT NULL,
//           icon TEXT
//         )
//       ''');

//       await db.execute('''
//         CREATE TABLE mood_entry_tags (
//           mood_entry_id TEXT NOT NULL,
//           tag_id TEXT NOT NULL,
//           PRIMARY KEY (mood_entry_id, tag_id),
//           FOREIGN KEY (mood_entry_id) REFERENCES mood_entries(id),
//           FOREIGN KEY (tag_id) REFERENCES tags(id)
//         )
//       ''');
//     },
//   );
// }