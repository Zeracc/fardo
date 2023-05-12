import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScanForm extends StatelessWidget {
  const ScanForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formkKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Form(
          key: formkKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      formkKey.currentState?.validate();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Escanear código de barras'),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.document_scanner_outlined),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 8, left: 8, bottom: 8),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Sequencial',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira o número sequencial';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Número lote/fardo',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira o número do lote/fardo';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  right: 8,
                  left: 8,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Pilha',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira a pilha';
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
