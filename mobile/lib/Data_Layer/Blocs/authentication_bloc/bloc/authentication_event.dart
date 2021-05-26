part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {
  final User user;

  const LoggedIn({required this.user});

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'LoggedIn{user: $user.email.toString() }';
}

class LoggedOut extends AuthenticationEvent {}
