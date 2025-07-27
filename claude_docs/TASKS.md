# 気分記録アプリ開発タスクリスト

## フェーズ1: プロジェクトセットアップ（1-2日）
- [ ] Flutter依存関係の追加（pubspec.yaml）
  - flutter_bloc
  - sqflite
  - get_it
  - go_router
  - intl
  - fl_chart
  - image_picker
  - local_auth
  - flutter_secure_storage
- [ ] ディレクトリ構造の作成
- [ ] 基本的な設定ファイルの作成

## フェーズ2: コア機能の実装（2-3日）
- [ ] 定数クラスの作成（colors.dart, strings.dart）
- [ ] エラー処理クラスの作成（failures.dart）
- [ ] ユーティリティクラスの作成（date_formatter.dart, validators.dart）
- [ ] アプリテーマの設定（app_theme.dart）
- [ ] 依存性注入の設定（injection_container.dart）

## フェーズ3: データベース層の実装（3-4日）
- [ ] SQLiteデータベースのセットアップ
- [ ] データベーススキーマの作成
- [ ] マイグレーション処理の実装
- [ ] データベースヘルパークラスの作成

## フェーズ4: Domain層の実装（2-3日）
- [ ] MoodEntry Entityの作成
- [ ] Tag Entityの作成
- [ ] MoodRepository Interfaceの定義
- [ ] Use Casesの実装
  - AddMoodEntry
  - GetMoodEntries
  - UpdateMoodEntry
  - DeleteMoodEntry
  - GetMoodStatistics

## フェーズ5: Data層の実装（3-4日）
- [ ] MoodEntryModelの作成
- [ ] TagModelの作成
- [ ] MoodLocalDataSourceの実装
- [ ] MoodRepositoryImplの実装
- [ ] データ変換処理の実装

## フェーズ6: Presentation層 - BLoC（2-3日）
- [ ] MoodEventクラスの作成
- [ ] MoodStateクラスの作成
- [ ] MoodBlocの実装
- [ ] StatisticsBlocの実装

## フェーズ7: UI実装 - 基本画面（5-7日）
- [ ] ホーム画面の実装
  - 今日の気分記録ボタン
  - 直近7日間のサマリー
  - ナビゲーションメニュー
- [ ] 気分記録画面の実装
  - 気分レベル選択UI
  - メモ入力フォーム
  - タグ選択UI
  - 保存/キャンセル機能
- [ ] 基本的なウィジェットの作成
  - MoodCard
  - MoodLevelSelector
  - TagChip

## フェーズ8: UI実装 - 履歴画面（3-4日）
- [ ] カレンダービューの実装
- [ ] リストビューの実装
- [ ] グラフビューの実装
- [ ] フィルター機能の実装
- [ ] 詳細画面の実装

## フェーズ9: UI実装 - 分析画面（2-3日）
- [ ] 統計ダッシュボードの実装
- [ ] グラフ表示の実装（fl_chart使用）
- [ ] インサイト表示の実装

## フェーズ10: UI実装 - 設定画面（2-3日）
- [ ] プロフィール設定
- [ ] 通知設定UI
- [ ] データエクスポート/インポート機能
- [ ] プライバシー設定

## フェーズ11: 追加機能の実装（3-4日）
- [ ] 通知機能の実装（flutter_local_notifications）
- [ ] 認証機能の実装（PIN/生体認証）
- [ ] 画像処理機能の実装
- [ ] データ暗号化の実装

## フェーズ12: テストの作成（3-4日）
- [ ] Use Casesの単体テスト
- [ ] Repositoryの単体テスト
- [ ] BLoCの単体テスト
- [ ] 主要ウィジェットのテスト
- [ ] 統合テストの作成

## フェーズ13: 最終調整（2-3日）
- [ ] パフォーマンス最適化
- [ ] UIの微調整
- [ ] バグ修正
- [ ] リリースビルドの作成

## 推定総工数: 約35-45日

### 優先度
- **高**: フェーズ1-8（基本機能）
- **中**: フェーズ9-11（追加機能）
- **低**: フェーズ12-13（品質向上）

### 並行作業可能なタスク
- Data層とDomain層の実装
- 各画面のUI実装
- テストの作成（実装と並行）