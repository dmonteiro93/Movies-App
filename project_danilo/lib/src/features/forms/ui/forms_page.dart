import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/di/injection.dart';
import 'package:flutter_application_1/src/features/forms/controllers/forms_controller.dart';
import 'package:signals/signals_flutter.dart';

class FormsPage extends StatelessWidget {
  const FormsPage({super.key});
  static final _controllerUser = TextEditingController(text: '');
  static final _controllerEmail = TextEditingController(text: '');
  static final _controllerAdress = TextEditingController(text: '');
  static final _controller = getIt<FormsController>();

  @override
  Widget build(BuildContext context) {
    _controller.showInformations();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
        backgroundColor: Colors.purple[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: _controllerUser,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextField(
              controller: _controllerEmail,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextField(
              controller: _controllerAdress,
              decoration: InputDecoration(
                labelText: 'Adress',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () => _controller.clearInformations(),
                  child: const Text('Clear'),
                ),
                ElevatedButton(
                  onPressed: () {
                    var user = _controllerUser.text;
                    var email = _controllerEmail.text;
                    var adress = _controllerAdress.text;

                    _controller.updateInformations(user, email, adress);
                  },
                  child: const Text('Confirm'),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const Text('Data'),
                  Row(
                    children: [
                      const Text('Name: '),
                      SignalBuilder(
                        builder: (context) => Text(
                          _controller.user?.name ?? '',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('E-mail: '),
                      SignalBuilder(
                        builder: (context) => Text(
                          _controller.user?.email ?? '',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Adress: '),
                      SignalBuilder(
                        builder: (context) => Text(
                          _controller.user?.adress ?? '',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
