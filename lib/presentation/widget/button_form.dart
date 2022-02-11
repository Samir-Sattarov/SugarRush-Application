import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widget/sheet/verification_code.dart';

class FormButtonWidget extends StatefulWidget {
  final double? weight;
  final double height;
  final Color background;
  final Color textColor;
  final Widget text;
  final bool mainButton;
  final Function() onPressed;
  const FormButtonWidget({
    Key? key,
    required this.formKey,
    required this.text,
    required this.weight,
    required this.height,
    required this.background,
    required this.textColor,
    required this.onPressed,
    this.onSuccess,
    this.mainButton = false,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final Function()? onSuccess;

  @override
  _FormButtonWidgetState createState() => _FormButtonWidgetState();
}

class _FormButtonWidgetState extends State<FormButtonWidget> {
  bool loading = false;

  get background => widget.background;

  get textColor => widget.textColor;

  get weight => widget.weight;

  get height => widget.height;

  get text => widget.text;

  get mainButton => widget.mainButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !loading ? _pressed : null,
      style: ElevatedButton.styleFrom(
        onPrimary: textColor,
        primary: background,
        shadowColor: Colors.white,
        elevation: 0.0,
        side: const BorderSide(width: 1, color: Color(0xffF19D9D)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        minimumSize: Size(
          weight ?? MediaQuery.of(context).size.width,
          height,
        ),
      ),
      child: widget.text,
    );
  }

  void _pressed() async {
    setState(() {
      loading = true;
    });

    if (widget.formKey.currentState!.validate() && mainButton == true) {
      VerificationCodeModalBottomSheetWidget(context);
    }

    setState(() {
      loading = false;
    });
  }
}
