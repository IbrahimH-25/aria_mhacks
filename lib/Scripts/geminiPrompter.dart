import 'package:google_generative_ai/google_generative_ai.dart';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';


class geminiPromter{

  
  Future<String?> sentancePrompt(String askinger) async {
    const apiKey_ = 'AIzaSyDxDkSPCuPOSUtwac_YrZIWJEB-bqiqw1A';//geminiTest().apiKey;
    if (apiKey_ == null) {
        print('No \$API_KEY environment variable');
        exit(1);
    }
    // For text-only input, use the gemini-pro model
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey_);
    final content = [Content.text('Write 10 Sentances with the word $askinger')];
    final response = await model.generateContent(content);
    print(response.text);
    return response.text;

  }

}