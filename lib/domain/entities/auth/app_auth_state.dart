import 'package:chat_app/domain/entities/user/user.dart';

sealed class AppAuthState {
  const AppAuthState();

  const factory AppAuthState.authenticated({required User user}) = Authenticated;
  const factory AppAuthState.unAuthenticated() = UnAuthenticated;

  bool get isAuth => this is Authenticated;
}

class Authenticated extends AppAuthState {
  final User user;

  const Authenticated({required this.user});
}

class UnAuthenticated extends AppAuthState {
  const UnAuthenticated();
}
