import 'package:flutter_test/flutter_test.dart';
import 'package:pantryos/main.dart';

void main() {
  testWidgets('demo profile opens PantryOS', (tester) async {
    await tester.pumpWidget(const PantryOSApp());
    await tester.tap(find.text('Open PantryOS'));
    await tester.pumpAndSettle();
    expect(find.text('Shelves'), findsOneWidget);
    expect(find.textContaining('items'), findsWidgets);
  });
}
