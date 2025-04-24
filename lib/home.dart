import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s1_hydrated/counter_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder:
                  (context, state) =>
                      Text('$state', style: TextStyle(fontSize: 30)),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
