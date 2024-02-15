import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ticket_slider_model.dart';
export 'ticket_slider_model.dart';

class TicketSliderWidget extends StatefulWidget {
  const TicketSliderWidget({super.key});

  @override
  State<TicketSliderWidget> createState() => _TicketSliderWidgetState();
}

class _TicketSliderWidgetState extends State<TicketSliderWidget> {
  late TicketSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketSliderModel());

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

    return SliderTheme(
      data: const SliderThemeData(
        showValueIndicator: ShowValueIndicator.always,
      ),
      child: Slider(
        activeColor: FlutterFlowTheme.of(context).primary,
        inactiveColor: FlutterFlowTheme.of(context).alternate,
        min: 0.0,
        max: 10.0,
        value: _model.sliderValue ??= 5.0,
        label: _model.sliderValue.toString(),
        onChanged: (newValue) {
          newValue = double.parse(newValue.toStringAsFixed(2));
          setState(() => _model.sliderValue = newValue);
        },
      ),
    );
  }
}
