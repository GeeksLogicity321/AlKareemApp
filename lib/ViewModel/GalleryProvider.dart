import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:realestate/Models/GalleryModel.dart';
import '../Utills/SnackBars.dart';
import '../constants/ApiConstants.dart';

class GalleryProvider extends ChangeNotifier {
  List<GalleryModel> _stories = [];
  List<GalleryModel> get stories => _stories;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchGallery(BuildContext context) async {
    if (_stories.isEmpty) {
      _isLoading = true;
      notifyListeners();
      try {
        final Uri url = Uri.parse(ApiConstants.gallery);
        final response = await http.get(
          url,
        );

        if (response.statusCode == 200) {
          final Map<String, dynamic> jsonResponse = json.decode(response.body);

          for (final i in jsonResponse['data']) {
            _stories.add(GalleryModel.fromJson(i));
          }

          _isLoading = false;
          notifyListeners();
        } else {
          _isLoading = false;
          notifyListeners();
          errorSnackbar(context,
              'Error fetching catagory status Coded: ${response.statusCode}');
        }
      } catch (e) {
        _isLoading = false;
        notifyListeners();
        errorSnackbar(context, 'Error fetching catagory' + e.toString());
      }
    }
  }
}
