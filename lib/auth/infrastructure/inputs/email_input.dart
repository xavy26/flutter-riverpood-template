import 'package:formz/formz.dart';

enum EmailInputError {
  empty,
  invalid,
  alreadyExists,
  notFound,
  unknown,
  invalidFormat,
  invalidDomain,
  invalidLength,
  invalidCharacters,
}

class EmailInput extends FormzInput<String, EmailInputError> {
  
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;
    switch (error) {
      case EmailInputError.empty:
        return 'El email es requerido';
      case EmailInputError.invalid:
        return 'El email es inválido';
      case EmailInputError.alreadyExists:
        return 'El email ya está en uso';
      case EmailInputError.notFound:
        return 'El email no fue encontrado';
      case EmailInputError.unknown:
        return 'Error desconocido';
      case EmailInputError.invalidFormat:
        return 'El formato del email es inválido';
      case EmailInputError.invalidDomain:
        return 'El dominio del email es inválido';
      case EmailInputError.invalidLength:
        return 'El email debe tener entre 5 y 254 caracteres';
      case EmailInputError.invalidCharacters:
        return 'El email contiene caracteres inválidos';
      default:
        return null;
    }
  }

  @override
  EmailInputError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return EmailInputError.empty;
    }
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) {
      return EmailInputError.invalidFormat;
    }
    if (value.length < 5 || value.length > 254) {
      return EmailInputError.invalidLength;
    }
    if (value.contains(' ')) {
      return EmailInputError.invalidCharacters;
    }
    // Additional checks for domain or specific email validation can be added here
    return null;
  }
  
}