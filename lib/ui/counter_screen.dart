import 'package:bloc_tutorial/bloc/counter/counter_bloc.dart';
import 'package:bloc_tutorial/bloc/counter/counter_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter/counter_state.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder <CounterBloc, CounterState>(
            builder: (context, state){
          return Text(state.counter.toString(), style: TextStyle( fontSize: 80, fontWeight: FontWeight.bold,
              color: Colors.black87, ));}),
    SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementCounter());
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blueGrey, // Outer border color
                    width: 2, // Outer border width
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: Colors.black, // Inner border color
                      width: 1, // Inner border width
                    ),
                  ),
                ),
                child: const Text(
                  'Increment',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              const SizedBox(width: 12),
              OutlinedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(decrementCounter());
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.grey, // Outer border color
                    width: 2, // Outer border width
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: Colors.black, // Inner border color
                      width: 1, // Inner border width
                    ),
                  ),
                ),
                child: const Text(
                  'Decrement',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ));
  }
}
