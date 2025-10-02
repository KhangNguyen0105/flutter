import 'package:flutter/widgets.dart';

class CounterProvider extends InheritedWidget {
  final int count;
  final String? lastUpdated;
  final VoidCallback onIncrement;

  const CounterProvider({
    super.key,
    required super.child,
    required this.count,
    required this.lastUpdated,
    required this.onIncrement,
  });

  static CounterProvider of(BuildContext context) {
    final CounterProvider? result = context
        .dependOnInheritedWidgetOfExactType<CounterProvider>();
    assert(result != null, 'No CounterProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return count != oldWidget.count || lastUpdated != oldWidget.lastUpdated;
  }
}
