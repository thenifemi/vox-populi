import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../Domain/user/user.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/components/app_button.dart';
import '../core/constants/image_constants.dart';
import 'widgets/choose_avatar_dialog_widget.dart';
import 'widgets/edit_profile_textfield_widget.dart';
import 'widgets/edit_profile_top_widget.dart';

class EditProfileScreen extends HookWidget {
  EditProfileScreen({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final User profile;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final avatar = useState(profile.avatar ?? man1);

    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return AppAnnotatedWidget(
      appTheme: appTheme,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: heightSize,
          width: widthSize,
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: heightSize * 0.03),
                EditProfileTopWidget(
                  theme: theme,
                  appTheme: appTheme,
                ),
                SizedBox(height: heightSize * 0.06),
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Hero(
                      tag: 'avatar',
                      child: Image.asset(
                        avatar.value,
                        height: heightSize * 0.18,
                      ),
                    ),
                    SizedBox(
                      height: heightSize * 0.03,
                      child: AppButton(
                        name: 'Edit',
                        onPressed: () async {
                          await showChooseAvatarDialog(context)
                              .then((value) => avatar.value = value);
                        },
                        widthSize: null,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: heightSize * 0.03),
                EditProfileTextfieldWidget(
                  initialValue: profile.name,
                  onSaved: (v) {},
                  validator: (v) {},
                ),
                SizedBox(height: heightSize * 0.02),
                AppButton(
                  name: 'Save',
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
    );
  }
}
