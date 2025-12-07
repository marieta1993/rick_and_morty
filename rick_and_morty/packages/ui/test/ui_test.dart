import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ui/ui.dart';

void main() {
  testWidgets('renders AppLoadingIndicator', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AppLoadingIndicator(),
        ),
      ),
    );

    expect(find.byType(AppLoadingIndicator), findsOneWidget);
  });
}
