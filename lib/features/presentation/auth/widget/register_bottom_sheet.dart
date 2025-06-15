import 'package:flutter/material.dart';
import 'package:sonix/core/common/widgets/custom_button.dart';
import 'package:sonix/core/common/widgets/custom_textfield.dart';
import 'package:sonix/core/common/widgets/svg_widget.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/configs/constants/icons.dart';
import 'package:sonix/core/utils/responsive.dart';

class RegisterBottomSheet extends StatefulWidget {
  const RegisterBottomSheet({super.key});

  @override
  State<RegisterBottomSheet> createState() => _RegisterBottomSheetState();
}

class _RegisterBottomSheetState extends State<RegisterBottomSheet>
    with SingleTickerProviderStateMixin {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscure = true;

  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Sign up',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  left: 24,
                  right: 24,
                  top: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextField(
                      ctr: nameController,
                      hintText: 'Name',
                      prefixWidget: SvgWidget(ic: icPerson),
                      keyboardType: TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 16),

                    CustomTextField(
                      ctr: emailController,
                      hintText: 'Email',
                      prefixWidget: SvgWidget(ic: icEmail),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),

                    CustomTextField(
                      ctr: passwordController,
                      hintText: 'Password',
                      prefixWidget: SvgWidget(ic: icPassword),
                      icon: obscure ? Icons.visibility_off : Icons.visibility,
                      obscureText: obscure,
                      actionRight: () {
                        setState(() => obscure = !obscure);
                      },
                    ),

                    const SizedBox(height: 16),

                    CustomTextField(
                      ctr: confirmPasswordController,
                      hintText: 'Confirm Password',
                      prefixWidget: SvgWidget(ic: icPassword),
                      icon: obscure ? Icons.visibility_off : Icons.visibility,
                      obscureText: obscure,
                      actionRight: () {
                        setState(() => obscure = !obscure);
                      },
                    ),

                    const SizedBox(height: 24),

                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: CustomButton(
                        text: 'Sign up',
                        onPressed: () {},
                        backgroundColor: primary,
                        textColor: background,
                        showBorder: false,
                        fontWeight: FontWeight.w200,
                        sizeText: 20,
                      ),
                    ),

                    const SizedBox(height: 24),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Have an account? "),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Sign in",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Responsive.height(5, context)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
