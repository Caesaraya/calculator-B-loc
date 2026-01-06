abstract class CalculatorEvent {
  final double a;
  final double b;

  CalculatorEvent(this.a, this.b);
}

class AddEvent extends CalculatorEvent {
  AddEvent(double a, double b) : super(a, b);
}

class SubtractEvent extends CalculatorEvent {
  SubtractEvent(double a, double b) : super(a, b);
}

class MultiplyEvent extends CalculatorEvent {
  MultiplyEvent(double a, double b) : super(a, b);
}

class DivideEvent extends CalculatorEvent {
  DivideEvent(double a, double b) : super(a, b);
}

class ResetEvent extends CalculatorEvent {
  ResetEvent() : super(0, 0);
}
