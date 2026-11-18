import 'package:material_ui/material_ui.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({
    super.key,
    required this.onIncrement,
    required this.onReset,
  });

  final VoidCallback onIncrement;
  final VoidCallback onReset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        FloatingActionButton(
          heroTag: 'reset',
          onPressed: onReset,
          tooltip: 'Reset',
          child: const Icon(Icons.refresh),
        ),
        const SizedBox(height: 12),
        FloatingActionButton(
          heroTag: 'increment',
          onPressed: onIncrement,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
