import 'package:basketball_counter/cubit/cubit/counter_cubit.dart';
import 'package:basketball_counter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketballPoitntsCounter());
}

class BasketballPoitntsCounter extends StatelessWidget {
  const BasketballPoitntsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
