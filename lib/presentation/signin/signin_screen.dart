import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive/hive.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../Domain/user/user.dart';
import '../core/components/app_button.dart';
import '../core/theme/theme.dart';
import 'widgets/signin_textfield_widget.dart';
import 'widgets/signin_top_widget.dart';

class SigninScreen extends HookWidget {
  SigninScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    final bool isFalse;
    if (appTheme == AppTheme.light) {
      isFalse = false;
    } else {
      isFalse = true;
    }

    final switcher = useState(isFalse);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: heightSize,
        width: widthSize,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SigninTopWidget(
              heightSize: heightSize,
              widthSize: widthSize,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "All we need is\nyour name.",
                        style: theme?.textTheme.headline4,
                      ),
                      SizedBox(height: heightSize * 0.03),
                      SigninTextfieldWidget(
                        onSaved: (v) async {
                          final userBox = await Hive.openBox<User>('user');
                          userBox.put(0, User(name: v));

                          final appThemeBox =
                              await Hive.openBox<AppTheme>('appTheme');
                          appThemeBox.put(0, appTheme!);
                        },
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Sorry, cannot be empty.';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: heightSize * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            "Prefer Dark Mode?",
                            style: theme?.textTheme.bodyText2,
                          ),
                          CupertinoSwitch(
                            value: switcher.value,
                            onChanged: (v) {
                              switcher.value = v;
                              BlocProvider.of<ThemeBloc>(context).add(
                                ThemeEvent.changeTheme(
                                  v == true ? AppTheme.dark : AppTheme.light,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: heightSize * 0.02),
                      AppButton(
                        name: 'Finish',
                        onPressed: () {
                          final form = formKey.currentState;

                          if (form!.validate()) {
                            form.save();
                          }
                        },
                        widthSize: widthSize,
                      ),
                      const Spacer(),
                      AutoSizeText(
                        "All your data is stored securely on your device, we do not collect any data.",
                        style: theme?.textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
