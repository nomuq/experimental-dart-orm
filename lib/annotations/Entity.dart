// import 'package:meta/meta.dart';

import 'package:experimental_dart_orm/find-options/OrderByCondition.dart';

class Entity {
  /// Table name.
  /// If not specified then naming strategy will generate table name from entity name.
  final String name;

  /// Specifies a default order by used for queries from this table when no explicit order by is specified.
  final OrderByCondition orderBy;

  /// Table's database engine type (like "InnoDB", "MyISAM", etc).
  /// It is used only during table creation.
  /// If you update this value and table is already created, it will not change table's engine type.
  /// Note that not all databases support this option.
  final String engine;

  /// Database name. Used in Mysql and Sql Server.
  final String database;

  /// Schema name. Used in Postgres and Sql Server.
  final String schema;

  /// Indicates if schema synchronization is enabled or disabled for this entity.
  /// If it will be set to false then schema sync will and migrations ignore this entity.
  /// By default schema synchronization is enabled for all entities.
  final bool synchronize;

  /// If set to 'true' this option disables Sqlite's default behaviour of secretly creating
  /// an integer primary key column named 'rowid' on table creation.
  /// @see https://www.sqlite.org/withoutrowid.html.
  final bool withoutRowid;

  const Entity({
    this.name,
    this.orderBy,
    this.engine,
    this.database,
    this.schema,
    this.synchronize,
    this.withoutRowid,
  });
}
