import 'package:google_generative_ai/google_generative_ai.dart';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
//import 'package:platform/platform.dart';

// Access your API key as an environment variable (see "Set up your API key" above)
class geminiTest{
  final apiKey = Platform.environment['API_KEY'] as String; // originally returns a String?, unsure how to convert that to a String which the api needs


  //final model = GenerativeModel(model: 'MODEL_NAME', apiKey: apiKey);
}