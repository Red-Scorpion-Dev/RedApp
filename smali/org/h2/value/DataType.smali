.class public Lorg/h2/value/DataType;
.super Ljava/lang/Object;
.source "DataType.java"


# static fields
.field public static final GEOMETRY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final GEOMETRY_CLASS_NAME:Ljava/lang/String; = "com.vividsolutions.jts.geom.Geometry"

.field private static final TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPES_BY_NAME:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/value/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/DataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_RESULT_SET:I = -0xa


# instance fields
.field public autoIncrement:Z

.field public caseSensitive:Z

.field public decimal:Z

.field public defaultDisplaySize:I

.field public defaultPrecision:J

.field public defaultScale:I

.field public hidden:Z

.field public jdbc:Ljava/lang/String;

.field public maxPrecision:J

.field public maxScale:I

.field public memory:I

.field public minScale:I

.field public name:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public sqlType:I

.field public sqlTypePos:I

.field public suffix:Ljava/lang/String;

.field public supportsPrecision:Z

.field public supportsScale:Z

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 66
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/h2/value/DataType;->TYPES:Ljava/util/ArrayList;

    .line 67
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/value/DataType;->TYPES_BY_NAME:Ljava/util/HashMap;

    .line 68
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.vividsolutions.jts.geom.Geometry"

    .line 179
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 184
    :goto_0
    sput-object v1, Lorg/h2/value/DataType;->GEOMETRY_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    .line 189
    sget-object v3, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Null"

    .line 191
    new-instance v6, Lorg/h2/value/DataType;

    invoke-direct {v6}, Lorg/h2/value/DataType;-><init>()V

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string v2, "NULL"

    aput-object v2, v7, v1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v9, 0xd

    const/16 v10, 0xc

    const-string v11, "String"

    .line 197
    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v12

    const/4 v2, 0x7

    new-array v13, v2, [Ljava/lang/String;

    const-string v3, "VARCHAR"

    aput-object v3, v13, v1

    const-string v3, "VARCHAR2"

    aput-object v3, v13, v0

    const-string v3, "NVARCHAR"

    const/4 v4, 0x2

    aput-object v3, v13, v4

    const-string v3, "NVARCHAR2"

    const/4 v5, 0x3

    aput-object v3, v13, v5

    const-string v3, "VARCHAR_CASESENSITIVE"

    const/4 v6, 0x4

    aput-object v3, v13, v6

    const-string v3, "CHARACTER VARYING"

    const/4 v7, 0x5

    aput-object v3, v13, v7

    const-string v3, "TID"

    const/4 v8, 0x6

    aput-object v3, v13, v8

    const/16 v14, 0x30

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v15, 0xd

    const/16 v16, -0x1

    const-string v17, "String"

    .line 204
    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v3, v4, [Ljava/lang/String;

    const-string v9, "LONGVARCHAR"

    aput-object v9, v3, v1

    const-string v9, "LONGNVARCHAR"

    aput-object v9, v3, v0

    const/16 v20, 0x30

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v9, 0x15

    const/4 v10, 0x1

    const-string v11, "String"

    .line 209
    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/String;

    const-string v3, "CHAR"

    aput-object v3, v13, v1

    const-string v3, "CHARACTER"

    aput-object v3, v13, v0

    const-string v3, "NCHAR"

    aput-object v3, v13, v4

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v15, 0xe

    const/16 v16, 0xc

    const-string v17, "String"

    .line 214
    invoke-static {v1}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v3, v0, [Ljava/lang/String;

    const-string v9, "VARCHAR_IGNORECASE"

    aput-object v9, v3, v1

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v9, 0x1

    const/16 v10, 0x10

    const-string v11, "Boolean"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 219
    invoke-static/range {v12 .. v17}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/String;

    const-string v3, "BOOLEAN"

    aput-object v3, v13, v1

    const-string v3, "BIT"

    aput-object v3, v13, v0

    const-string v3, "BOOL"

    aput-object v3, v13, v4

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v15, 0x2

    const/16 v16, -0x6

    const-string v17, "Byte"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 226
    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v3, v0, [Ljava/lang/String;

    const-string v9, "TINYINT"

    aput-object v9, v3, v1

    const/16 v20, 0x1

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v9, 0x3

    const/4 v10, 0x5

    const-string v11, "Short"

    const/4 v12, 0x5

    const/4 v13, 0x5

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 233
    invoke-static/range {v12 .. v17}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/String;

    const-string v3, "SMALLINT"

    aput-object v3, v13, v1

    const-string v3, "YEAR"

    aput-object v3, v13, v0

    const-string v3, "INT2"

    aput-object v3, v13, v4

    const/16 v14, 0x14

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v15, 0x4

    const/16 v16, 0x4

    const-string v17, "Int"

    const/16 v9, 0xa

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 240
    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v3, v7, [Ljava/lang/String;

    const-string v9, "INTEGER"

    aput-object v9, v3, v1

    const-string v9, "INT"

    aput-object v9, v3, v0

    const-string v9, "MEDIUMINT"

    aput-object v9, v3, v4

    const-string v9, "INT4"

    aput-object v9, v3, v5

    const-string v9, "SIGNED"

    aput-object v9, v3, v6

    const/16 v20, 0x14

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v9, 0x4

    const/4 v10, 0x4

    const-string v11, "Int"

    const/16 v12, 0xa

    const/16 v13, 0xa

    const/16 v15, 0xb

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 247
    invoke-static/range {v12 .. v17}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v0, [Ljava/lang/String;

    const-string v3, "SERIAL"

    aput-object v3, v13, v1

    const/16 v14, 0x14

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v15, 0x5

    const/16 v16, -0x5

    const-string v17, "Long"

    const/16 v9, 0x13

    const/16 v10, 0x13

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 253
    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v3, v5, [Ljava/lang/String;

    const-string v9, "BIGINT"

    aput-object v9, v3, v1

    const-string v9, "INT8"

    aput-object v9, v3, v0

    const-string v9, "LONG"

    aput-object v9, v3, v4

    const/16 v20, 0x18

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v9, 0x5

    const/4 v10, -0x5

    const-string v11, "Long"

    const/16 v12, 0x13

    const/16 v13, 0x13

    const/16 v15, 0x14

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 259
    invoke-static/range {v12 .. v17}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/String;

    const-string v3, "IDENTITY"

    aput-object v3, v13, v1

    const-string v3, "BIGSERIAL"

    aput-object v3, v13, v0

    const/16 v14, 0x18

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v15, 0x6

    const/16 v16, 0x3

    const-string v17, "BigDecimal"

    const v9, 0x7fffffff

    const v10, 0xffff

    const/16 v11, 0x7fff

    const v12, 0xffff

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 265
    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v3, v4, [Ljava/lang/String;

    const-string v9, "DECIMAL"

    aput-object v9, v3, v1

    const-string v9, "DEC"

    aput-object v9, v3, v0

    const/16 v20, 0x40

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v9, 0x6

    const/4 v10, 0x2

    const-string v11, "BigDecimal"

    const v12, 0x7fffffff

    const v13, 0xffff

    const/16 v14, 0x7fff

    const v15, 0xffff

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 274
    invoke-static/range {v12 .. v17}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/String;

    const-string v3, "NUMERIC"

    aput-object v3, v13, v1

    const-string v3, "NUMBER"

    aput-object v3, v13, v0

    const/16 v14, 0x40

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v15, 0x8

    const/16 v16, 0x7

    const-string v17, "Float"

    const/4 v9, 0x7

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/16 v12, 0xf

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 282
    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v3, v4, [Ljava/lang/String;

    const-string v9, "REAL"

    aput-object v9, v3, v1

    const-string v9, "FLOAT4"

    aput-object v9, v3, v0

    const/16 v20, 0x18

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v9, 0x7

    const/16 v10, 0x8

    const-string v11, "Double"

    const/16 v12, 0x11

    const/16 v13, 0x11

    const/16 v15, 0x18

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 288
    invoke-static/range {v12 .. v17}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/String;

    const-string v3, "DOUBLE"

    aput-object v3, v13, v1

    const-string v3, "DOUBLE PRECISION"

    aput-object v3, v13, v0

    const/16 v14, 0x18

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v15, 0x7

    const/16 v16, 0x6

    const-string v17, "Double"

    const/16 v9, 0x11

    const/16 v10, 0x11

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 294
    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v3, v4, [Ljava/lang/String;

    const-string v9, "FLOAT"

    aput-object v9, v3, v1

    const-string v9, "FLOAT8"

    aput-object v9, v3, v0

    move-object/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v9, 0x9

    const/16 v10, 0x5c

    const-string v11, "Time"

    const-string v3, "TIME"

    const/16 v15, 0x8

    .line 300
    invoke-static {v8, v3, v1, v15}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v0, [Ljava/lang/String;

    const-string v3, "TIME"

    aput-object v3, v13, v1

    const/16 v14, 0x38

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v16, 0xa

    const/16 v17, 0x5b

    const-string v18, "Date"

    const-string v3, "DATE"

    const/16 v9, 0xa

    .line 306
    invoke-static {v15, v3, v1, v9}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v19

    new-array v3, v0, [Ljava/lang/String;

    const-string v10, "DATE"

    aput-object v10, v3, v1

    const/16 v21, 0x38

    move-object/from16 v20, v3

    invoke-static/range {v16 .. v21}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v10, 0xb

    const/16 v11, 0x5d

    const-string v12, "Timestamp"

    const-string v3, "TIMESTAMP"

    const/16 v15, 0x17

    .line 312
    invoke-static {v15, v3, v9, v15}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v13

    new-array v14, v6, [Ljava/lang/String;

    const-string v3, "TIMESTAMP"

    aput-object v3, v14, v1

    const-string v3, "DATETIME"

    aput-object v3, v14, v0

    const-string v3, "DATETIME2"

    aput-object v3, v14, v4

    const-string v3, "SMALLDATETIME"

    aput-object v3, v14, v5

    const/16 v3, 0x38

    const/16 v2, 0x17

    move v15, v3

    invoke-static/range {v10 .. v15}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v15, 0x17

    const/16 v16, 0x5d

    const-string v17, "TimestampUtc"

    const-string v3, "TIMESTAMP_UTC"

    .line 319
    invoke-static {v2, v3, v9, v2}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "TIMESTAMP_UTC"

    aput-object v3, v2, v1

    const/16 v20, 0x38

    move-object/from16 v19, v2

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v22, 0x18

    const/16 v23, 0x457

    const-string v24, "TimestampTimeZone"

    const-string v2, "TIMESTAMP_TZ"

    const/16 v3, 0x1e

    .line 326
    invoke-static {v3, v2, v9, v3}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v25

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "TIMESTAMP WITH TIMEZONE"

    aput-object v3, v2, v1

    const/16 v27, 0x3a

    move-object/from16 v26, v2

    invoke-static/range {v22 .. v27}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v9, 0xc

    const/4 v10, -0x3

    const-string v11, "Bytes"

    .line 333
    invoke-static {v1}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v0, [Ljava/lang/String;

    const-string v2, "VARBINARY"

    aput-object v2, v13, v1

    const/16 v14, 0x20

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v15, 0xc

    const/16 v16, -0x2

    const-string v17, "Bytes"

    .line 338
    invoke-static {v1}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BINARY"

    aput-object v3, v2, v1

    const-string v3, "RAW"

    aput-object v3, v2, v0

    const-string v3, "BYTEA"

    aput-object v3, v2, v4

    const-string v3, "LONG RAW"

    aput-object v3, v2, v5

    const/16 v20, 0x20

    move-object/from16 v19, v2

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v10, -0x4

    const-string v11, "Bytes"

    .line 343
    invoke-static {v1}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v0, [Ljava/lang/String;

    const-string v2, "LONGVARBINARY"

    aput-object v2, v13, v1

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v15, 0x14

    const-string v17, "Bytes"

    .line 348
    invoke-static {v1}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v18

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "UUID"

    aput-object v3, v2, v1

    move-object/from16 v19, v2

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v9, 0x13

    const/16 v10, 0x457

    const-string v11, "Object"

    .line 353
    invoke-static {v1}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/String;

    const-string v2, "OTHER"

    aput-object v2, v13, v1

    const-string v2, "OBJECT"

    aput-object v2, v13, v0

    const-string v2, "JAVA_OBJECT"

    aput-object v2, v13, v4

    const/16 v14, 0x18

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v15, 0xf

    const/16 v16, 0x7d4

    const-string v17, "Blob"

    .line 358
    invoke-static {}, Lorg/h2/value/DataType;->createLob()Lorg/h2/value/DataType;

    move-result-object v18

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BLOB"

    aput-object v3, v2, v1

    const-string v3, "TINYBLOB"

    aput-object v3, v2, v0

    const-string v3, "MEDIUMBLOB"

    aput-object v3, v2, v4

    const-string v3, "LONGBLOB"

    aput-object v3, v2, v5

    const-string v3, "IMAGE"

    aput-object v3, v2, v6

    const-string v3, "OID"

    aput-object v3, v2, v7

    const/16 v20, 0x68

    move-object/from16 v19, v2

    invoke-static/range {v15 .. v20}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v9, 0x10

    const/16 v10, 0x7d5

    const-string v11, "Clob"

    .line 365
    invoke-static {}, Lorg/h2/value/DataType;->createLob()Lorg/h2/value/DataType;

    move-result-object v12

    const/4 v2, 0x7

    new-array v13, v2, [Ljava/lang/String;

    const-string v2, "CLOB"

    aput-object v2, v13, v1

    const-string v2, "TINYTEXT"

    aput-object v2, v13, v0

    const-string v2, "TEXT"

    aput-object v2, v13, v4

    const-string v2, "MEDIUMTEXT"

    aput-object v2, v13, v5

    const-string v2, "LONGTEXT"

    aput-object v2, v13, v6

    const-string v2, "NTEXT"

    aput-object v2, v13, v7

    const-string v2, "NCLOB"

    aput-object v2, v13, v8

    const/16 v14, 0x68

    invoke-static/range {v9 .. v14}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v2, 0x16

    const/16 v3, 0x457

    const-string v4, "Geometry"

    .line 372
    invoke-static {v1}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "GEOMETRY"

    aput-object v7, v6, v1

    const/16 v7, 0x20

    invoke-static/range {v2 .. v7}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    .line 377
    new-instance v11, Lorg/h2/value/DataType;

    invoke-direct {v11}, Lorg/h2/value/DataType;-><init>()V

    const-string v2, "("

    .line 378
    iput-object v2, v11, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    const-string v2, "\')"

    .line 379
    iput-object v2, v11, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    const/16 v8, 0x11

    const/16 v9, 0x7d3

    const-string v10, "Array"

    .line 380
    new-array v12, v0, [Ljava/lang/String;

    const-string v2, "ARRAY"

    aput-object v2, v12, v1

    const/16 v13, 0x20

    invoke-static/range {v8 .. v13}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    .line 385
    new-instance v5, Lorg/h2/value/DataType;

    invoke-direct {v5}, Lorg/h2/value/DataType;-><init>()V

    const/16 v2, 0x12

    const/16 v3, -0xa

    const-string v4, "ResultSet"

    .line 386
    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "RESULT_SET"

    aput-object v0, v6, v1

    const/16 v7, 0x190

    invoke-static/range {v2 .. v7}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    .line 391
    sget-object v0, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 392
    sget-object v2, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/DataType;

    if-nez v2, :cond_1

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmapped type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 396
    :cond_1
    invoke-static {v1}, Lorg/h2/value/Value;->getOrder(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 402
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_4

    .line 403
    new-instance v2, Lorg/h2/value/DataType;

    invoke-direct {v2}, Lorg/h2/value/DataType;-><init>()V

    .line 404
    iput p0, v2, Lorg/h2/value/DataType;->type:I

    .line 405
    iput p1, v2, Lorg/h2/value/DataType;->sqlType:I

    .line 406
    iput-object p2, v2, Lorg/h2/value/DataType;->jdbc:Ljava/lang/String;

    .line 407
    aget-object v3, p4, v1

    iput-object v3, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    .line 408
    iget-boolean v3, p3, Lorg/h2/value/DataType;->autoIncrement:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->autoIncrement:Z

    .line 409
    iget-boolean v3, p3, Lorg/h2/value/DataType;->decimal:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->decimal:Z

    .line 410
    iget-wide v3, p3, Lorg/h2/value/DataType;->maxPrecision:J

    iput-wide v3, v2, Lorg/h2/value/DataType;->maxPrecision:J

    .line 411
    iget v3, p3, Lorg/h2/value/DataType;->maxScale:I

    iput v3, v2, Lorg/h2/value/DataType;->maxScale:I

    .line 412
    iget v3, p3, Lorg/h2/value/DataType;->minScale:I

    iput v3, v2, Lorg/h2/value/DataType;->minScale:I

    .line 413
    iget-object v3, p3, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    iput-object v3, v2, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    .line 414
    iget-object v3, p3, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    iput-object v3, v2, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    .line 415
    iget-object v3, p3, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    iput-object v3, v2, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    .line 416
    iget-boolean v3, p3, Lorg/h2/value/DataType;->supportsPrecision:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->supportsPrecision:Z

    .line 417
    iget-boolean v3, p3, Lorg/h2/value/DataType;->supportsScale:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->supportsScale:Z

    .line 418
    iget-wide v3, p3, Lorg/h2/value/DataType;->defaultPrecision:J

    iput-wide v3, v2, Lorg/h2/value/DataType;->defaultPrecision:J

    .line 419
    iget v3, p3, Lorg/h2/value/DataType;->defaultScale:I

    iput v3, v2, Lorg/h2/value/DataType;->defaultScale:I

    .line 420
    iget v3, p3, Lorg/h2/value/DataType;->defaultDisplaySize:I

    iput v3, v2, Lorg/h2/value/DataType;->defaultDisplaySize:I

    .line 421
    iget-boolean v3, p3, Lorg/h2/value/DataType;->caseSensitive:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->caseSensitive:Z

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 422
    :goto_1
    iput-boolean v4, v2, Lorg/h2/value/DataType;->hidden:Z

    .line 423
    iput p5, v2, Lorg/h2/value/DataType;->memory:I

    .line 424
    sget-object v4, Lorg/h2/value/DataType;->TYPES:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/value/DataType;

    .line 425
    iget v5, v5, Lorg/h2/value/DataType;->sqlType:I

    iget v6, v2, Lorg/h2/value/DataType;->sqlType:I

    if-ne v5, v6, :cond_1

    .line 426
    iget v5, v2, Lorg/h2/value/DataType;->sqlTypePos:I

    add-int/2addr v5, v3

    iput v5, v2, Lorg/h2/value/DataType;->sqlTypePos:I

    goto :goto_2

    .line 429
    :cond_2
    sget-object v3, Lorg/h2/value/DataType;->TYPES_BY_NAME:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v3, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 431
    sget-object v3, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v3, p0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_3
    sget-object v3, Lorg/h2/value/DataType;->TYPES:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static convertSQLTypeToValueType(I)I
    .locals 3

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v1, 0x10

    if-eq p0, v1, :cond_2

    const/16 v2, 0x457

    if-eq p0, v2, :cond_1

    const/16 v2, 0x7d0

    if-eq p0, v2, :cond_1

    const/16 v2, 0x7db

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const v0, 0xc354

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    const/16 p0, 0x11

    return p0

    :pswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_6
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/4 p0, 0x0

    return p0

    :pswitch_b
    return v0

    :pswitch_c
    const/4 p0, 0x5

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_e
    const/16 p0, 0x12

    return p0

    :pswitch_f
    const/16 p0, 0x15

    return p0

    :cond_0
    :pswitch_10
    return v1

    :cond_1
    const/16 p0, 0x13

    return p0

    :cond_2
    :pswitch_11
    const/4 p0, 0x1

    return p0

    :cond_3
    :pswitch_12
    const/16 p0, 0xd

    return p0

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_12
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xa
        :pswitch_e
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x7
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_12
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7d3
        :pswitch_1
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public static convertSQLTypeToValueType(ILjava/lang/String;)I
    .locals 1

    const/16 v0, 0x457

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "geometry"

    .line 826
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x16

    return p0

    .line 830
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(I)I

    move-result p0

    return p0
.end method

.method public static convertTo(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/jdbc/JdbcConnection;",
            "Lorg/h2/value/Value;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1240
    const-class v0, Ljava/sql/Blob;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 1241
    new-instance p2, Lorg/h2/jdbc/JdbcBlob;

    invoke-direct {p2, p0, p1, v1}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    return-object p2

    .line 1242
    :cond_0
    const-class v0, Ljava/sql/Clob;

    if-ne p2, v0, :cond_1

    .line 1243
    new-instance p2, Lorg/h2/jdbc/JdbcClob;

    invoke-direct {p2, p0, p1, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    return-object p2

    .line 1245
    :cond_1
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    .line 1246
    sget-boolean v0, Lorg/h2/engine/SysProperties;->serializeJavaObject:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object p0

    .line 1248
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    .line 1252
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "converting to class "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;
    .locals 0

    .line 996
    invoke-static {p0, p1, p2}, Lorg/h2/value/DataType;->convertToValue1(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 998
    invoke-interface {p0, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    :cond_0
    return-object p1
.end method

.method private static convertToValue1(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;
    .locals 5

    if-nez p1, :cond_0

    .line 1006
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    :cond_0
    const/16 v0, 0x13

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 1009
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p0

    return-object p0

    .line 1011
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1012
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    .line 1013
    :cond_2
    instance-of v0, p1, Lorg/h2/value/Value;

    if-eqz v0, :cond_3

    .line 1014
    check-cast p1, Lorg/h2/value/Value;

    return-object p1

    .line 1015
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 1016
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p0

    return-object p0

    .line 1017
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1018
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p0

    return-object p0

    .line 1019
    :cond_5
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_6

    .line 1020
    new-instance p0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p0

    return-object p0

    .line 1021
    :cond_6
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_7

    .line 1022
    check-cast p1, Ljava/math/BigDecimal;

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p0

    return-object p0

    .line 1023
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 1024
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p0

    return-object p0

    .line 1025
    :cond_8
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_9

    .line 1026
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p0

    return-object p0

    .line 1027
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_a

    .line 1028
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p0

    return-object p0

    .line 1029
    :cond_a
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_b

    .line 1030
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p0

    return-object p0

    .line 1031
    :cond_b
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_c

    .line 1032
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p0

    return-object p0

    .line 1033
    :cond_c
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    .line 1034
    check-cast p1, [B

    invoke-static {p1}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p0

    return-object p0

    .line 1035
    :cond_d
    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_e

    .line 1036
    check-cast p1, Ljava/sql/Date;

    invoke-static {p1}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p0

    return-object p0

    .line 1037
    :cond_e
    instance-of v0, p1, Ljava/sql/Time;

    if-eqz v0, :cond_f

    .line 1038
    check-cast p1, Ljava/sql/Time;

    invoke-static {p1}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p0

    return-object p0

    .line 1039
    :cond_f
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_10

    .line 1040
    check-cast p1, Ljava/sql/Timestamp;

    invoke-static {p1}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0

    .line 1041
    :cond_10
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_11

    .line 1042
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0

    .line 1043
    :cond_11
    instance-of v0, p1, Ljava/io/Reader;

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_12

    .line 1044
    new-instance p2, Ljava/io/BufferedReader;

    check-cast p1, Ljava/io/Reader;

    invoke-direct {p2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1045
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    invoke-interface {p0, p2, v2, v3}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    .line 1047
    :cond_12
    instance-of v0, p1, Ljava/sql/Clob;

    if-eqz v0, :cond_13

    .line 1049
    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    check-cast p1, Ljava/sql/Clob;

    invoke-interface {p1}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1051
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    invoke-interface {p0, p2, v2, v3}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1054
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 1056
    :cond_13
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_14

    .line 1057
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    check-cast p1, Ljava/io/InputStream;

    invoke-interface {p0, p1, v2, v3}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    .line 1059
    :cond_14
    instance-of v0, p1, Ljava/sql/Blob;

    if-eqz v0, :cond_15

    .line 1061
    :try_start_1
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    check-cast p1, Ljava/sql/Blob;

    invoke-interface {p1}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {p0, p1, v2, v3}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 1064
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 1066
    :cond_15
    instance-of v0, p1, Ljava/sql/ResultSet;

    if-eqz v0, :cond_17

    .line 1067
    instance-of p0, p1, Lorg/h2/tools/SimpleResultSet;

    if-eqz p0, :cond_16

    .line 1068
    check-cast p1, Ljava/sql/ResultSet;

    invoke-static {p1}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object p0

    return-object p0

    .line 1070
    :cond_16
    check-cast p1, Ljava/sql/ResultSet;

    const p0, 0x7fffffff

    invoke-static {p1, p0}, Lorg/h2/value/ValueResultSet;->getCopy(Ljava/sql/ResultSet;I)Lorg/h2/value/ValueResultSet;

    move-result-object p0

    return-object p0

    .line 1071
    :cond_17
    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_18

    .line 1072
    check-cast p1, Ljava/util/UUID;

    .line 1073
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/h2/value/ValueUuid;->get(JJ)Lorg/h2/value/ValueUuid;

    move-result-object p0

    return-object p0

    .line 1074
    :cond_18
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 1077
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 1078
    array-length v1, v0

    .line 1079
    new-array v2, v1, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_19

    .line 1081
    aget-object v4, v0, v3

    invoke-static {p0, v4, p2}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1083
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2}, Lorg/h2/value/ValueArray;->get(Ljava/lang/Class;[Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p0

    return-object p0

    .line 1084
    :cond_1a
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_1b

    .line 1085
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object p0

    return-object p0

    .line 1086
    :cond_1b
    invoke-static {p1}, Lorg/h2/value/DataType;->isGeometry(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1087
    invoke-static {p1}, Lorg/h2/value/ValueGeometry;->getFromGeometry(Ljava/lang/Object;)Lorg/h2/value/ValueGeometry;

    move-result-object p0

    return-object p0

    .line 1089
    :cond_1c
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p0

    return-object p0
.end method

.method public static convertTypeToSQLType(I)I
    .locals 0

    .line 811
    invoke-static {p0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object p0

    iget p0, p0, Lorg/h2/value/DataType;->sqlType:I

    return p0
.end method

.method private static createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;
    .locals 2

    .line 457
    new-instance v0, Lorg/h2/value/DataType;

    invoke-direct {v0}, Lorg/h2/value/DataType;-><init>()V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    const-string p1, "\'"

    .line 459
    iput-object p1, v0, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    int-to-long p0, p0

    .line 460
    iput-wide p0, v0, Lorg/h2/value/DataType;->maxPrecision:J

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 461
    :goto_0
    iput-boolean v1, v0, Lorg/h2/value/DataType;->supportsScale:Z

    .line 462
    iput p2, v0, Lorg/h2/value/DataType;->maxScale:I

    .line 463
    iput-wide p0, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    .line 464
    iput p2, v0, Lorg/h2/value/DataType;->defaultScale:I

    .line 465
    iput p3, v0, Lorg/h2/value/DataType;->defaultDisplaySize:I

    return-object v0
.end method

.method private static createDecimal(IIIIZZ)Lorg/h2/value/DataType;
    .locals 3

    .line 440
    new-instance v0, Lorg/h2/value/DataType;

    invoke-direct {v0}, Lorg/h2/value/DataType;-><init>()V

    int-to-long v1, p0

    .line 441
    iput-wide v1, v0, Lorg/h2/value/DataType;->maxPrecision:J

    int-to-long p0, p1

    .line 442
    iput-wide p0, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    .line 443
    iput p2, v0, Lorg/h2/value/DataType;->defaultScale:I

    .line 444
    iput p3, v0, Lorg/h2/value/DataType;->defaultDisplaySize:I

    const/4 p0, 0x1

    if-eqz p4, :cond_0

    const-string p1, "PRECISION,SCALE"

    .line 446
    iput-object p1, v0, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    .line 447
    iput-boolean p0, v0, Lorg/h2/value/DataType;->supportsPrecision:Z

    .line 448
    iput-boolean p0, v0, Lorg/h2/value/DataType;->supportsScale:Z

    .line 450
    :cond_0
    iput-boolean p0, v0, Lorg/h2/value/DataType;->decimal:Z

    .line 451
    iput-boolean p5, v0, Lorg/h2/value/DataType;->autoIncrement:Z

    return-object v0
.end method

.method private static createLob()Lorg/h2/value/DataType;
    .locals 3

    const/4 v0, 0x1

    .line 483
    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    .line 484
    iput-wide v1, v0, Lorg/h2/value/DataType;->maxPrecision:J

    .line 485
    iput-wide v1, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    return-object v0
.end method

.method private static createString(Z)Lorg/h2/value/DataType;
    .locals 3

    .line 470
    new-instance v0, Lorg/h2/value/DataType;

    invoke-direct {v0}, Lorg/h2/value/DataType;-><init>()V

    const-string v1, "\'"

    .line 471
    iput-object v1, v0, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    const-string v1, "\'"

    .line 472
    iput-object v1, v0, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    const-string v1, "LENGTH"

    .line 473
    iput-object v1, v0, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    .line 474
    iput-boolean p0, v0, Lorg/h2/value/DataType;->caseSensitive:Z

    const/4 p0, 0x1

    .line 475
    iput-boolean p0, v0, Lorg/h2/value/DataType;->supportsPrecision:Z

    const-wide/32 v1, 0x7fffffff

    .line 476
    iput-wide v1, v0, Lorg/h2/value/DataType;->maxPrecision:J

    .line 477
    iput-wide v1, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    const p0, 0x7fffffff

    .line 478
    iput p0, v0, Lorg/h2/value/DataType;->defaultDisplaySize:I

    return-object v0
.end method

.method public static getAddProofType(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :cond_0
    const/4 p0, 0x7

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDataType(I)Lorg/h2/value/DataType;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 797
    sget-object v0, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/value/DataType;

    if-nez p0, :cond_0

    .line 799
    sget-object p0, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/value/DataType;

    :cond_0
    return-object p0

    :cond_1
    const p0, 0xc354

    const-string v0, "?"

    .line 795
    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getDefaultForPrimitiveType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1209
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 1210
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1211
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    .line 1212
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1213
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 1214
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 1215
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 1216
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 1217
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 1218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1219
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-wide/16 v0, 0x0

    .line 1220
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1221
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    .line 1222
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1223
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-wide/16 v0, 0x0

    .line 1224
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1226
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;
    .locals 1

    .line 1126
    sget-object v0, Lorg/h2/value/DataType;->TYPES_BY_NAME:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/value/DataType;

    return-object p0
.end method

.method public static getTypeClassName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 746
    :pswitch_0
    const-class p0, Lorg/h2/api/TimestampWithTimeZone;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "com.vividsolutions.jts.geom.Geometry"

    return-object p0

    .line 772
    :pswitch_2
    const-class p0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 779
    :pswitch_3
    const-class p0, Ljava/sql/ResultSet;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 777
    :pswitch_4
    const-class p0, Ljava/sql/Array;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 761
    :pswitch_5
    const-class p0, Ljava/sql/Clob;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 758
    :pswitch_6
    const-class p0, Ljava/sql/Blob;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 755
    :pswitch_7
    const-class p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 750
    :pswitch_8
    const-class p0, [B

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 743
    :pswitch_9
    const-class p0, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 739
    :pswitch_a
    const-class p0, Ljava/sql/Date;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 736
    :pswitch_b
    const-class p0, Ljava/sql/Time;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 767
    :pswitch_c
    const-class p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 764
    :pswitch_d
    const-class p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 733
    :pswitch_e
    const-class p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 730
    :pswitch_f
    const-class p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 727
    :pswitch_10
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 724
    :pswitch_11
    const-class p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 721
    :pswitch_12
    const-class p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 718
    :pswitch_13
    const-class p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    const/4 p0, 0x0

    return-object p0

    .line 775
    :pswitch_15
    const-class p0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public static getTypeFromClass(Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 921
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_0

    goto/16 :goto_0

    .line 924
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    invoke-static {p0}, Lorg/h2/util/Utils;->getNonPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 927
    :cond_1
    const-class v1, Ljava/lang/String;

    if-ne v1, p0, :cond_2

    const/16 p0, 0xd

    return p0

    .line 929
    :cond_2
    const-class v1, Ljava/lang/Integer;

    if-ne v1, p0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 931
    :cond_3
    const-class v1, Ljava/lang/Long;

    if-ne v1, p0, :cond_4

    const/4 p0, 0x5

    return p0

    .line 933
    :cond_4
    const-class v1, Ljava/lang/Boolean;

    if-ne v1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    .line 935
    :cond_5
    const-class v1, Ljava/lang/Double;

    if-ne v1, p0, :cond_6

    const/4 p0, 0x7

    return p0

    .line 937
    :cond_6
    const-class v1, Ljava/lang/Byte;

    if-ne v1, p0, :cond_7

    const/4 p0, 0x2

    return p0

    .line 939
    :cond_7
    const-class v1, Ljava/lang/Short;

    if-ne v1, p0, :cond_8

    const/4 p0, 0x3

    return p0

    .line 941
    :cond_8
    const-class v1, Ljava/lang/Character;

    if-eq v1, p0, :cond_1b

    .line 944
    const-class v1, Ljava/lang/Float;

    if-ne v1, p0, :cond_9

    const/16 p0, 0x8

    return p0

    .line 946
    :cond_9
    const-class v1, [B

    if-ne v1, p0, :cond_a

    const/16 p0, 0xc

    return p0

    .line 948
    :cond_a
    const-class v1, Ljava/util/UUID;

    if-ne v1, p0, :cond_b

    const/16 p0, 0x14

    return p0

    .line 950
    :cond_b
    const-class v1, Ljava/lang/Void;

    if-ne v1, p0, :cond_c

    return v0

    .line 952
    :cond_c
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x6

    return p0

    .line 954
    :cond_d
    const-class v0, Ljava/sql/ResultSet;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0x12

    return p0

    .line 956
    :cond_e
    const-class v0, Lorg/h2/value/Value$ValueBlob;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v1, 0xf

    if-eqz v0, :cond_f

    return v1

    .line 958
    :cond_f
    const-class v0, Lorg/h2/value/Value$ValueClob;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v2, 0x10

    if-eqz v0, :cond_10

    return v2

    .line 960
    :cond_10
    const-class v0, Ljava/sql/Date;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 p0, 0xa

    return p0

    .line 962
    :cond_11
    const-class v0, Ljava/sql/Time;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 p0, 0x9

    return p0

    .line 964
    :cond_12
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v3, 0xb

    if-eqz v0, :cond_13

    return v3

    .line 966
    :cond_13
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v3

    .line 968
    :cond_14
    const-class v0, Ljava/io/Reader;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v2

    .line 970
    :cond_15
    const-class v0, Ljava/sql/Clob;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v2

    .line 972
    :cond_16
    const-class v0, Ljava/io/InputStream;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 974
    :cond_17
    const-class v0, Ljava/sql/Blob;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    .line 976
    :cond_18
    const-class v0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 p0, 0x11

    return p0

    .line 979
    :cond_19
    invoke-static {p0}, Lorg/h2/value/DataType;->isGeometryClass(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/16 p0, 0x16

    return p0

    :cond_1a
    const/16 p0, 0x13

    return p0

    :cond_1b
    const/16 p0, 0x5602

    const-string v0, "char (not supported)"

    .line 942
    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1c
    :goto_0
    return v0
.end method

.method public static getTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/DataType;",
            ">;"
        }
    .end annotation

    .line 495
    sget-object v0, Lorg/h2/value/DataType;->TYPES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 843
    invoke-interface {p0, p1}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    invoke-interface {p0, p1}, Ljava/sql/ResultSetMetaData;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isGeometry(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1116
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/value/DataType;->isGeometryClass(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isGeometryClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1100
    sget-object v0, Lorg/h2/value/DataType;->GEOMETRY_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1103
    :cond_0
    sget-object v0, Lorg/h2/value/DataType;->GEOMETRY_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLargeObject(I)Z
    .locals 1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isStringType(I)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;
    .locals 3

    const-wide/16 v0, -0x1

    packed-switch p3, :pswitch_data_0

    .line 700
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 564
    :pswitch_0
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p0

    check-cast p0, Lorg/h2/api/TimestampWithTimeZone;

    if-nez p0, :cond_0

    .line 565
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_0
    invoke-static {p0}, Lorg/h2/value/ValueTimestampTimeZone;->get(Lorg/h2/api/TimestampWithTimeZone;)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0

    goto/16 :goto_5

    .line 558
    :pswitch_1
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p0

    if-nez p0, :cond_1

    .line 559
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide p1

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    invoke-static {p1, p2, p0}, Lorg/h2/value/ValueTimestampUtc;->fromMillisNanos(JI)Lorg/h2/value/ValueTimestampUtc;

    move-result-object p0

    goto/16 :goto_5

    .line 693
    :pswitch_2
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 695
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    .line 697
    :cond_2
    invoke-static {p0}, Lorg/h2/value/ValueGeometry;->getFromGeometry(Ljava/lang/Object;)Lorg/h2/value/ValueGeometry;

    move-result-object p0

    return-object p0

    .line 612
    :pswitch_3
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    .line 613
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_3
    invoke-static {p0}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object p0

    goto/16 :goto_5

    .line 522
    :pswitch_4
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p0

    if-nez p0, :cond_4

    .line 523
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_4
    invoke-static {p0}, Lorg/h2/value/ValueUuid;->get([B)Lorg/h2/value/ValueUuid;

    move-result-object p0

    goto/16 :goto_5

    .line 657
    :pswitch_5
    sget-boolean p3, Lorg/h2/engine/SysProperties;->serializeJavaObject:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    .line 658
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p1

    if-nez p1, :cond_5

    .line 659
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_5
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p0

    goto/16 :goto_5

    .line 662
    :cond_6
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    .line 663
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_7
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p0

    goto/16 :goto_5

    .line 686
    :pswitch_6
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/sql/ResultSet;

    if-nez p0, :cond_8

    .line 688
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    .line 690
    :cond_8
    invoke-static {p0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object p0

    return-object p0

    .line 669
    :pswitch_7
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    if-nez p1, :cond_9

    .line 671
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    .line 673
    :cond_9
    invoke-interface {p1}, Ljava/sql/Array;->getArray()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-nez p1, :cond_a

    .line 675
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    .line 677
    :cond_a
    array-length p2, p1

    .line 678
    new-array p3, p2, [Lorg/h2/value/Value;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_b

    .line 680
    aget-object v2, p1, v1

    invoke-static {p0, v2, v0}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    :cond_b
    invoke-static {p3}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p0

    goto/16 :goto_5

    :pswitch_8
    if-nez p0, :cond_d

    .line 625
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    .line 626
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_c
    const/16 p2, 0x10

    sget-object p3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_1

    .line 629
    :cond_d
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    if-nez p1, :cond_e

    .line 631
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    .line 633
    :cond_e
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p2

    invoke-interface {p2}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p2

    new-instance p3, Ljava/io/BufferedReader;

    invoke-direct {p3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {p2, p3, v0, v1}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p1

    :goto_1
    if-eqz p0, :cond_12

    .line 638
    invoke-interface {p0, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    goto :goto_4

    :pswitch_9
    if-nez p0, :cond_10

    .line 644
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p0

    if-nez p0, :cond_f

    .line 645
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_2

    :cond_f
    const/16 p1, 0xf

    invoke-static {p1, p0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p0

    :goto_2
    return-object p0

    .line 648
    :cond_10
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_11

    .line 649
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_3

    :cond_11
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p2

    invoke-interface {p2}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p2

    invoke-interface {p2, p1, v0, v1}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p1

    :goto_3
    if-eqz p0, :cond_12

    .line 652
    invoke-interface {p0, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    :cond_12
    :goto_4
    move-object p0, p1

    goto/16 :goto_5

    .line 606
    :pswitch_a
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_13

    .line 607
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_13
    invoke-static {p0}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object p0

    goto/16 :goto_5

    .line 618
    :pswitch_b
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_14

    .line 619
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_14
    invoke-static {p0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p0

    goto/16 :goto_5

    .line 516
    :pswitch_c
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p0

    if-nez p0, :cond_15

    .line 517
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_15
    invoke-static {p0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object p0

    goto/16 :goto_5

    .line 552
    :pswitch_d
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p0

    if-nez p0, :cond_16

    .line 553
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_16
    invoke-static {p0}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    goto/16 :goto_5

    .line 540
    :pswitch_e
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p0

    if-nez p0, :cond_17

    .line 541
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_17
    invoke-static {p0}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p0

    goto/16 :goto_5

    .line 546
    :pswitch_f
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p0

    if-nez p0, :cond_18

    .line 547
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_18
    invoke-static {p0}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p0

    goto/16 :goto_5

    .line 582
    :pswitch_10
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result p0

    .line 583
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_19

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_19
    invoke-static {p0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p0

    goto/16 :goto_5

    .line 576
    :pswitch_11
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide p2

    .line 577
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_5

    :cond_1a
    invoke-static {p2, p3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p0

    goto/16 :goto_5

    .line 570
    :pswitch_12
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_1b

    .line 571
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    :cond_1b
    invoke-static {p0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p0

    goto :goto_5

    .line 594
    :pswitch_13
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide p2

    .line 595
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    :cond_1c
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p0

    goto :goto_5

    .line 588
    :pswitch_14
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p0

    .line 589
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1d

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    :cond_1d
    invoke-static {p0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p0

    goto :goto_5

    .line 600
    :pswitch_15
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getShort(I)S

    move-result p0

    .line 601
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1e

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    :cond_1e
    invoke-static {p0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p0

    goto :goto_5

    .line 534
    :pswitch_16
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getByte(I)B

    move-result p0

    .line 535
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    :cond_1f
    invoke-static {p0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p0

    goto :goto_5

    .line 528
    :pswitch_17
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p0

    .line 529
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_20

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    :cond_20
    invoke-static {p0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p0

    :goto_5
    return-object p0

    .line 513
    :pswitch_18
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    .line 700
    :goto_6
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 704
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static supportsAdd(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
