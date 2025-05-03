part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}
final class CounterInitialState extends CounterState {}
final class CounterIncrementState extends CounterState {}

  
