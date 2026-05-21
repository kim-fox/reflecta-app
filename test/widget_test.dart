import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:reflecta_tmp/main.dart';

void main() {
  testWidgets('Verifica se a tela inicial do Reflecta carrega corretamente', (WidgetTester tester) async {
    // Constrói o aplicativo e renderiza o primeiro frame.
    await tester.pumpWidget(const ReflectaApp());

    // Verifica se os textos principais da interface estão presentes na tela.
    expect(find.text('Reflecta'), findsOneWidget);
    expect(find.text('Sua jornada interior'), findsOneWidget);
    expect(find.text('NOVO CONSELHO'), findsOneWidget);
  });
}
