import 'package:flutter/material.dart';

class FormRadius extends StatelessWidget {
  const FormRadius({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 8, left: 24, right: 24),
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Text(
                    'Peso',
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    '2.000 KG',
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    '1.500 KG',
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 8, left: 24, right: 24),
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [Text('Altura')],
              ),
              Row(
                children: const [Text('1.91 metros')],
              ),
              Row(
                children: const [
                  Text('1.50 metros'),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 8, left: 24, right: 24),
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Text(
                    'Status',
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'B',
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'C',
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Align(
                alignment: Alignment.center,
                child: Icon(Icons.navigate_next_outlined),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
