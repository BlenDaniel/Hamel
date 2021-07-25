import 'package:flutter/material.dart';
import 'package:hamel/ui/views/create_profile/create_profile_view.form.dart';
import 'package:hamel/ui/views/create_profile/create_profile_viewmodel.dart';
import 'package:hamel/ui/widgets/create_profile_layout.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'fullName'),
  FormTextField(name: 'email'),
  FormTextField(name: 'phoneNumber'),
])
class CreateProfileView extends StatelessWidget with $CreateProfileView {
  CreateProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateProfileViewModel>.reactive(
      onModelReady: (model) {
        model.getName(fullNameController);
        model.getEmail(emailController);
        listenToFormUpdated(model);
      },
      builder: (context, model, child) => Scaffold(
        body: CreateProfileLayout(
          busy: model.isBusy,
          onMainButtonTapped: model.saveData,
          onBackPressed: model.navigateBack,
          validationMessage: model.validationMessage,
          title: 'Hi,',
          subtitle:
              'Thank you for choosing Hamel! Please completed the next form to finish up setting your account.',
          mainButtonTitle: 'Create Profile',
          form: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Full Name'),
                controller: fullNameController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
                controller: emailController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                controller: phoneNumberController,
              ),
            ],
          ),
          showTermsText: true,
        ),
      ),
      viewModelBuilder: () => CreateProfileViewModel(),
    );
  }
}
