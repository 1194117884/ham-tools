// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ham_tools/main.dart';

void main() {
  testWidgets('Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.byIcon(Icons.home), findsOneWidget);

    await tester.tap(find.byIcon(Icons.business));
    await tester.pump();

    expect(find.text('A类'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.person));
    await tester.pump();

    expect(find.text('UserProfiles'), findsWidgets);

    await tester.tap(find.byIcon(Icons.home));
    await tester.pump();

    expect(find.text('Home'), findsOneWidget);
  });
}
