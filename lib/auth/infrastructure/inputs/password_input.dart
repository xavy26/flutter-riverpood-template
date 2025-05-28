import 'package:formz/formz.dart';

enum PasswordInputError {
  empty,
}

class PasswordInput extends FormzInput<String, PasswordInputError> {
  
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;
    switch (error) {
      case PasswordInputError.empty:
        return 'La contraseña es requerida';
      default:
        return null;
    }
  }

  @override
  PasswordInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return PasswordInputError.empty;
    }
    return null;
  }
  
}