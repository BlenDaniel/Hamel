// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FullNameValueKey = 'fullName';
const String EmailValueKey = 'email';
const String PhoneNumberValueKey = 'phoneNumber';

mixin $CreateProfileView on StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final FocusNode fullNameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode phoneNumberFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    fullNameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    phoneNumberController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            FullNameValueKey: fullNameController.text,
            EmailValueKey: emailController.text,
            PhoneNumberValueKey: phoneNumberController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    fullNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get fullNameValue => this.formValueMap[FullNameValueKey];
  String? get emailValue => this.formValueMap[EmailValueKey];
  String? get phoneNumberValue => this.formValueMap[PhoneNumberValueKey];

  bool get hasFullName => this.formValueMap.containsKey(FullNameValueKey);
  bool get hasEmail => this.formValueMap.containsKey(EmailValueKey);
  bool get hasPhoneNumber => this.formValueMap.containsKey(PhoneNumberValueKey);
}

extension Methods on FormViewModel {}
