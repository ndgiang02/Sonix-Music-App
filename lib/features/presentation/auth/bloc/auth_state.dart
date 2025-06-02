import 'package:sonix/core/utils/load_status.dart';

import 'auth_event.dart';

class AuthState {
  final LoadStatus loadStatus;
  final SheetType? sheetType;
  final bool isSheetOpen;

  const AuthState({
    this.loadStatus = LoadStatus.Init,
    this.sheetType,
    this.isSheetOpen = false,
  });

  AuthState copyWith({
    LoadStatus? loadStatus,
    SheetType? sheetType,
    bool? isSheetOpen,
  }) {
    return AuthState(
      loadStatus: loadStatus ?? this.loadStatus,
      sheetType: sheetType ?? this.sheetType,
      isSheetOpen: isSheetOpen ?? this.isSheetOpen,
    );
  }
}
