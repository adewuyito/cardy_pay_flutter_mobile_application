import 'package:cardy_pay_mobile_application/common/typedef/app_wide_typedefs.dart';
import 'package:cardy_pay_mobile_application/utils/constants/enums.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

@immutable
class Auth extends Equatable {
  final AuthState? authState;
  final UserId? userId;
  final bool isLoading;

  const Auth({
    required this.authState,
    required this.userId,
    required this.isLoading,
  });

  const Auth.unauthenticated()
      : authState = null,
        userId = null,
        isLoading = false;

  Auth copiedWithIsLoading({required bool isLoading}) => Auth(
        authState: authState,
        userId: userId,
        isLoading: isLoading,
      );

  factory Auth.fromFirebase(User user) => Auth(
        authState: AuthState.success,
        userId: user.uid,
        isLoading: false,
      );

  @override
  List<Object?> get props => [authState, userId, isLoading];
}
