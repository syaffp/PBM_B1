import 'package:flutter/material.dart';

class MemberV1 extends StatefulWidget {
  const MemberV1({Key? key}) : super(key: key);

  @override
  State<MemberV1> createState() => _MemberV1State();
}

class _MemberV1State extends State<MemberV1> {
  @override
  Widget build(BuildContext context) {
    List<Step> getSteps() => [
          Step(title: const Text('account'), content: Container()),
          Step(title: const Text('account'), content: Container()),
          Step(title: const Text('account'), content: Container()),
        ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.0,
        backgroundColor: const Color.fromRGBO(76, 219, 196, 1),
        title: const Text(
          "Member Verification",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        steps: getSteps(),
      ),
    );
  }
}
