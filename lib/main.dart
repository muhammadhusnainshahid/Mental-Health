import 'package:ai_mental_health/routes/routes_generator.dart';
import 'package:ai_mental_health/screens/onboarding-screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // false karo agar release build me disable karna ho
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ✅ Banner remove ho jayega
      useInheritedMediaQuery: true,      // ✅ DevicePreview ke liye zaruri hai
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      title: 'Ai Mental Health',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      onGenerateRoute: routesGenerator,
      home: OnboardingScreen(),
    );
  }
}
