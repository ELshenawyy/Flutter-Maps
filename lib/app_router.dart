import 'package:flutter/material.dart';
import 'package:flutter_maps/presentation/screens/login_screen.dart';
import 'package:flutter_maps/presentation/screens/otp_screen.dart';
import 'package:flutter_maps/utils/strings.dart';

class AppRouter 
{
  Route? generateRoute(RouteSettings sittings)
  {
    switch (sittings.name)
    {
      case loginScreen:
      return MaterialPageRoute(builder: (_)=> LoginScreen(),);
    
     case otpScreen:
      return MaterialPageRoute(builder: (_)=> OtpScreen());
    }
    return null;
  }
  }
