import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exam/fish_model.dart';

class FishOrder extends StatelessWidget {
  const FishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('fish order'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Fish Name'),
              SizedBox(
                height: 20,
              ),
              High(),
            ],
          ),
        ));
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('SpicyA'),
        Text('Fish Number : ${Provider.of<seaFishModel>(context).num}'),
        Text('Fish Size : ${Provider.of<FishModel>(context).size}'),
        SizedBox(
          height: 20,
        ),
        Midlle(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('it is located at hight'),
        SizedBox(
          height: 20,
        ),
        SpicyA(),
      ],
    );
  }
}

class Midlle extends StatelessWidget {
  const Midlle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('it is located at middle'),
        SizedBox(
          height: 20,
        ),
        SpicyB(),
      ],
    );
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('SpicyB'),
        Text('Fish Number : ${Provider.of<FishModel>(context).num} '),
        Text('Fish Size : ${Provider.of<FishModel>(context).size}'),
        SizedBox(
          height: 20,
        ),
        Low(),
      ],
    );
  }
}

class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('it is located low'),
        SizedBox(
          height: 20,
        ),
        SpicyC(),
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('spicyC'),
        Text('Fish Number : ${Provider.of<FishModel>(context).num} '),
        Text('Fish Size : ${Provider.of<FishModel>(context).size}'),
        ElevatedButton(
          onPressed: () {
            Provider.of<FishModel>(context, listen: false).increse();
          },
          child: Text('upFishModel num'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<seaFishModel>(context, listen: false).increse();
          },
          child: Text('upSeaFishModel num'),
        ),
      ],
    );
  }
}
