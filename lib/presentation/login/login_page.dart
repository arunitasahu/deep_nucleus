import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => TimerProvider()),
      ],
      child: _LoginPage(),
    );
  }
}

class _LoginPage extends StatefulWidget {
  @override
  __LoginPageState createState() => __LoginPageState();
}

class __LoginPageState extends State<_LoginPage> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  bool isMobileValid = false;
  bool otpSent = false;

  @override
  void dispose() {
    mobileController.dispose();
    otpController.dispose();
    super.dispose();
  }

  void _sendOTP(BuildContext context) {
    if (!otpSent) {
      context.read<TimerProvider>().startTimer();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OTP Sent')),
      );

      // Mark OTP as sent
      setState(() {
        otpSent = true;
      });
    }
  }

  void _resendOTP(BuildContext context) {
    context.read<TimerProvider>().startTimer();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('OTP Resent')),
    );
  }

  void _checkMobileValidation(String value) {
    if (value.length == 10) {
      setState(() {
        isMobileValid = true;
      });
    } else {
      setState(() {
        isMobileValid = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
          style: TextStyle(
            color: Colors.black, // Set text color to black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: mobileController,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
              ),
              onChanged: (value) {
                context.read<LoginProvider>().setMobileNumber(value);
                _checkMobileValidation(value);
              },
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
            SizedBox(height: 20),
            TextField(
              controller: otpController,
              decoration: InputDecoration(
                labelText: 'OTP',
              ),
              onChanged: (value) {
                context.read<LoginProvider>().setOTP(value);
              },
              keyboardType: TextInputType.number,
              maxLength: 6,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:
              isMobileValid && !otpSent ? () => _sendOTP(context) : null,
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(8.0), // Increase elevation
                minimumSize: MaterialStateProperty.all(Size(200, 50)), // Adjust size
              ),
              child: Text(
                'Send OTP',
                style: TextStyle(
                  color: Colors.black, // Set text color to black
                ),
              ),
            ),
            SizedBox(height: 20),
            Consumer<TimerProvider>(
              builder: (context, timerProvider, _) {
                return ElevatedButton(
                  onPressed: timerProvider.isResendButtonEnabled && otpSent
                      ? () => _resendOTP(context)
                      : null,
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8.0), // Increase elevation
                    minimumSize: MaterialStateProperty.all(Size(200, 50)), // Adjust size
                  ),
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                      color: Colors.black, // Set text color to black
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Consumer<TimerProvider>(
              builder: (context, timerProvider, _) {
                return Text(
                  timerProvider.isResendButtonEnabled
                      ? ''
                      : 'Resend OTP in ${timerProvider.remainingTime} seconds',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black, // Set text color to black
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/screen_one_screen');
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(8.0), // Increase elevation
                minimumSize: MaterialStateProperty.all(Size(200, 50)), // Adjust size
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black, // Set text color to black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
