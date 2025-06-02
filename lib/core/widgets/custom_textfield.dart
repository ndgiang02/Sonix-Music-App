import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final String? hintText;
  final String? label;
  final String? error;
  final String? initValue;
  final String? icRight;
  final VoidCallback? actionRight;
  final int? maxLength;
  final Function(String value)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final Widget? prefixWidget;
  final bool obscureText;
  final IconData? icon;
  final TextEditingController? ctr;

  const CustomTextField({
    super.key,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.label,
    this.error,
    this.icRight,
    this.actionRight,
    this.maxLength,
    this.initValue,
    this.hintText,
    this.onChanged,
    this.inputFormatters,
    this.textInputAction,
    this.prefixWidget,
    this.obscureText = false,
    this.icon,
    this.ctr,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    widget.ctr?.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              widget.label!,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
        TextFormField(
          controller: widget.ctr,
          obscureText: widget.obscureText,
          style: TextStyle(color: Colors.black),
          textInputAction: widget.textInputAction,
          onChanged:
              (val) => widget.onChanged != null ? widget.onChanged!(val) : null,
          inputFormatters: widget.inputFormatters,
          keyboardType: widget.keyboardType,
          textCapitalization: widget.textCapitalization,
          maxLength: widget.maxLength,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: widget.prefixWidget,
            suffixIcon: Icon(widget.icon),
            counterText: '',
            filled: true,
            fillColor: Colors.grey.shade200,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        if (widget.error != null) ...[
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              widget.error!,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Theme.of(context).colorScheme.error,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
