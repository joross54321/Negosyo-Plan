import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:negosyoplan/admin/admin_shell.dart';

void main() {
  testWidgets('passport dashboard fits a narrow phone screen', (tester) async {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: AdminShell()));
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();
    await tester.tap(find.text('MSME Passports').first);
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
  });
}
