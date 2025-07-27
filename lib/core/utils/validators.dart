class Validators {
  static bool isValidMoodLevel(int level) {
    return level >= 1 && level <= 5;
  }
  
  static bool isValidMemo(String? memo) {
    if (memo == null) return true;
    return memo.length <= 500;
  }
  
  static bool isValidPin(String pin) {
    if (pin.length < 4 || pin.length > 6) return false;
    return RegExp(r'^[0-9]+$').hasMatch(pin);
  }
  
  static String? validateMoodLevel(int? level) {
    if (level == null) return '気分レベルを選択してください';
    if (!isValidMoodLevel(level)) return '無効な気分レベルです';
    return null;
  }
  
  static String? validateMemo(String? memo) {
    if (!isValidMemo(memo)) return 'メモは500文字以内で入力してください';
    return null;
  }
  
  static String? validatePin(String? pin) {
    if (pin == null || pin.isEmpty) return 'PINを入力してください';
    if (!isValidPin(pin)) return 'PINは4〜6桁の数字で入力してください';
    return null;
  }
}