import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focus_clock/main.dart';

void main() {
  testWidgets('FocusClockApp creates successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FocusClockApp());

    // Verify that the app title is correct
    expect(find.text('Focus Clock'), findsOneWidget);
    
    // Verify that settings button exists
    expect(find.byIcon(Icons.settings), findsOneWidget);
  });

  testWidgets('Settings screen navigation works', (WidgetTester tester) async {
    await tester.pumpWidget(const FocusClockApp());

    // Tap the settings icon
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pumpAndSettle();

    // Verify we're on the settings screen
    expect(find.text('Settings'), findsWidgets);
    expect(find.text('Clock Preferences'), findsOneWidget);
  });
}
