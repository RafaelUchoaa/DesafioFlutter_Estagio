import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_estagio/main.dart'; // Substitua pelo caminho correto

void main() {
  testWidgets('Posts list loads and displays posts',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Aguarde o carregamento da lista.
    await tester.pumpAndSettle();

    // Verifique se a lista de posts está presente.
    expect(find.byType(ListView), findsOneWidget);

    // Verifique se um post específico está presente. (exemplo com título)
    expect(find.text('title'),
        findsOneWidget); // Substitua 'title' pelo título real do post
  });
}
