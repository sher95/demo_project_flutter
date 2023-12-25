import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:counter/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end to end test', () {
    testWidgets('Verify Increment and Decrement Icons',
            (WidgetTester tester) async {
          app.main();
          await tester.pumpAndSettle();
          // Verify Increment Icon
          expect(find.byIcon(Icons.add), findsOneWidget);
          // Verify Decrement Icon
          expect(find.byIcon(Icons.remove), findsOneWidget);
        });

    testWidgets('Retrieve and Increment Counter',
            (WidgetTester tester) async {
          app.main();
          await tester.pumpAndSettle();
          // Increment the counter by dragging
          await tester.drag(find.byKey(const Key('dragButton')), Offset(100.0, 0.0));
          await tester.pumpAndSettle();
          // Verify that the counter value has increased
          expect(find.text('1'), findsOneWidget);
        });

    testWidgets('Retrieve and Decrement Counter',
            (WidgetTester tester) async {
          app.main();
          await tester.pumpAndSettle();
          // Decrement the counter by dragging
          await tester.drag(find.byKey(const Key('dragButton')), Offset(-100.0, 0.0));
          await tester.pumpAndSettle();
          // Verify that the counter value has decreased
          expect(find.text('-1'), findsOneWidget);
        });
  });
}
