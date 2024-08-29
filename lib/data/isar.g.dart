// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRestaurantDaoCollection on Isar {
  IsarCollection<RestaurantDao> get restaurantDaos => this.collection();
}

const RestaurantDaoSchema = CollectionSchema(
  name: r'RestaurantDao',
  id: -5585650936202905856,
  properties: {
    r'data': PropertySchema(
      id: 0,
      name: r'data',
      type: IsarType.string,
    ),
    r'yelpId': PropertySchema(
      id: 1,
      name: r'yelpId',
      type: IsarType.string,
    )
  },
  estimateSize: _restaurantDaoEstimateSize,
  serialize: _restaurantDaoSerialize,
  deserialize: _restaurantDaoDeserialize,
  deserializeProp: _restaurantDaoDeserializeProp,
  idName: r'id',
  indexes: {
    r'yelpId': IndexSchema(
      id: 4340932681602663000,
      name: r'yelpId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'yelpId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _restaurantDaoGetId,
  getLinks: _restaurantDaoGetLinks,
  attach: _restaurantDaoAttach,
  version: '3.1.0+1',
);

int _restaurantDaoEstimateSize(
  RestaurantDao object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.data.length * 3;
  bytesCount += 3 + object.yelpId.length * 3;
  return bytesCount;
}

void _restaurantDaoSerialize(
  RestaurantDao object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.data);
  writer.writeString(offsets[1], object.yelpId);
}

RestaurantDao _restaurantDaoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RestaurantDao(
    data: reader.readString(offsets[0]),
    yelpId: reader.readString(offsets[1]),
  );
  object.id = id;
  return object;
}

P _restaurantDaoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _restaurantDaoGetId(RestaurantDao object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _restaurantDaoGetLinks(RestaurantDao object) {
  return [];
}

void _restaurantDaoAttach(
    IsarCollection<dynamic> col, Id id, RestaurantDao object) {
  object.id = id;
}

extension RestaurantDaoQueryWhereSort
    on QueryBuilder<RestaurantDao, RestaurantDao, QWhere> {
  QueryBuilder<RestaurantDao, RestaurantDao, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RestaurantDaoQueryWhere
    on QueryBuilder<RestaurantDao, RestaurantDao, QWhereClause> {
  QueryBuilder<RestaurantDao, RestaurantDao, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterWhereClause> yelpIdEqualTo(
      String yelpId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'yelpId',
        value: [yelpId],
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterWhereClause>
      yelpIdNotEqualTo(String yelpId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yelpId',
              lower: [],
              upper: [yelpId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yelpId',
              lower: [yelpId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yelpId',
              lower: [yelpId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yelpId',
              lower: [],
              upper: [yelpId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension RestaurantDaoQueryFilter
    on QueryBuilder<RestaurantDao, RestaurantDao, QFilterCondition> {
  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition> dataEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      dataGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      dataLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition> dataBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'data',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      dataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      dataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      dataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition> dataMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'data',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'data',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yelpId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'yelpId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'yelpId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'yelpId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'yelpId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'yelpId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'yelpId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'yelpId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yelpId',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterFilterCondition>
      yelpIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'yelpId',
        value: '',
      ));
    });
  }
}

extension RestaurantDaoQueryObject
    on QueryBuilder<RestaurantDao, RestaurantDao, QFilterCondition> {}

extension RestaurantDaoQueryLinks
    on QueryBuilder<RestaurantDao, RestaurantDao, QFilterCondition> {}

extension RestaurantDaoQuerySortBy
    on QueryBuilder<RestaurantDao, RestaurantDao, QSortBy> {
  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> sortByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> sortByDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> sortByYelpId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yelpId', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> sortByYelpIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yelpId', Sort.desc);
    });
  }
}

extension RestaurantDaoQuerySortThenBy
    on QueryBuilder<RestaurantDao, RestaurantDao, QSortThenBy> {
  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> thenByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> thenByDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'data', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> thenByYelpId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yelpId', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QAfterSortBy> thenByYelpIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yelpId', Sort.desc);
    });
  }
}

extension RestaurantDaoQueryWhereDistinct
    on QueryBuilder<RestaurantDao, RestaurantDao, QDistinct> {
  QueryBuilder<RestaurantDao, RestaurantDao, QDistinct> distinctByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'data', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RestaurantDao, RestaurantDao, QDistinct> distinctByYelpId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'yelpId', caseSensitive: caseSensitive);
    });
  }
}

extension RestaurantDaoQueryProperty
    on QueryBuilder<RestaurantDao, RestaurantDao, QQueryProperty> {
  QueryBuilder<RestaurantDao, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RestaurantDao, String, QQueryOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'data');
    });
  }

  QueryBuilder<RestaurantDao, String, QQueryOperations> yelpIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'yelpId');
    });
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isarServiceHash() => r'e23e1299062c2495367932358c77e1778b24f600';

/// See also [IsarService].
@ProviderFor(IsarService)
final isarServiceProvider = AsyncNotifierProvider<IsarService, void>.internal(
  IsarService.new,
  name: r'isarServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isarServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsarService = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
