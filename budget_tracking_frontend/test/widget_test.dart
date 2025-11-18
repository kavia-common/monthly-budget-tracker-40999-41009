import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:budget_tracking_frontend/main.dart';

void main() {
  testWidgets('App renders with 4 tabs and Dashboard title', (WidgetTester tester) async {
    await tester.pumpWidget(const BudgetApp());
    await tester.pumpAndSettle();

    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.byIcon(Icons.dashboard), findsWidgets);
    expect(find.byIcon(Icons.receipt_long), findsWidgets);
    expect(find.byIcon(Icons.account_balance_wallet), findsWidgets);
    expect(find.byIcon(Icons.settings), findsWidgets);
  });
}
