import 'package:flutter/material.dart';
import 'package:startup/screens/StartupDisplay.dart';

const List<String> Domainlist = <String>[
  'E-Tech',
  'Transportation',
  'E-commerce',
  'FinTech',
  'Fashion and Apparel',
  'Logistics',
  'Hospitality',
  'Technology',
  'Aerospace',
  'Video',
  'Gaming',
  'Saas',
  'IoT',
  'Artificial Intelligence',
  'Food and Beverage',
  'Services'
];
const List<String> Locationlist = <String>[
  'Bengaluru',
  'Gurgaon',
  'New Delhi',
  'Mumbai',
  'Chennai',
  'Pune',
  'Noida',
  'Faridabad',
  'San Francisco',
  'San Jose',
  'Amritsar',
  'Kormangala',
  'Tulangan',
  'Menlo Park',
  'Palo Alto',
  'Singapore',
  'New York',
  'Bhopal'
];


class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  static const _steps = [
    Step(
      title: Text('Investment Amount'),
      content: _InvestmentAmt(),
    ),
    Step(
      title: Text('Startup Domain'),
      content: _Domain(),
    ),
    Step(
      title: Text('Location'),
      content: _Location(),
    ),
  ];

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Your Details'),
      ),
      body: Stepper(
        onStepTapped: (step) => setState(() => _currentStep = step),
        onStepContinue: () {
          setState(() {
            if (_currentStep < _steps.length - 1) {
              _currentStep += 1;
            } else {
              _currentStep += 0;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep -= 1;
            } else {
              _currentStep += 0;
            }
          });
        },
        currentStep: _currentStep,
        steps: _steps,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DisplayResults();

            }));
          },
          child: const Text("Submit"),
        )
      ),
    );
  }
}

class _InvestmentAmt extends StatelessWidget {
  const _InvestmentAmt({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Amount in Rs ',
          ),
        )
      ],
    );
  }
}

class _Domain extends StatefulWidget {
  const _Domain({Key? key}) : super(key: key);

  @override
  State<_Domain> createState() => _DomainState();
}

class _DomainState extends State<_Domain> {
  String dropDownValue = Domainlist.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropDownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 3,
        color: Colors.black,
      ),
      onChanged: (String? value) {
        //  This is called when user selects an item
        setState(() {
          dropDownValue = value!;
        });
      },
      items: Domainlist.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class _Location extends StatefulWidget {
  const _Location({Key? key}) : super(key: key);

  @override
  State<_Location> createState() => _LocationState();
}

class _LocationState extends State<_Location> {
  String dropdownValue = Locationlist.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,

      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 3,
        color: Colors.black,
      ),
      onChanged: (String? value) {
        //  This is called when user selects an item
        setState(() {
          dropdownValue = value!;
        });
      },
      items: Locationlist.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


