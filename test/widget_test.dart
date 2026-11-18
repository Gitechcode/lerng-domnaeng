import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lerng_domnaeng/main.dart';

void main() {
  testWidgets('Lerng Domnaeng basic app load smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: LerngDomnaengApp(),
      ),
    );

    expect(find.byType(LerngDomnaengApp), findsOneWidget);
  });
}
