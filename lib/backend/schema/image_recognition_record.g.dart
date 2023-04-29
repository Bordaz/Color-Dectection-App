// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_recognition_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageRecognitionRecord> _$imageRecognitionRecordSerializer =
    new _$ImageRecognitionRecordSerializer();

class _$ImageRecognitionRecordSerializer
    implements StructuredSerializer<ImageRecognitionRecord> {
  @override
  final Iterable<Type> types = const [
    ImageRecognitionRecord,
    _$ImageRecognitionRecord
  ];
  @override
  final String wireName = 'ImageRecognitionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ImageRecognitionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ImageRecognitionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageRecognitionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageRecognitionRecord extends ImageRecognitionRecord {
  @override
  final String? imageUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImageRecognitionRecord(
          [void Function(ImageRecognitionRecordBuilder)? updates]) =>
      (new ImageRecognitionRecordBuilder()..update(updates))._build();

  _$ImageRecognitionRecord._({this.imageUrl, this.ffRef}) : super._();

  @override
  ImageRecognitionRecord rebuild(
          void Function(ImageRecognitionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageRecognitionRecordBuilder toBuilder() =>
      new ImageRecognitionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageRecognitionRecord &&
        imageUrl == other.imageUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageRecognitionRecord')
          ..add('imageUrl', imageUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImageRecognitionRecordBuilder
    implements Builder<ImageRecognitionRecord, ImageRecognitionRecordBuilder> {
  _$ImageRecognitionRecord? _$v;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImageRecognitionRecordBuilder() {
    ImageRecognitionRecord._initializeBuilder(this);
  }

  ImageRecognitionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageUrl = $v.imageUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageRecognitionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageRecognitionRecord;
  }

  @override
  void update(void Function(ImageRecognitionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageRecognitionRecord build() => _build();

  _$ImageRecognitionRecord _build() {
    final _$result =
        _$v ?? new _$ImageRecognitionRecord._(imageUrl: imageUrl, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
