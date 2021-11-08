abstract class CounterStates {
  String name;
  CounterStates(this.name);
}

class counterInitialStates extends CounterStates{
  counterInitialStates() : super('Initial');
}
class counterPlusStates extends CounterStates{
  int counter;
  counterPlusStates(this.counter) : super('Plus State');
}
class counterMinusStates extends CounterStates{
  int counter;
  counterMinusStates(this.counter) : super('Minus State');
}