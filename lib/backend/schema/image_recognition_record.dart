import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'image_recognition_record.g.dart';

abstract class ImageRecognitionRecord
    implements Built<ImageRecognitionRecord, ImageRecognitionRecordBuilder> {
  static Serializer<ImageRecognitionRecord> get serializer =>
      _$imageRecognitionRecordSerializer;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImageRecognitionRecordBuilder builder) =>
      builder..imageUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('image_recognition');

  static Stream<ImageRecognitionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImageRecognitionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImageRecognitionRecord._();
  factory ImageRecognitionRecord(
          [void Function(ImageRecognitionRecordBuilder) updates]) =
      _$ImageRecognitionRecord;

  static ImageRecognitionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImageRecognitionRecordData({
  String? imageUrl,
}) {
  final firestoreData = serializers.toFirestore(
    ImageRecognitionRecord.serializer,
    ImageRecognitionRecord(
      (i) => i..imageUrl = imageUrl,
    ),
  );

  return firestoreData;
}
