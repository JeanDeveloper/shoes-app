import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_inventory/pages/pages.dart';

import 'package:shoes_inventory/service/auth_service.dart';

class InitializedWidget extends StatelessWidget {
  const InitializedWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final authService = Provider.of<AuthService>(context);
    final currentStatus = authService.authStatus;

    print(currentStatus);

    switch (currentStatus) {
      case AuthStatus.UnAuthenticated:
        return LoginPage();
      case AuthStatus.Authenticating:
        return LoadingPage();
      case AuthStatus.Authenticated:
        return HomePage();
    }

  }
}