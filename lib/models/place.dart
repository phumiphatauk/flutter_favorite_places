import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  final String id;
  final String title;
  final String imageUrl;
  final String location;

  Place({required this.title, required this.imageUrl, required this.location})
    : id = uuid.v4();
}
