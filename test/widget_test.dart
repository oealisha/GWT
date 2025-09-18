// // // This is a basic Flutter widget test.
// // //
// // // To perform an interaction with a widget in your test, use the WidgetTester
// // // utility in the flutter_test package. For example, you can send tap and scroll
// // // gestures. You can also use WidgetTester to find child widgets in the widget
// // // tree, read text, and verify that the values of widget properties are correct.

// // import 'package:flutter/material.dart';
// // import 'package:flutter_test/flutter_test.dart';

// // import 'package:smarthajiri/main.dart';

// // void main() {
// //   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
// //     // Build our app and trigger a frame.
// //    await tester.pumpWidget(MyApp());


// //     // Verify that our counter starts at 0.
// //     expect(find.text('0'), findsOneWidget);
// //     expect(find.text('1'), findsNothing);

// //     // Tap the '+' icon and trigger a frame.
// //     await tester.tap(find.byIcon(Icons.add));
// //     await tester.pump();

// //     // Verify that our counter has incremented.
// //     expect(find.text('0'), findsNothing);
// //     expect(find.text('1'), findsOneWidget);
// //   });
// // }


// //CHANGED CODE:

// // widget_test.dart
// // Flutter widget test for SmartHajiri app.
// // This test simply ensures the app loads without crashing.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:smarthajiri/main.dart'; // Make sure this points to the correct main.dart

// void main() {
//   testWidgets('SmartHajiri app loads without crashing', (WidgetTester tester) async {
//     // Build the app and trigger a frame
//     await tester.pumpWidget(const MyApp()); // Remove `const` if constructor isn't const

//     // Check that the MaterialApp widget exists
//     expect(find.byType(MaterialApp), findsOneWidget);

//     // Optionally check for widgets in your home screen
//     // For example, if your login screen has a logo or button:
//     expect(find.byType(Scaffold), findsWidgets); // Home page scaffold exists

//     // If you have text on the screen, you can verify it:
//     // expect(find.text('Login'), findsOneWidget);

//     // You can add more tests here later for buttons, navigation, etc.
//   });
// }



// CHANGED CODE 
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smarthajiri/core/app.dart'; // Import your root widget

void main() {
  testWidgets('SmartHajiri app loads without crashing', (WidgetTester tester) async {
    // Build the app and trigger a frame
    await tester.pumpWidget(const MyApp()); // Use const because constructor is const

    // Verify that MaterialApp exists
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify that at least one Scaffold exists
    expect(find.byType(Scaffold), findsWidgets);

    // Optional: check for specific text or widgets on home screen
    // expect(find.text('Login'), findsOneWidget);
  });
}
