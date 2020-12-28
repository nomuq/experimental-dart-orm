enum ColumnType {
  integer,
  real,
  text,
  blob,
  numeric,
  boolean,
  date,
  datetime,
}

class Column {
  /// Column type. Must be one of the value from the ColumnTypes class.
  final ColumnType type;

  /// Column name in the database.
  final String name;

  /// Column type's length. Used only on some column types.
  /// For example type = "string" and length = "100" means that ORM will create a column with type varchar(100).
  final int length;

  /// Column type's display width. Used only on some column types in MySQL.
  /// For example, INT(4) specifies an INT with a display width of four digits.
  final int width;

  /// Indicates if column's value can be set to NULL.
  final bool nullable;

  /// Indicates if column value is not updated by "save" operation.
  /// It means you'll be able to write this value only when you first time insert the object.
  /// Default value is "false".
  ///
  /// @deprecated Please use the `update` option instead.  Careful, it takes
  /// the opposite value to readonly.
  ///
  final bool readonly;

  /// Indicates if column value is updated by "save" operation.
  /// If false, you'll be able to write this value only when you first time insert the object.
  /// Default value is "true".
  final bool update;

  /// Indicates if column is always selected by QueryBuilder and find operations.
  /// Default value is "true".
  final bool select;

  /// Indicates if column is inserted by default.
  /// Default value is "true".
  final bool insert;

  /// Default database value.
  final dynamic defaultValue;

  /// Indicates if this column is a primary key.
  /// Same can be achieved when @PrimaryColumn decorator is used.
  final bool primary;

  /// Specifies if column's value must be unique or not.
  final bool unique;

  /// Column comment. Not supported by all database types.
  final String comment;

  /// The precision for a decimal (exact numeric) column (applies only for decimal column), which is the maximum
  /// number of digits that are stored for the values.
  final int precision;

  /// The scale for a decimal (exact numeric) column (applies only for decimal column), which represents the number
  /// of digits to the right of the decimal point and must not be greater than precision.
  final int scale;

  /// Defines a column character set.
  /// Not supported by all database types.
  final String charset;

  /// Defines a column collation.
  final String collation;

  // TODO: enum

  const Column({
    this.type,
    this.name,
    this.length,
    this.width,
    this.nullable,
    this.readonly,
    this.update,
    this.select,
    this.insert,
    this.defaultValue,
    this.primary,
    this.unique,
    this.comment,
    this.precision,
    this.scale,
    this.charset,
    this.collation,
  });
}
