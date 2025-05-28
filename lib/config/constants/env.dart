import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  
  static loadEnvs() async {
    await dotenv.load(
      fileName: '.env',
    );
  }

  static String apiUrl = dotenv.env['API_URL'] ?? 'htpp://localhost:3000';
  static String spaceUrl = dotenv.env['SPACE_URL'] ?? 'https://space.piatti.app';
  
}