import 'package:flutter_test/flutter_test.dart';
import 'package:pantryos/domain/rules.dart';

void main() {
  test('items advances and then stops at the cap', () {
    expect(nextItems(0), 1);
    expect(capped(12, 12), 12);
    expect(nextItems(-4), 0);
  });
}
