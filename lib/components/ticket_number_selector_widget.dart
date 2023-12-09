import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ticket_number_selector_model.dart';
export 'ticket_number_selector_model.dart';

class TicketNumberSelectorWidget extends StatefulWidget {
  const TicketNumberSelectorWidget({super.key});

  @override
  _TicketNumberSelectorWidgetState createState() =>
      _TicketNumberSelectorWidgetState();
}

class _TicketNumberSelectorWidgetState
    extends State<TicketNumberSelectorWidget> {
  late TicketNumberSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketNumberSelectorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Slider(
      activeColor: FlutterFlowTheme.of(context).primary,
      inactiveColor: FlutterFlowTheme.of(context).alternate,
      min: 0.0,
      max: 5.0,
      value: _model.sliderValue ??= 0.0,
      onChanged: (newValue) {
        newValue = double.parse(newValue.toStringAsFixed(0));
        setState(() => _model.sliderValue = newValue);
      },
    );
  }
}
