abstract class AuthEvent {}

enum SheetType { login, register }

class AuthStarted extends AuthEvent {}

class ShowBottomSheet extends AuthEvent {
  final SheetType type;

  ShowBottomSheet({required this.type});
}

class HideBottomSheet extends AuthEvent {}
