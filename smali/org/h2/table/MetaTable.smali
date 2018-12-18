.class public Lorg/h2/table/MetaTable;
.super Lorg/h2/table/Table;
.source "MetaTable.java"


# static fields
.field private static final CATALOGS:I = 0x5

.field private static final CHARACTER_SET_NAME:Ljava/lang/String; = "Unicode"

.field private static final COLLATIONS:I = 0x10

.field private static final COLUMNS:I = 0x1

.field private static final COLUMN_PRIVILEGES:I = 0xf

.field private static final CONSTANTS:I = 0x16

.field private static final CONSTRAINTS:I = 0x14

.field private static final CROSS_REFERENCES:I = 0x13

.field private static final DOMAINS:I = 0x17

.field private static final FUNCTION_ALIASES:I = 0xc

.field private static final FUNCTION_COLUMNS:I = 0x15

.field private static final HELP:I = 0x7

.field private static final INDEXES:I = 0x2

.field private static final IN_DOUBT:I = 0x12

.field private static final LOCKS:I = 0x1a

.field private static final META_TABLE_TYPE_COUNT:I = 0x1d

.field private static final QUERY_STATISTICS:I = 0x1c

.field private static final RIGHTS:I = 0xb

.field private static final ROLES:I = 0xa

.field public static final ROW_COUNT_APPROXIMATION:J = 0x3e8L

.field private static final SCHEMATA:I = 0xd

.field private static final SEQUENCES:I = 0x8

.field private static final SESSIONS:I = 0x19

.field private static final SESSION_STATE:I = 0x1b

.field private static final SETTINGS:I = 0x6

.field private static final TABLES:I = 0x0

.field private static final TABLE_PRIVILEGES:I = 0xe

.field private static final TABLE_TYPES:I = 0x3

.field private static final TRIGGERS:I = 0x18

.field private static final TYPE_INFO:I = 0x4

.field private static final USERS:I = 0x9

.field private static final VIEWS:I = 0x11


# instance fields
.field private final indexColumn:I

.field private final metaIndex:Lorg/h2/index/MetaIndex;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;II)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 126
    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    .line 127
    iput v7, v6, Lorg/h2/table/MetaTable;->type:I

    const/16 v0, 0xe

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/16 v5, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v1, 0x0

    const/16 v16, 0x0

    packed-switch v7, :pswitch_data_0

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "QUERY_STATISTICS"

    .line 523
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 524
    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "SQL_STATEMENT"

    aput-object v4, v0, v1

    const-string v4, "EXECUTION_COUNT INT"

    aput-object v4, v0, v15

    const-string v4, "MIN_EXECUTION_TIME LONG"

    aput-object v4, v0, v14

    const-string v4, "MAX_EXECUTION_TIME LONG"

    aput-object v4, v0, v13

    const-string v4, "CUMULATIVE_EXECUTION_TIME LONG"

    aput-object v4, v0, v12

    const-string v4, "AVERAGE_EXECUTION_TIME DOUBLE"

    aput-object v4, v0, v11

    const-string v4, "STD_DEV_EXECUTION_TIME DOUBLE"

    aput-object v4, v0, v10

    const-string v4, "MIN_ROW_COUNT INT"

    aput-object v4, v0, v9

    const-string v4, "MAX_ROW_COUNT INT"

    aput-object v4, v0, v8

    const-string v4, "CUMULATIVE_ROW_COUNT LONG"

    aput-object v4, v0, v5

    const-string v4, "AVERAGE_ROW_COUNT DOUBLE"

    aput-object v4, v0, v3

    const-string v3, "STD_DEV_ROW_COUNT DOUBLE"

    aput-object v3, v0, v2

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "SESSION_STATE"

    .line 515
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 516
    new-array v0, v14, [Ljava/lang/String;

    const-string v2, "KEY"

    aput-object v2, v0, v1

    const-string v2, "SQL"

    aput-object v2, v0, v15

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "LOCKS"

    .line 505
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 506
    new-array v0, v12, [Ljava/lang/String;

    const-string v2, "TABLE_SCHEMA"

    aput-object v2, v0, v1

    const-string v2, "TABLE_NAME"

    aput-object v2, v0, v15

    const-string v2, "SESSION_ID INT"

    aput-object v2, v0, v14

    const-string v2, "LOCK_TYPE"

    aput-object v2, v0, v13

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "SESSIONS"

    .line 493
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 494
    new-array v0, v10, [Ljava/lang/String;

    const-string v2, "ID INT"

    aput-object v2, v0, v1

    const-string v2, "USER_NAME"

    aput-object v2, v0, v15

    const-string v2, "SESSION_START"

    aput-object v2, v0, v14

    const-string v2, "STATEMENT"

    aput-object v2, v0, v13

    const-string v2, "STATEMENT_START"

    aput-object v2, v0, v12

    const-string v2, "CONTAINS_UNCOMMITTED"

    aput-object v2, v0, v11

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    const-string v7, "TRIGGERS"

    .line 474
    invoke-virtual {v6, v7}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 475
    new-array v0, v0, [Ljava/lang/String;

    const-string v7, "TRIGGER_CATALOG"

    aput-object v7, v0, v1

    const-string v7, "TRIGGER_SCHEMA"

    aput-object v7, v0, v15

    const-string v7, "TRIGGER_NAME"

    aput-object v7, v0, v14

    const-string v7, "TRIGGER_TYPE"

    aput-object v7, v0, v13

    const-string v7, "TABLE_CATALOG"

    aput-object v7, v0, v12

    const-string v7, "TABLE_SCHEMA"

    aput-object v7, v0, v11

    const-string v7, "TABLE_NAME"

    aput-object v7, v0, v10

    const-string v7, "BEFORE BIT"

    aput-object v7, v0, v9

    const-string v7, "JAVA_CLASS"

    aput-object v7, v0, v8

    const-string v7, "QUEUE_SIZE INT"

    aput-object v7, v0, v5

    const-string v5, "NO_WAIT BIT"

    aput-object v5, v0, v3

    const-string v3, "REMARKS"

    aput-object v3, v0, v2

    const-string v2, "SQL"

    aput-object v2, v0, v4

    const-string v2, "ID INT"

    const/16 v3, 0xd

    aput-object v2, v0, v3

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    const-string v7, "DOMAINS"

    .line 455
    invoke-virtual {v6, v7}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 456
    new-array v0, v0, [Ljava/lang/String;

    const-string v7, "DOMAIN_CATALOG"

    aput-object v7, v0, v1

    const-string v7, "DOMAIN_SCHEMA"

    aput-object v7, v0, v15

    const-string v7, "DOMAIN_NAME"

    aput-object v7, v0, v14

    const-string v7, "COLUMN_DEFAULT"

    aput-object v7, v0, v13

    const-string v7, "IS_NULLABLE"

    aput-object v7, v0, v12

    const-string v7, "DATA_TYPE INT"

    aput-object v7, v0, v11

    const-string v7, "PRECISION INT"

    aput-object v7, v0, v10

    const-string v7, "SCALE INT"

    aput-object v7, v0, v9

    const-string v7, "TYPE_NAME"

    aput-object v7, v0, v8

    const-string v7, "SELECTIVITY INT"

    aput-object v7, v0, v5

    const-string v5, "CHECK_CONSTRAINT"

    aput-object v5, v0, v3

    const-string v3, "REMARKS"

    aput-object v3, v0, v2

    const-string v2, "SQL"

    aput-object v2, v0, v4

    const-string v2, "ID INT"

    const/16 v3, 0xd

    aput-object v2, v0, v3

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "CONSTANTS"

    .line 443
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 444
    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "CONSTANT_CATALOG"

    aput-object v2, v0, v1

    const-string v2, "CONSTANT_SCHEMA"

    aput-object v2, v0, v15

    const-string v2, "CONSTANT_NAME"

    aput-object v2, v0, v14

    const-string v2, "DATA_TYPE INT"

    aput-object v2, v0, v13

    const-string v2, "REMARKS"

    aput-object v2, v0, v12

    const-string v2, "SQL"

    aput-object v2, v0, v11

    const-string v2, "ID INT"

    aput-object v2, v0, v10

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    const-string v7, "FUNCTION_COLUMNS"

    .line 313
    invoke-virtual {v6, v7}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    const/16 v7, 0x11

    .line 314
    new-array v7, v7, [Ljava/lang/String;

    const-string v17, "ALIAS_CATALOG"

    aput-object v17, v7, v1

    const-string v17, "ALIAS_SCHEMA"

    aput-object v17, v7, v15

    const-string v17, "ALIAS_NAME"

    aput-object v17, v7, v14

    const-string v14, "JAVA_CLASS"

    aput-object v14, v7, v13

    const-string v13, "JAVA_METHOD"

    aput-object v13, v7, v12

    const-string v12, "COLUMN_COUNT INT"

    aput-object v12, v7, v11

    const-string v11, "POS INT"

    aput-object v11, v7, v10

    const-string v10, "COLUMN_NAME"

    aput-object v10, v7, v9

    const-string v9, "DATA_TYPE INT"

    aput-object v9, v7, v8

    const-string v8, "TYPE_NAME"

    aput-object v8, v7, v5

    const-string v5, "PRECISION INT"

    aput-object v5, v7, v3

    const-string v3, "SCALE SMALLINT"

    aput-object v3, v7, v2

    const-string v2, "RADIX SMALLINT"

    aput-object v2, v7, v4

    const-string v2, "NULLABLE SMALLINT"

    const/16 v3, 0xd

    aput-object v2, v7, v3

    const-string v2, "COLUMN_TYPE SMALLINT"

    aput-object v2, v7, v0

    const/16 v0, 0xf

    const-string v2, "REMARKS"

    aput-object v2, v7, v0

    const/16 v0, 0x10

    const-string v2, "COLUMN_DEFAULT"

    aput-object v2, v7, v0

    invoke-direct {v6, v7}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "CONSTRAINTS"

    .line 424
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 425
    new-array v0, v0, [Ljava/lang/String;

    const-string v7, "CONSTRAINT_CATALOG"

    aput-object v7, v0, v1

    const-string v7, "CONSTRAINT_SCHEMA"

    aput-object v7, v0, v15

    const-string v7, "CONSTRAINT_NAME"

    aput-object v7, v0, v14

    const-string v7, "CONSTRAINT_TYPE"

    aput-object v7, v0, v13

    const-string v7, "TABLE_CATALOG"

    aput-object v7, v0, v12

    const-string v7, "TABLE_SCHEMA"

    aput-object v7, v0, v11

    const-string v7, "TABLE_NAME"

    aput-object v7, v0, v10

    const-string v7, "UNIQUE_INDEX_NAME"

    aput-object v7, v0, v9

    const-string v7, "CHECK_EXPRESSION"

    aput-object v7, v0, v8

    const-string v7, "COLUMN_LIST"

    aput-object v7, v0, v5

    const-string v5, "REMARKS"

    aput-object v5, v0, v3

    const-string v3, "SQL"

    aput-object v3, v0, v2

    const-string v2, "ID INT"

    aput-object v2, v0, v4

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "TABLE_NAME"

    goto/16 :goto_0

    :pswitch_9
    const-string v7, "CROSS_REFERENCES"

    .line 404
    invoke-virtual {v6, v7}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 405
    new-array v0, v0, [Ljava/lang/String;

    const-string v7, "PKTABLE_CATALOG"

    aput-object v7, v0, v1

    const-string v7, "PKTABLE_SCHEMA"

    aput-object v7, v0, v15

    const-string v7, "PKTABLE_NAME"

    aput-object v7, v0, v14

    const-string v7, "PKCOLUMN_NAME"

    aput-object v7, v0, v13

    const-string v7, "FKTABLE_CATALOG"

    aput-object v7, v0, v12

    const-string v7, "FKTABLE_SCHEMA"

    aput-object v7, v0, v11

    const-string v7, "FKTABLE_NAME"

    aput-object v7, v0, v10

    const-string v7, "FKCOLUMN_NAME"

    aput-object v7, v0, v9

    const-string v7, "ORDINAL_POSITION SMALLINT"

    aput-object v7, v0, v8

    const-string v7, "UPDATE_RULE SMALLINT"

    aput-object v7, v0, v5

    const-string v5, "DELETE_RULE SMALLINT"

    aput-object v5, v0, v3

    const-string v3, "FK_NAME"

    aput-object v3, v0, v2

    const-string v2, "PK_NAME"

    aput-object v2, v0, v4

    const-string v2, "DEFERRABILITY SMALLINT"

    const/16 v3, 0xd

    aput-object v2, v0, v3

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "PKTABLE_NAME"

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "IN_DOUBT"

    .line 397
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 398
    new-array v0, v14, [Ljava/lang/String;

    const-string v2, "TRANSACTION"

    aput-object v2, v0, v1

    const-string v2, "STATE"

    aput-object v2, v0, v15

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "VIEWS"

    .line 382
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 383
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "TABLE_CATALOG"

    aput-object v2, v0, v1

    const-string v2, "TABLE_SCHEMA"

    aput-object v2, v0, v15

    const-string v2, "TABLE_NAME"

    aput-object v2, v0, v14

    const-string v2, "VIEW_DEFINITION"

    aput-object v2, v0, v13

    const-string v2, "CHECK_OPTION"

    aput-object v2, v0, v12

    const-string v2, "IS_UPDATABLE"

    aput-object v2, v0, v11

    const-string v2, "STATUS"

    aput-object v2, v0, v10

    const-string v2, "REMARKS"

    aput-object v2, v0, v9

    const-string v2, "ID INT"

    aput-object v2, v0, v8

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "TABLE_NAME"

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "COLLATIONS"

    .line 375
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 376
    new-array v0, v14, [Ljava/lang/String;

    const-string v2, "NAME"

    aput-object v2, v0, v1

    const-string v2, "KEY"

    aput-object v2, v0, v15

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "COLUMN_PRIVILEGES"

    .line 361
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 362
    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "GRANTOR"

    aput-object v2, v0, v1

    const-string v2, "GRANTEE"

    aput-object v2, v0, v15

    const-string v2, "TABLE_CATALOG"

    aput-object v2, v0, v14

    const-string v2, "TABLE_SCHEMA"

    aput-object v2, v0, v13

    const-string v2, "TABLE_NAME"

    aput-object v2, v0, v12

    const-string v2, "COLUMN_NAME"

    aput-object v2, v0, v11

    const-string v2, "PRIVILEGE_TYPE"

    aput-object v2, v0, v10

    const-string v2, "IS_GRANTABLE"

    aput-object v2, v0, v9

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "TABLE_NAME"

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "TABLE_PRIVILEGES"

    .line 348
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 349
    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "GRANTOR"

    aput-object v2, v0, v1

    const-string v2, "GRANTEE"

    aput-object v2, v0, v15

    const-string v2, "TABLE_CATALOG"

    aput-object v2, v0, v14

    const-string v2, "TABLE_SCHEMA"

    aput-object v2, v0, v13

    const-string v2, "TABLE_NAME"

    aput-object v2, v0, v12

    const-string v2, "PRIVILEGE_TYPE"

    aput-object v2, v0, v11

    const-string v2, "IS_GRANTABLE"

    aput-object v2, v0, v10

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "TABLE_NAME"

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "SCHEMATA"

    .line 335
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 336
    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "CATALOG_NAME"

    aput-object v2, v0, v1

    const-string v2, "SCHEMA_NAME"

    aput-object v2, v0, v15

    const-string v2, "SCHEMA_OWNER"

    aput-object v2, v0, v14

    const-string v2, "DEFAULT_CHARACTER_SET_NAME"

    aput-object v2, v0, v13

    const-string v2, "DEFAULT_COLLATION_NAME"

    aput-object v2, v0, v12

    const-string v2, "IS_DEFAULT BIT"

    aput-object v2, v0, v11

    const-string v2, "REMARKS"

    aput-object v2, v0, v10

    const-string v2, "ID INT"

    aput-object v2, v0, v9

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    const-string v0, "FUNCTION_ALIASES"

    .line 296
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 297
    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "ALIAS_CATALOG"

    aput-object v4, v0, v1

    const-string v4, "ALIAS_SCHEMA"

    aput-object v4, v0, v15

    const-string v4, "ALIAS_NAME"

    aput-object v4, v0, v14

    const-string v4, "JAVA_CLASS"

    aput-object v4, v0, v13

    const-string v4, "JAVA_METHOD"

    aput-object v4, v0, v12

    const-string v4, "DATA_TYPE INT"

    aput-object v4, v0, v11

    const-string v4, "TYPE_NAME"

    aput-object v4, v0, v10

    const-string v4, "COLUMN_COUNT INT"

    aput-object v4, v0, v9

    const-string v4, "RETURNS_RESULT SMALLINT"

    aput-object v4, v0, v8

    const-string v4, "REMARKS"

    aput-object v4, v0, v5

    const-string v4, "ID INT"

    aput-object v4, v0, v3

    const-string v3, "SOURCE"

    aput-object v3, v0, v2

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "RIGHTS"

    .line 283
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 284
    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "GRANTEE"

    aput-object v2, v0, v1

    const-string v2, "GRANTEETYPE"

    aput-object v2, v0, v15

    const-string v2, "GRANTEDROLE"

    aput-object v2, v0, v14

    const-string v2, "RIGHTS"

    aput-object v2, v0, v13

    const-string v2, "TABLE_SCHEMA"

    aput-object v2, v0, v12

    const-string v2, "TABLE_NAME"

    aput-object v2, v0, v11

    const-string v2, "ID INT"

    aput-object v2, v0, v10

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "TABLE_NAME"

    goto/16 :goto_0

    :pswitch_12
    const-string v0, "ROLES"

    .line 275
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 276
    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "NAME"

    aput-object v2, v0, v1

    const-string v2, "REMARKS"

    aput-object v2, v0, v15

    const-string v2, "ID INT"

    aput-object v2, v0, v14

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    const-string v0, "USERS"

    .line 266
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 267
    new-array v0, v12, [Ljava/lang/String;

    const-string v2, "NAME"

    aput-object v2, v0, v1

    const-string v2, "ADMIN"

    aput-object v2, v0, v15

    const-string v2, "REMARKS"

    aput-object v2, v0, v14

    const-string v2, "ID INT"

    aput-object v2, v0, v13

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    const-string v0, "SEQUENCES"

    .line 249
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 250
    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "SEQUENCE_CATALOG"

    aput-object v4, v0, v1

    const-string v4, "SEQUENCE_SCHEMA"

    aput-object v4, v0, v15

    const-string v4, "SEQUENCE_NAME"

    aput-object v4, v0, v14

    const-string v4, "CURRENT_VALUE BIGINT"

    aput-object v4, v0, v13

    const-string v4, "INCREMENT BIGINT"

    aput-object v4, v0, v12

    const-string v4, "IS_GENERATED BIT"

    aput-object v4, v0, v11

    const-string v4, "REMARKS"

    aput-object v4, v0, v10

    const-string v4, "CACHE BIGINT"

    aput-object v4, v0, v9

    const-string v4, "MIN_VALUE BIGINT"

    aput-object v4, v0, v8

    const-string v4, "MAX_VALUE BIGINT"

    aput-object v4, v0, v5

    const-string v4, "IS_CYCLE BIT"

    aput-object v4, v0, v3

    const-string v3, "ID INT"

    aput-object v3, v0, v2

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_15
    const-string v0, "HELP"

    .line 239
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 240
    new-array v0, v11, [Ljava/lang/String;

    const-string v2, "ID INT"

    aput-object v2, v0, v1

    const-string v2, "SECTION"

    aput-object v2, v0, v15

    const-string v2, "TOPIC"

    aput-object v2, v0, v14

    const-string v2, "SYNTAX"

    aput-object v2, v0, v13

    const-string v2, "TEXT"

    aput-object v2, v0, v12

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_16
    const-string v0, "SETTINGS"

    .line 235
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 236
    new-array v0, v14, [Ljava/lang/String;

    const-string v2, "NAME"

    aput-object v2, v0, v1

    const-string v2, "VALUE"

    aput-object v2, v0, v15

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_17
    const-string v0, "CATALOGS"

    .line 231
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 232
    new-array v0, v15, [Ljava/lang/String;

    const-string v2, "CATALOG_NAME"

    aput-object v2, v0, v1

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_18
    const-string v7, "TYPE_INFO"

    .line 212
    invoke-virtual {v6, v7}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 213
    new-array v0, v0, [Ljava/lang/String;

    const-string v7, "TYPE_NAME"

    aput-object v7, v0, v1

    const-string v7, "DATA_TYPE INT"

    aput-object v7, v0, v15

    const-string v7, "PRECISION INT"

    aput-object v7, v0, v14

    const-string v7, "PREFIX"

    aput-object v7, v0, v13

    const-string v7, "SUFFIX"

    aput-object v7, v0, v12

    const-string v7, "PARAMS"

    aput-object v7, v0, v11

    const-string v7, "AUTO_INCREMENT BIT"

    aput-object v7, v0, v10

    const-string v7, "MINIMUM_SCALE SMALLINT"

    aput-object v7, v0, v9

    const-string v7, "MAXIMUM_SCALE SMALLINT"

    aput-object v7, v0, v8

    const-string v7, "RADIX INT"

    aput-object v7, v0, v5

    const-string v5, "POS INT"

    aput-object v5, v0, v3

    const-string v3, "CASE_SENSITIVE BIT"

    aput-object v3, v0, v2

    const-string v2, "NULLABLE SMALLINT"

    aput-object v2, v0, v4

    const-string v2, "SEARCHABLE SMALLINT"

    const/16 v3, 0xd

    aput-object v2, v0, v3

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "TABLE_TYPES"

    .line 208
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 209
    new-array v0, v15, [Ljava/lang/String;

    const-string v2, "TYPE"

    aput-object v2, v0, v1

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1a
    const-string v7, "INDEXES"

    .line 181
    invoke-virtual {v6, v7}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    const/16 v7, 0x15

    .line 182
    new-array v7, v7, [Ljava/lang/String;

    const-string v16, "TABLE_CATALOG"

    aput-object v16, v7, v1

    const-string v16, "TABLE_SCHEMA"

    aput-object v16, v7, v15

    const-string v16, "TABLE_NAME"

    aput-object v16, v7, v14

    const-string v14, "NON_UNIQUE BIT"

    aput-object v14, v7, v13

    const-string v13, "INDEX_NAME"

    aput-object v13, v7, v12

    const-string v12, "ORDINAL_POSITION SMALLINT"

    aput-object v12, v7, v11

    const-string v11, "COLUMN_NAME"

    aput-object v11, v7, v10

    const-string v10, "CARDINALITY INT"

    aput-object v10, v7, v9

    const-string v9, "PRIMARY_KEY BIT"

    aput-object v9, v7, v8

    const-string v8, "INDEX_TYPE_NAME"

    aput-object v8, v7, v5

    const-string v5, "IS_GENERATED BIT"

    aput-object v5, v7, v3

    const-string v3, "INDEX_TYPE SMALLINT"

    aput-object v3, v7, v2

    const-string v2, "ASC_OR_DESC"

    aput-object v2, v7, v4

    const-string v2, "PAGES INT"

    const/16 v3, 0xd

    aput-object v2, v7, v3

    const-string v2, "FILTER_CONDITION"

    aput-object v2, v7, v0

    const/16 v0, 0xf

    const-string v2, "REMARKS"

    aput-object v2, v7, v0

    const/16 v0, 0x10

    const-string v2, "SQL"

    aput-object v2, v7, v0

    const/16 v0, 0x11

    const-string v2, "ID INT"

    aput-object v2, v7, v0

    const/16 v0, 0x12

    const-string v2, "SORT_TYPE INT"

    aput-object v2, v7, v0

    const/16 v0, 0x13

    const-string v2, "CONSTRAINT_NAME"

    aput-object v2, v7, v0

    const/16 v0, 0x14

    const-string v2, "INDEX_CLASS"

    aput-object v2, v7, v0

    invoke-direct {v6, v7}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "TABLE_NAME"

    goto/16 :goto_0

    :pswitch_1b
    const-string v7, "COLUMNS"

    .line 151
    invoke-virtual {v6, v7}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    const/16 v7, 0x17

    .line 152
    new-array v7, v7, [Ljava/lang/String;

    const-string v16, "TABLE_CATALOG"

    aput-object v16, v7, v1

    const-string v16, "TABLE_SCHEMA"

    aput-object v16, v7, v15

    const-string v16, "TABLE_NAME"

    aput-object v16, v7, v14

    const-string v14, "COLUMN_NAME"

    aput-object v14, v7, v13

    const-string v13, "ORDINAL_POSITION INT"

    aput-object v13, v7, v12

    const-string v12, "COLUMN_DEFAULT"

    aput-object v12, v7, v11

    const-string v11, "IS_NULLABLE"

    aput-object v11, v7, v10

    const-string v10, "DATA_TYPE INT"

    aput-object v10, v7, v9

    const-string v9, "CHARACTER_MAXIMUM_LENGTH INT"

    aput-object v9, v7, v8

    const-string v8, "CHARACTER_OCTET_LENGTH INT"

    aput-object v8, v7, v5

    const-string v5, "NUMERIC_PRECISION INT"

    aput-object v5, v7, v3

    const-string v3, "NUMERIC_PRECISION_RADIX INT"

    aput-object v3, v7, v2

    const-string v2, "NUMERIC_SCALE INT"

    aput-object v2, v7, v4

    const-string v2, "CHARACTER_SET_NAME"

    const/16 v3, 0xd

    aput-object v2, v7, v3

    const-string v2, "COLLATION_NAME"

    aput-object v2, v7, v0

    const/16 v0, 0xf

    const-string v2, "TYPE_NAME"

    aput-object v2, v7, v0

    const/16 v0, 0x10

    const-string v2, "NULLABLE INT"

    aput-object v2, v7, v0

    const/16 v0, 0x11

    const-string v2, "IS_COMPUTED BIT"

    aput-object v2, v7, v0

    const/16 v0, 0x12

    const-string v2, "SELECTIVITY INT"

    aput-object v2, v7, v0

    const/16 v0, 0x13

    const-string v2, "CHECK_CONSTRAINT"

    aput-object v2, v7, v0

    const/16 v0, 0x14

    const-string v2, "SEQUENCE_NAME"

    aput-object v2, v7, v0

    const/16 v0, 0x15

    const-string v2, "REMARKS"

    aput-object v2, v7, v0

    const/16 v0, 0x16

    const-string v2, "SOURCE_DATA_TYPE SMALLINT"

    aput-object v2, v7, v0

    invoke-direct {v6, v7}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "TABLE_NAME"

    goto :goto_0

    :pswitch_1c
    const-string v0, "TABLES"

    .line 132
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setObjectName(Ljava/lang/String;)V

    .line 133
    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "TABLE_CATALOG"

    aput-object v4, v0, v1

    const-string v4, "TABLE_SCHEMA"

    aput-object v4, v0, v15

    const-string v4, "TABLE_NAME"

    aput-object v4, v0, v14

    const-string v4, "TABLE_TYPE"

    aput-object v4, v0, v13

    const-string v4, "STORAGE_TYPE"

    aput-object v4, v0, v12

    const-string v4, "SQL"

    aput-object v4, v0, v11

    const-string v4, "REMARKS"

    aput-object v4, v0, v10

    const-string v4, "LAST_MODIFICATION BIGINT"

    aput-object v4, v0, v9

    const-string v4, "ID INT"

    aput-object v4, v0, v8

    const-string v4, "TYPE_NAME"

    aput-object v4, v0, v5

    const-string v4, "TABLE_CLASS"

    aput-object v4, v0, v3

    const-string v3, "ROW_COUNT_ESTIMATE BIGINT"

    aput-object v3, v0, v2

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v16, "TABLE_NAME"

    :goto_0
    move-object/from16 v2, v16

    .line 543
    invoke-virtual {v6, v0}, Lorg/h2/table/MetaTable;->setColumns([Lorg/h2/table/Column;)V

    if-nez v2, :cond_0

    const/4 v0, -0x1

    .line 546
    iput v0, v6, Lorg/h2/table/MetaTable;->indexColumn:I

    const/4 v0, 0x0

    .line 547
    iput-object v0, v6, Lorg/h2/table/MetaTable;->metaIndex:Lorg/h2/index/MetaIndex;

    goto :goto_1

    .line 549
    :cond_0
    invoke-virtual {v6, v2}, Lorg/h2/table/MetaTable;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/table/Column;->getColumnId()I

    move-result v2

    iput v2, v6, Lorg/h2/table/MetaTable;->indexColumn:I

    .line 550
    new-array v2, v15, [Lorg/h2/table/Column;

    iget v3, v6, Lorg/h2/table/MetaTable;->indexColumn:I

    aget-object v0, v0, v3

    aput-object v0, v2, v1

    invoke-static {v2}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    .line 552
    new-instance v2, Lorg/h2/index/MetaIndex;

    invoke-direct {v2, v6, v0, v1}, Lorg/h2/index/MetaIndex;-><init>(Lorg/h2/table/MetaTable;[Lorg/h2/table/IndexColumn;Z)V

    iput-object v2, v6, Lorg/h2/table/MetaTable;->metaIndex:Lorg/h2/index/MetaIndex;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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

.method private varargs add(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1973
    array-length v0, p2

    new-array v0, v0, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    .line 1974
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1975
    aget-object v2, p2, v1

    if-nez v2, :cond_0

    .line 1976
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    .line 1977
    :goto_1
    iget-object v3, p0, Lorg/h2/table/MetaTable;->columns:[Lorg/h2/table/Column;

    aget-object v3, v3, v1

    .line 1978
    invoke-virtual {v3, v2}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    .line 1979
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1981
    :cond_1
    iget-object p2, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p2

    .line 1982
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/h2/result/Row;->setKey(J)V

    .line 1983
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;",
            "Lorg/h2/engine/DbObject;",
            "Ljava/lang/String;",
            "Lorg/h2/table/Table;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p5

    const-string v4, "NO"

    .line 1926
    invoke-interface/range {p2 .. p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1927
    move-object/from16 v7, p2

    check-cast v7, Lorg/h2/engine/User;

    .line 1928
    invoke-virtual {v7}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v4, "YES"

    :cond_0
    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x7

    if-nez v3, :cond_1

    .line 1934
    new-array v3, v14, [Ljava/lang/String;

    aput-object v12, v3, v13

    invoke-interface/range {p2 .. p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    aput-object p3, v3, v6

    invoke-virtual/range {p4 .. p4}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-virtual/range {p4 .. p4}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    aput-object p6, v3, v8

    aput-object v4, v3, v7

    invoke-direct {p0, v1, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v14, 0x8

    .line 1951
    new-array v14, v14, [Ljava/lang/String;

    aput-object v12, v14, v13

    invoke-interface/range {p2 .. p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v11

    aput-object p3, v14, v6

    invoke-virtual/range {p4 .. p4}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v10

    invoke-virtual/range {p4 .. p4}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v9

    invoke-direct {p0, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v8

    aput-object p6, v14, v7

    const/4 v2, 0x7

    aput-object v4, v14, v2

    invoke-direct {p0, v1, v14}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addPrivileges(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;",
            "Lorg/h2/engine/DbObject;",
            "Ljava/lang/String;",
            "Lorg/h2/table/Table;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    const-string v7, "SELECT"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1910
    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    const-string v7, "INSERT"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1913
    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_2

    const-string v7, "UPDATE"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1916
    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_3

    const-string v6, "DELETE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1919
    invoke-direct/range {v0 .. v6}, Lorg/h2/table/MetaTable;->addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto :goto_1

    .line 636
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    .line 638
    iget-object v1, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    if-eqz v1, :cond_1

    .line 639
    invoke-static {p2}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object p2

    goto :goto_0

    .line 641
    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 643
    invoke-virtual {p1, p2, p3}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p3

    if-gez p3, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_3

    .line 646
    invoke-virtual {p1, p2, p4}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    if-lez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method private varargs createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;
    .locals 6

    .line 557
    array-length v0, p1

    new-array v0, v0, [Lorg/h2/table/Column;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 558
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 559
    aget-object v3, p1, v2

    const/16 v4, 0x20

    .line 560
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 564
    iget-object v4, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto :goto_1

    :cond_0
    const/16 v4, 0xd

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 568
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v5

    iget v5, v5, Lorg/h2/value/DataType;->type:I

    .line 569
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v4, v5

    .line 571
    :goto_1
    new-instance v5, Lorg/h2/table/Column;

    invoke-direct {v5, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 613
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLocalTempTables()Ljava/util/ArrayList;

    move-result-object p1

    .line 614
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getMetaTableTypeCount()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method private static getRefAction(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTablesByName(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    if-eqz v0, :cond_0

    .line 620
    invoke-static {p2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 622
    :cond_0
    iget-object v0, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p2}, Lorg/h2/engine/Database;->getTableOrViewByName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 623
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLocalTempTables()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    .line 624
    invoke-virtual {v1}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z
    .locals 0

    .line 657
    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private identifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 606
    :cond_0
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    const-string p1, "META"

    .line 590
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "META"

    .line 1889
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "META"

    .line 1988
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "META"

    .line 1993
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public generateRows(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Ljava/util/ArrayList;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/result/SearchRow;",
            "Lorg/h2/result/SearchRow;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 673
    iget v3, v8, Lorg/h2/table/MetaTable;->indexColumn:I

    if-ltz v3, :cond_2

    if-eqz v1, :cond_0

    .line 675
    iget v3, v8, Lorg/h2/table/MetaTable;->indexColumn:I

    invoke-interface {v1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 678
    iget v3, v8, Lorg/h2/table/MetaTable;->indexColumn:I

    invoke-interface {v2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    move-object v9, v1

    move-object v10, v2

    goto :goto_2

    :cond_1
    move-object v9, v1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x0

    .line 682
    :goto_2
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 683
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 684
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v1

    .line 685
    iget v2, v8, Lorg/h2/table/MetaTable;->type:I

    const/16 v6, 0xc

    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lorg/h2/table/MetaTable;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_67

    .line 1828
    :pswitch_0
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getQueryStatisticsData()Lorg/h2/engine/QueryStatisticsData;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 1830
    invoke-virtual {v0}, Lorg/h2/engine/QueryStatisticsData;->getQueries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;

    .line 1831
    new-array v2, v6, [Ljava/lang/String;

    iget-object v9, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->sqlStatement:Ljava/lang/String;

    aput-object v9, v2, v13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMin:J

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMax:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeCumulative:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMean:D

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->getExecutionTimeStandardDeviation()D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMax:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountCumulative:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMean:D

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->getRowCountStandardDeviation()D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1784
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getVariableNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1785
    invoke-virtual {v0, v4}, Lorg/h2/engine/Session;->getVariable(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v5

    .line 1786
    new-array v6, v14, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SET @"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v15

    invoke-direct {v8, v11, v6}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1793
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getLocalTempTables()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    .line 1794
    new-array v3, v14, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-virtual {v2}, Lorg/h2/table/Table;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v15

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_5

    .line 1801
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getSchemaSearchPath()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1802
    array-length v2, v1

    if-lez v2, :cond_6

    .line 1803
    new-instance v2, Lorg/h2/util/StatementBuilder;

    const-string v3, "SET SCHEMA_SEARCH_PATH "

    invoke-direct {v2, v3}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 1805
    array-length v3, v1

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    const-string v6, ", "

    .line 1806
    invoke-virtual {v2, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 1807
    invoke-static {v5}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1809
    :cond_5
    new-array v1, v14, [Ljava/lang/String;

    const-string v3, "SCHEMA_SEARCH_PATH"

    aput-object v3, v1, v13

    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 1816
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 1818
    new-array v1, v14, [Ljava/lang/String;

    const-string v2, "SCHEMA"

    aput-object v2, v1, v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET SCHEMA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v15

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_67

    .line 1765
    :pswitch_2
    iget-object v2, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v13}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_63

    aget-object v6, v2, v4

    if-nez v1, :cond_7

    if-ne v6, v0, :cond_9

    .line 1767
    :cond_7
    invoke-virtual {v6}, Lorg/h2/engine/Session;->getLocks()[Lorg/h2/table/Table;

    move-result-object v9

    array-length v10, v9

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v10, :cond_9

    aget-object v5, v9, v12

    .line 1768
    new-array v14, v7, [Ljava/lang/String;

    invoke-virtual {v5}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v13

    invoke-virtual {v5}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getId()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v14, v15

    invoke-virtual {v5, v6}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "WRITE"

    :goto_9
    const/4 v7, 0x3

    goto :goto_a

    :cond_8
    const-string v5, "READ"

    goto :goto_9

    :goto_a
    aput-object v5, v14, v7

    invoke-direct {v8, v11, v14}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_7

    .line 1738
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1739
    iget-object v4, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, v13}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_63

    aget-object v7, v4, v6

    if-nez v1, :cond_b

    if-ne v7, v0, :cond_a

    goto :goto_c

    :cond_a
    move-wide/from16 v27, v2

    goto/16 :goto_f

    .line 1741
    :cond_b
    :goto_c
    invoke-virtual {v7}, Lorg/h2/engine/Session;->getCurrentCommand()Lorg/h2/command/Command;

    move-result-object v9

    .line 1742
    invoke-virtual {v7}, Lorg/h2/engine/Session;->getCurrentCommandStart()J

    move-result-wide v14

    const-wide/16 v17, 0x0

    cmp-long v10, v14, v17

    if-nez v10, :cond_c

    move-wide v14, v2

    :cond_c
    const/4 v10, 0x6

    .line 1746
    new-array v12, v10, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/engine/Session;->getId()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {v7}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v12, v13

    new-instance v10, Ljava/sql/Timestamp;

    move-wide/from16 v27, v2

    invoke-virtual {v7}, Lorg/h2/engine/Session;->getSessionStart()J

    move-result-wide v2

    invoke-direct {v10, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v10}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v12, v3

    if-nez v9, :cond_d

    const/4 v2, 0x0

    :goto_d
    const/4 v3, 0x3

    goto :goto_e

    :cond_d
    invoke-virtual {v9}, Lorg/h2/command/Command;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :goto_e
    aput-object v2, v12, v3

    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v14, v15}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v12, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/engine/Session;->containsUncommitted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v12, v3

    invoke-direct {v8, v11, v12}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v2, v27

    const/4 v13, 0x0

    goto/16 :goto_b

    .line 1700
    :pswitch_4
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 1702
    check-cast v1, Lorg/h2/schema/TriggerObject;

    .line 1703
    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    const/16 v3, 0xe

    .line 1704
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getTypeNameList()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aput-object v12, v3, v4

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-virtual {v2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->isBefore()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getTriggerClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getQueueSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->isNoWait()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v3, v2

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1664
    :pswitch_5
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllUserDataTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/UserDataType;

    .line 1665
    invoke-virtual {v2}, Lorg/h2/engine/UserDataType;->getColumn()Lorg/h2/table/Column;

    move-result-object v3

    const/16 v4, 0xe

    .line 1666
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const-string v5, "PUBLIC"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v2}, Lorg/h2/engine/UserDataType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v3}, Lorg/h2/table/Column;->getDefaultSQL()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    invoke-virtual {v3}, Lorg/h2/table/Column;->isNullable()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "YES"

    :goto_12
    const/4 v7, 0x4

    goto :goto_13

    :cond_e
    const-string v5, "NO"

    goto :goto_12

    :goto_13
    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getDataType()Lorg/h2/value/DataType;

    move-result-object v7

    iget v7, v7, Lorg/h2/value/DataType;->sqlType:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getPrecisionAsInt()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getScale()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x7

    aput-object v5, v4, v7

    invoke-virtual {v3}, Lorg/h2/table/Column;->getDataType()Lorg/h2/value/DataType;

    move-result-object v5

    iget-object v5, v5, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    const/16 v7, 0x8

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "VALUE"

    invoke-virtual {v3, v0, v7}, Lorg/h2/table/Column;->getCheckConstraintSQL(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    aput-object v3, v4, v5

    invoke-virtual {v2}, Lorg/h2/engine/UserDataType;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v4, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/engine/UserDataType;->getCreateSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/engine/UserDataType;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v4, v3

    invoke-direct {v8, v11, v4}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1640
    :pswitch_6
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 1642
    check-cast v1, Lorg/h2/schema/Constant;

    .line 1643
    invoke-virtual {v1}, Lorg/h2/schema/Constant;->getValue()Lorg/h2/expression/ValueExpression;

    move-result-object v2

    const/4 v3, 0x7

    .line 1644
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v4, v3

    invoke-virtual {v1}, Lorg/h2/schema/Constant;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v1}, Lorg/h2/schema/Constant;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/expression/ValueExpression;->getType()I

    move-result v5

    invoke-static {v5}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-virtual {v1}, Lorg/h2/schema/Constant;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v4, v5

    invoke-virtual {v2}, Lorg/h2/expression/ValueExpression;->getSQL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v4, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/schema/Constant;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v4, v2

    invoke-direct {v8, v11, v4}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_14

    .line 1293
    :pswitch_7
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 1294
    check-cast v1, Lorg/h2/engine/FunctionAlias;

    .line 1297
    :try_start_0
    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethods()[Lorg/h2/engine/FunctionAlias$JavaMethod;

    move-result-object v2
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_15

    :catch_0
    const/4 v2, 0x0

    .line 1299
    new-array v3, v2, [Lorg/h2/engine/FunctionAlias$JavaMethod;

    move-object v2, v3

    .line 1301
    :goto_15
    array-length v3, v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_f

    aget-object v5, v2, v4

    .line 1303
    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v7

    if-eqz v7, :cond_10

    .line 1304
    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v7

    invoke-static {v7}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v7

    const/16 v9, 0x11

    .line 1305
    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x2

    aput-object v10, v9, v13

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaClassName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x3

    aput-object v10, v9, v13

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethodName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x4

    aput-object v10, v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x5

    aput-object v10, v9, v13

    const-string v10, "0"

    const/4 v13, 0x6

    aput-object v10, v9, v13

    const-string v10, "P0"

    const/4 v13, 0x7

    aput-object v10, v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v13

    invoke-static {v13}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x8

    aput-object v10, v9, v13

    iget-object v10, v7, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    const/16 v13, 0x9

    aput-object v10, v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v7, Lorg/h2/value/DataType;->defaultPrecision:J

    invoke-static {v13, v14}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0xa

    aput-object v10, v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lorg/h2/value/DataType;->defaultScale:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xb

    aput-object v7, v9, v10

    const-string v7, "10"

    aput-object v7, v9, v6

    const-string v7, "2"

    const/16 v10, 0xd

    aput-object v7, v9, v10

    const/16 v7, 0xe

    const-string v10, "5"

    aput-object v10, v9, v7

    const/16 v7, 0xf

    const-string v10, ""

    aput-object v10, v9, v7

    const/16 v7, 0x10

    const/4 v10, 0x0

    aput-object v10, v9, v7

    invoke-direct {v8, v11, v9}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 1342
    :cond_10
    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getColumnClasses()[Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x0

    .line 1343
    :goto_17
    array-length v10, v7

    if-ge v9, v10, :cond_12

    .line 1344
    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam()Z

    move-result v10

    if-eqz v10, :cond_11

    if-nez v9, :cond_11

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    goto/16 :goto_18

    .line 1347
    :cond_11
    aget-object v10, v7, v9

    .line 1348
    invoke-static {v10}, Lorg/h2/value/DataType;->getTypeFromClass(Ljava/lang/Class;)I

    move-result v13

    .line 1349
    invoke-static {v13}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v13

    .line 1350
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    const/4 v14, 0x1

    xor-int/2addr v10, v14

    const/16 v15, 0x11

    .line 1352
    new-array v15, v15, [Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v12, v15, v25

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v15, v14

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v23, 0x2

    aput-object v14, v15, v23

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaClassName()Ljava/lang/String;

    move-result-object v14

    const/16 v22, 0x3

    aput-object v14, v15, v22

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethodName()Ljava/lang/String;

    move-result-object v14

    const/16 v24, 0x4

    aput-object v14, v15, v24

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x5

    aput-object v6, v15, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam()Z

    move-result v14

    const/16 v25, 0x1

    xor-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v9

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x6

    aput-object v6, v15, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "P"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x7

    aput-object v6, v15, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v13, Lorg/h2/value/DataType;->type:I

    invoke-static {v14}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x8

    aput-object v6, v15, v14

    iget-object v6, v13, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    const/16 v14, 0x9

    aput-object v6, v15, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    iget-wide v0, v13, Lorg/h2/value/DataType;->defaultPrecision:J

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v15, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lorg/h2/value/DataType;->defaultScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v15, v1

    const-string v0, "10"

    const/16 v1, 0xc

    aput-object v0, v15, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v15, v1

    const/16 v0, 0xe

    const-string v1, "1"

    aput-object v1, v15, v0

    const/16 v0, 0xf

    const-string v1, ""

    aput-object v1, v15, v0

    const/16 v0, 0x10

    const/4 v1, 0x0

    aput-object v1, v15, v0

    invoke-direct {v8, v11, v15}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :goto_18
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    const/16 v6, 0xc

    goto/16 :goto_17

    :cond_12
    move-object/from16 v29, v0

    move-object/from16 v30, v1

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0xc

    goto/16 :goto_16

    .line 1572
    :pswitch_8
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    .line 1574
    check-cast v2, Lorg/h2/constraint/Constraint;

    .line 1575
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v3

    .line 1578
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v4

    .line 1579
    invoke-direct {v8, v4, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_19

    .line 1582
    :cond_13
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getUniqueIndex()Lorg/h2/index/Index;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1585
    invoke-interface {v5}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    :cond_14
    const/4 v5, 0x0

    .line 1587
    :goto_1a
    invoke-virtual {v4}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1588
    invoke-direct {v8, v0, v6, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_19

    :cond_15
    const-string v7, "CHECK"

    .line 1591
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1592
    move-object v7, v2

    check-cast v7, Lorg/h2/constraint/ConstraintCheck;

    invoke-virtual {v7}, Lorg/h2/constraint/ConstraintCheck;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    const/4 v7, 0x0

    goto :goto_1d

    :cond_16
    const-string v7, "UNIQUE"

    .line 1593
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    const-string v7, "PRIMARY KEY"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_1b

    :cond_17
    const-string v7, "REFERENTIAL"

    .line 1596
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1597
    move-object v7, v2

    check-cast v7, Lorg/h2/constraint/ConstraintReferential;

    invoke-virtual {v7}, Lorg/h2/constraint/ConstraintReferential;->getColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v7

    goto :goto_1c

    :cond_18
    const/4 v7, 0x0

    goto :goto_1c

    .line 1595
    :cond_19
    :goto_1b
    move-object v7, v2

    check-cast v7, Lorg/h2/constraint/ConstraintUnique;

    invoke-virtual {v7}, Lorg/h2/constraint/ConstraintUnique;->getColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v7

    :goto_1c
    const/4 v13, 0x0

    :goto_1d
    if-eqz v7, :cond_1b

    .line 1601
    new-instance v14, Lorg/h2/util/StatementBuilder;

    invoke-direct {v14}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 1602
    array-length v15, v7

    move-object/from16 v31, v1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v15, :cond_1a

    move/from16 v32, v15

    aget-object v15, v7, v1

    move-object/from16 v33, v7

    const-string v7, ","

    .line 1603
    invoke-virtual {v14, v7}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 1604
    iget-object v7, v15, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v32

    move-object/from16 v7, v33

    goto :goto_1e

    .line 1606
    :cond_1a
    invoke-virtual {v14}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1b
    move-object/from16 v31, v1

    const/4 v1, 0x0

    :goto_1f
    const/16 v7, 0xd

    .line 1608
    new-array v14, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v14, v7

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v14, v15

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v14, v15

    const/4 v7, 0x3

    aput-object v3, v14, v7

    const/4 v3, 0x4

    aput-object v12, v14, v3

    invoke-virtual {v4}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v14, v4

    const/4 v3, 0x6

    aput-object v6, v14, v3

    const/4 v3, 0x7

    aput-object v5, v14, v3

    const/16 v3, 0x8

    aput-object v13, v14, v3

    const/16 v3, 0x9

    aput-object v1, v14, v3

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v14, v3

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getCreateSQL()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v14, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v14, v2

    invoke-direct {v8, v11, v14}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    move-object/from16 v1, v31

    goto/16 :goto_19

    .line 1519
    :pswitch_9
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    .line 1521
    check-cast v2, Lorg/h2/constraint/Constraint;

    .line 1522
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "REFERENTIAL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_20

    .line 1525
    :cond_1d
    check-cast v2, Lorg/h2/constraint/ConstraintReferential;

    .line 1526
    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v3

    .line 1527
    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getRefColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    .line 1528
    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getTable()Lorg/h2/table/Table;

    move-result-object v5

    .line 1529
    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getRefTable()Lorg/h2/table/Table;

    move-result-object v6

    .line 1530
    invoke-virtual {v6}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1531
    invoke-direct {v8, v0, v7, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_20

    .line 1534
    :cond_1e
    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getUpdateAction()I

    move-result v7

    invoke-static {v7}, Lorg/h2/table/MetaTable;->getRefAction(I)I

    move-result v7

    .line 1535
    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getDeleteAction()I

    move-result v13

    invoke-static {v13}, Lorg/h2/table/MetaTable;->getRefAction(I)I

    move-result v13

    const/4 v14, 0x0

    .line 1536
    :goto_21
    array-length v15, v3

    if-ge v14, v15, :cond_1c

    const/16 v15, 0xe

    .line 1537
    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-virtual {v6}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v16

    move-object/from16 v34, v1

    invoke-virtual/range {v16 .. v16}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v15, v16

    invoke-virtual {v6}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x2

    aput-object v1, v15, v16

    aget-object v1, v4, v14

    iget-object v1, v1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x3

    aput-object v1, v15, v16

    const/4 v1, 0x4

    aput-object v12, v15, v1

    invoke-virtual {v5}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x5

    aput-object v1, v15, v16

    invoke-virtual {v5}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x6

    aput-object v1, v15, v16

    aget-object v1, v3, v14

    iget-object v1, v1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x7

    aput-object v1, v15, v16

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x8

    aput-object v1, v15, v16

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x9

    aput-object v1, v15, v16

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0xa

    aput-object v1, v15, v16

    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0xb

    aput-object v1, v15, v16

    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getUniqueIndex()Lorg/h2/index/Index;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0xc

    aput-object v1, v15, v16

    const-string v1, "7"

    const/16 v16, 0xd

    aput-object v1, v15, v16

    invoke-direct {v8, v11, v15}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    move-object/from16 v1, v34

    goto/16 :goto_21

    .line 1505
    :pswitch_a
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_63

    if-eqz v1, :cond_63

    .line 1507
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/store/InDoubtTransaction;

    const/4 v2, 0x2

    .line 1508
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1}, Lorg/h2/store/InDoubtTransaction;->getTransactionName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-interface {v1}, Lorg/h2/store/InDoubtTransaction;->getState()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_22

    .line 1472
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lorg/h2/table/MetaTable;->getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    .line 1473
    invoke-virtual {v2}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VIEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_23

    .line 1476
    :cond_1f
    invoke-virtual {v2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1477
    invoke-direct {v8, v0, v3, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_23

    .line 1480
    :cond_20
    move-object v4, v2

    check-cast v4, Lorg/h2/table/TableView;

    const/16 v5, 0x9

    .line 1481
    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v6, v5

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v5, 0x2

    aput-object v3, v6, v5

    invoke-virtual {v2}, Lorg/h2/table/Table;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    const-string v2, "NONE"

    const/4 v3, 0x4

    aput-object v2, v6, v3

    const-string v2, "NO"

    const/4 v3, 0x5

    aput-object v2, v6, v3

    invoke-virtual {v4}, Lorg/h2/table/TableView;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "INVALID"

    :goto_24
    const/4 v3, 0x6

    goto :goto_25

    :cond_21
    const-string v2, "VALID"

    goto :goto_24

    :goto_25
    aput-object v2, v6, v3

    invoke-virtual {v4}, Lorg/h2/table/TableView;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v6, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/h2/table/TableView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v6, v3

    invoke-direct {v8, v11, v6}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_23

    .line 1461
    :pswitch_c
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_63

    aget-object v3, v0, v2

    const/4 v4, 0x2

    .line 1462
    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3}, Lorg/h2/value/CompareMode;->getName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    invoke-direct {v8, v11, v5}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1438
    :pswitch_d
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_22
    :goto_27
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Right;

    .line 1439
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v2

    .line 1440
    instance-of v3, v2, Lorg/h2/table/Table;

    if-nez v3, :cond_23

    goto :goto_27

    .line 1443
    :cond_23
    move-object v14, v2

    check-cast v14, Lorg/h2/table/Table;

    if-eqz v14, :cond_22

    .line 1444
    invoke-direct {v8, v14, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_27

    .line 1447
    :cond_24
    invoke-virtual {v14}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1448
    invoke-direct {v8, v0, v2, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_27

    .line 1451
    :cond_25
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v15

    .line 1452
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v16

    .line 1453
    invoke-virtual {v14}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v6, :cond_22

    aget-object v1, v7, v5

    .line 1454
    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v15

    move-object v4, v12

    move/from16 v18, v5

    move-object v5, v14

    move/from16 v19, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivileges(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;I)V

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v7, v17

    move/from16 v6, v19

    goto :goto_28

    .line 1419
    :pswitch_e
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_26
    :goto_29
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Right;

    .line 1420
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v2

    .line 1421
    instance-of v3, v2, Lorg/h2/table/Table;

    if-nez v3, :cond_27

    goto :goto_29

    .line 1424
    :cond_27
    move-object v5, v2

    check-cast v5, Lorg/h2/table/Table;

    if-eqz v5, :cond_26

    .line 1425
    invoke-direct {v8, v5, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    .line 1428
    :cond_28
    invoke-virtual {v5}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1429
    invoke-direct {v8, v0, v2, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_29

    .line 1432
    :cond_29
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v1}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v7

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v4, v12

    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivileges(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;I)V

    goto :goto_29

    .line 1394
    :pswitch_f
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1395
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    const/16 v3, 0x8

    .line 1396
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v4, v3

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getOwner()Lorg/h2/engine/User;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "Unicode"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const/4 v3, 0x4

    aput-object v0, v4, v3

    const-string v3, "PUBLIC"

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, "TRUE"

    :goto_2b
    const/4 v5, 0x5

    goto :goto_2c

    :cond_2a
    const-string v3, "FALSE"

    goto :goto_2b

    :goto_2c
    aput-object v3, v4, v5

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v4, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v4, v3

    invoke-direct {v8, v11, v4}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_2a

    .line 1218
    :pswitch_10
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 1219
    check-cast v1, Lorg/h2/engine/FunctionAlias;

    .line 1222
    :try_start_1
    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethods()[Lorg/h2/engine/FunctionAlias$JavaMethod;

    move-result-object v2
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_2d

    :catch_1
    const/4 v2, 0x0

    .line 1224
    new-array v3, v2, [Lorg/h2/engine/FunctionAlias$JavaMethod;

    .line 1226
    :goto_2d
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_2b

    aget-object v6, v3, v5

    .line 1227
    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v7

    if-nez v7, :cond_2c

    const/4 v7, 0x1

    :goto_2f
    const/16 v9, 0xc

    goto :goto_30

    :cond_2c
    const/4 v7, 0x2

    goto :goto_2f

    .line 1230
    :goto_30
    new-array v10, v9, [Ljava/lang/String;

    aput-object v12, v10, v2

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v10, v9

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    aput-object v2, v10, v9

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x3

    aput-object v2, v10, v9

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x4

    aput-object v2, v10, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v9

    invoke-static {v9}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x5

    aput-object v2, v10, v9

    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v2

    invoke-static {v2}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v2

    iget-object v2, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    const/4 v9, 0x6

    aput-object v2, v10, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v10, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v10, v6

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x9

    aput-object v2, v10, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xa

    aput-object v2, v10, v6

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getSource()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb

    aput-object v2, v10, v6

    invoke-direct {v8, v11, v10}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2e

    .line 1259
    :cond_2d
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllAggregates()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/UserAggregate;

    const/16 v2, 0xc

    .line 1261
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v3, v2

    const-string v2, "PUBLIC"

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/engine/UserAggregate;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/engine/UserAggregate;->getJavaClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const-string v2, ""

    const/4 v4, 0x4

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v3, v5

    invoke-static {v4}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v2

    iget-object v2, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v2, v3, v4

    const-string v2, "1"

    const/4 v4, 0x7

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/engine/UserAggregate;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/UserAggregate;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v3, v2

    const-string v1, ""

    const/16 v2, 0xb

    aput-object v1, v3, v2

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_31

    :pswitch_11
    if-eqz v1, :cond_63

    .line 1156
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    .line 1157
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedRole()Lorg/h2/engine/Role;

    move-result-object v3

    .line 1158
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v4

    .line 1159
    invoke-interface {v4}, Lorg/h2/engine/DbObject;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2e

    const-string v5, "USER"

    goto :goto_33

    :cond_2e
    const-string v5, "ROLE"

    :goto_33
    if-nez v3, :cond_34

    .line 1162
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1166
    instance-of v6, v3, Lorg/h2/schema/Schema;

    if-eqz v6, :cond_2f

    .line 1167
    check-cast v3, Lorg/h2/schema/Schema;

    move-object v6, v3

    const/4 v3, 0x0

    goto :goto_34

    .line 1168
    :cond_2f
    instance-of v6, v3, Lorg/h2/table/Table;

    if-eqz v6, :cond_30

    .line 1169
    check-cast v3, Lorg/h2/table/Table;

    .line 1170
    invoke-virtual {v3}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    goto :goto_34

    :cond_30
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_34
    if-eqz v3, :cond_31

    .line 1173
    invoke-virtual {v3}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    :cond_31
    const-string v3, ""

    :goto_35
    if-eqz v6, :cond_32

    .line 1174
    invoke-virtual {v6}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    :cond_32
    const-string v6, ""

    .line 1175
    :goto_36
    invoke-direct {v8, v0, v3, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v7

    if-nez v7, :cond_33

    goto :goto_32

    :cond_33
    const/4 v7, 0x7

    .line 1178
    new-array v12, v7, [Ljava/lang/String;

    invoke-interface {v4}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v12, v7

    const/4 v4, 0x1

    aput-object v5, v12, v4

    const-string v4, ""

    const/4 v5, 0x2

    aput-object v4, v12, v5

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getRights()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v12, v5

    const/4 v4, 0x4

    aput-object v6, v12, v4

    const/4 v4, 0x5

    aput-object v3, v12, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v12, v3

    invoke-direct {v8, v11, v12}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_34
    const/4 v6, 0x7

    .line 1195
    new-array v7, v6, [Ljava/lang/String;

    invoke-interface {v4}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v7, v6

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-virtual {v3}, Lorg/h2/engine/Role;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v7, v4

    const-string v3, ""

    const/4 v4, 0x3

    aput-object v3, v7, v4

    const-string v3, ""

    const/4 v4, 0x4

    aput-object v3, v7, v4

    const-string v3, ""

    const/4 v4, 0x5

    aput-object v3, v7, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v7, v3

    invoke-direct {v8, v11, v7}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_32

    .line 1140
    :pswitch_12
    iget-object v2, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getAllRoles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Role;

    if-nez v1, :cond_36

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/h2/engine/User;->isRoleGranted(Lorg/h2/engine/Role;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_36
    const/4 v4, 0x3

    .line 1142
    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v3}, Lorg/h2/engine/Role;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3}, Lorg/h2/engine/Role;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/engine/Role;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v5, v4

    invoke-direct {v8, v11, v5}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_37

    .line 1123
    :pswitch_13
    iget-object v2, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/User;

    if-nez v1, :cond_38

    .line 1124
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    if-ne v4, v3, :cond_37

    goto :goto_39

    :cond_37
    const/4 v4, 0x3

    goto :goto_38

    :cond_38
    :goto_39
    const/4 v4, 0x4

    .line 1125
    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v3}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v3}, Lorg/h2/engine/User;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/engine/User;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v5, v4

    invoke-direct {v8, v11, v5}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_38

    :pswitch_14
    const/4 v4, 0x3

    .line 1090
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v4}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 1092
    check-cast v1, Lorg/h2/schema/Sequence;

    const/16 v2, 0xc

    .line 1093
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v3, v2

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getCurrentValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getIncrement()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getBelongsToTable()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "TRUE"

    :goto_3b
    const/4 v4, 0x5

    goto :goto_3c

    :cond_39
    const-string v2, "FALSE"

    goto :goto_3b

    :goto_3c
    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getCacheSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getMinValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getMaxValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getCycle()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "TRUE"

    :goto_3d
    const/16 v4, 0xa

    goto :goto_3e

    :cond_3a
    const-string v2, "FALSE"

    goto :goto_3d

    :goto_3e
    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v3, v2

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_3a

    :pswitch_15
    const-string v0, "/org/h2/res/help.csv"

    .line 1064
    :try_start_2
    invoke-static {v0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    .line 1065
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1067
    new-instance v0, Lorg/h2/tools/Csv;

    invoke-direct {v0}, Lorg/h2/tools/Csv;-><init>()V

    const/16 v2, 0x23

    .line 1068
    invoke-virtual {v0, v2}, Lorg/h2/tools/Csv;->setLineCommentCharacter(C)V

    const/4 v2, 0x0

    .line 1069
    invoke-virtual {v0, v1, v2}, Lorg/h2/tools/Csv;->read(Ljava/io/Reader;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 1070
    :goto_3f
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x5

    .line 1071
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :catch_2
    move-exception v0

    .line 1085
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 935
    :pswitch_16
    iget-object v2, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Setting;

    .line 936
    invoke-virtual {v3}, Lorg/h2/engine/Setting;->getStringValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3b

    .line 938
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/engine/Setting;->getIntValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3b
    const/4 v5, 0x2

    .line 940
    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v3}, Lorg/h2/engine/Setting;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-direct {v8, v11, v6}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_40

    :cond_3c
    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 945
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "info.BUILD_ID"

    aput-object v4, v2, v7

    const-string v4, "192"

    aput-object v4, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 946
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "info.VERSION_MAJOR"

    aput-object v4, v2, v7

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 947
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "info.VERSION_MINOR"

    aput-object v4, v2, v7

    const-string v4, "4"

    aput-object v4, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 948
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "info.VERSION"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    if-eqz v1, :cond_3d

    const/16 v1, 0xe

    .line 950
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "java.runtime.version"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "java.vm.name"

    aput-object v2, v1, v4

    const-string v2, "java.vendor"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "os.name"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "os.arch"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "os.version"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "sun.os.patch.level"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "file.separator"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "path.separator"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "line.separator"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "user.country"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "user.language"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "user.variant"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "file.encoding"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 956
    array-length v2, v1

    const/4 v3, 0x0

    :goto_41
    if-ge v3, v2, :cond_3d

    aget-object v4, v1, v3

    const/4 v5, 0x2

    .line 957
    new-array v6, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "property."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, ""

    invoke-static {v4, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-direct {v8, v11, v6}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_3d
    const/4 v1, 0x2

    .line 960
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "EXCLUSIVE"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getExclusiveSession()Lorg/h2/engine/Session;

    move-result-object v1

    if-nez v1, :cond_3e

    const-string v1, "FALSE"

    :goto_42
    const/4 v3, 0x1

    goto :goto_43

    :cond_3e
    const-string v1, "TRUE"

    goto :goto_42

    :goto_43
    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 962
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "MODE"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/engine/Mode;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 963
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "MULTI_THREADED"

    aput-object v1, v2, v5

    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "1"

    :goto_44
    const/4 v3, 0x1

    goto :goto_45

    :cond_3f
    const-string v1, "0"

    goto :goto_44

    :goto_45
    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 964
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "MVCC"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "TRUE"

    :goto_46
    const/4 v3, 0x1

    goto :goto_47

    :cond_40
    const-string v1, "FALSE"

    goto :goto_46

    :goto_47
    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 965
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "QUERY_TIMEOUT"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getQueryTimeout()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 966
    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "RETENTION_TIME"

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getRetentionTime()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 967
    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "LOG"

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getLogMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 969
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 970
    iget-object v1, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbSettings;->getSettings()Ljava/util/HashMap;

    move-result-object v1

    .line 971
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 972
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 974
    :cond_41
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 975
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    .line 976
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    invoke-direct {v8, v11, v4}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_49

    .line 978
    :cond_42
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 979
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-eqz v0, :cond_43

    const/4 v1, 0x2

    .line 981
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "info.FILE_WRITE_TOTAL"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 983
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "info.FILE_WRITE"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getWriteCount()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 985
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "info.FILE_READ"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getReadCount()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 987
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "info.PAGE_COUNT"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 989
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "info.PAGE_SIZE"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 991
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "info.CACHE_MAX_SIZE"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getCache()Lorg/h2/util/Cache;

    move-result-object v3

    invoke-interface {v3}, Lorg/h2/util/Cache;->getMaxMemory()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 993
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "info.CACHE_SIZE"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getCache()Lorg/h2/util/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/util/Cache;->getMemory()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 996
    :cond_43
    iget-object v0, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 998
    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v1

    const/4 v2, 0x2

    .line 999
    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "info.FILE_WRITE"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->getWriteCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 1001
    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "info.FILE_READ"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 1005
    :try_start_3
    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->getFile()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v3, 0x1000

    int-to-long v4, v3

    .line 1010
    div-long/2addr v1, v4

    const/4 v4, 0x2

    .line 1011
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "info.PAGE_COUNT"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-direct {v8, v11, v5}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 1013
    new-array v1, v4, [Ljava/lang/String;

    const-string v5, "info.PAGE_SIZE"

    aput-object v5, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 1015
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "info.CACHE_MAX_SIZE"

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/mvstore/MVStore;->getCacheSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 1017
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "info.CACHE_SIZE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getCacheSizeUsed()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_67

    :catch_3
    move-exception v0

    const-string v1, "Can not get size"

    .line 1007
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_17
    const/4 v0, 0x1

    .line 931
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_67

    .line 1024
    :pswitch_18
    invoke-static {}, Lorg/h2/value/DataType;->getTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_44
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/DataType;

    .line 1025
    iget-boolean v2, v1, Lorg/h2/value/DataType;->hidden:Z

    if-nez v2, :cond_44

    iget v2, v1, Lorg/h2/value/DataType;->sqlType:I

    if-nez v2, :cond_45

    goto :goto_4a

    :cond_45
    const/16 v2, 0xe

    .line 1028
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, v1, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v1, Lorg/h2/value/DataType;->sqlType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-wide v3, v1, Lorg/h2/value/DataType;->maxPrecision:J

    invoke-static {v3, v4}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, v1, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, v1, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, v1, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-boolean v3, v1, Lorg/h2/value/DataType;->autoIncrement:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, v1, Lorg/h2/value/DataType;->minScale:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget v3, v1, Lorg/h2/value/DataType;->maxScale:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget-boolean v3, v1, Lorg/h2/value/DataType;->decimal:Z

    if-eqz v3, :cond_46

    const-string v4, "10"

    const/16 v3, 0x9

    goto :goto_4b

    :cond_46
    const/16 v3, 0x9

    const/4 v4, 0x0

    :goto_4b
    aput-object v4, v2, v3

    iget v3, v1, Lorg/h2/value/DataType;->sqlTypePos:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iget-boolean v1, v1, Lorg/h2/value/DataType;->caseSensitive:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v2, v3

    const-string v1, "1"

    const/16 v3, 0xc

    aput-object v1, v2, v3

    const-string v1, "3"

    const/16 v3, 0xd

    aput-object v1, v2, v3

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_4a

    :pswitch_19
    const/4 v0, 0x1

    .line 923
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "TABLE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 924
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "TABLE LINK"

    aput-object v2, v1, v3

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 925
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "SYSTEM TABLE"

    aput-object v2, v1, v3

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 926
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "VIEW"

    aput-object v2, v1, v3

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 927
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EXTERNAL"

    aput-object v1, v0, v3

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_67

    :pswitch_1a
    if-eqz v9, :cond_47

    if-eqz v10, :cond_47

    .line 823
    invoke-virtual {v9, v10}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 824
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-direct {v8, v0, v1}, Lorg/h2/table/MetaTable;->getTablesByName(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_4c

    .line 827
    :cond_47
    invoke-direct/range {p0 .. p1}, Lorg/h2/table/MetaTable;->getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;

    move-result-object v1

    .line 829
    :goto_4c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    .line 830
    invoke-virtual {v2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 831
    invoke-direct {v8, v0, v3, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_4d

    .line 834
    :cond_48
    invoke-direct {v8, v2, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_4d

    .line 837
    :cond_49
    invoke-virtual {v2}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v4

    .line 838
    invoke-virtual {v2}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    :goto_4e
    if-eqz v4, :cond_55

    .line 839
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_55

    .line 840
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/index/Index;

    .line 841
    invoke-interface {v7}, Lorg/h2/index/Index;->getCreateSQL()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4a

    move-object/from16 v35, v1

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move-object/from16 v36, v4

    :goto_4f
    move-object/from16 v38, v5

    goto/16 :goto_5d

    :cond_4a
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_50
    if-eqz v5, :cond_4e

    .line 845
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_4e

    .line 846
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/h2/constraint/Constraint;

    .line 847
    invoke-virtual {v15, v7}, Lorg/h2/constraint/Constraint;->usesIndex(Lorg/h2/index/Index;)Z

    move-result v27

    if-eqz v27, :cond_4c

    .line 848
    invoke-interface {v7}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v27

    if-eqz v27, :cond_4b

    move-object/from16 v35, v1

    .line 849
    invoke-virtual {v15}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v36, v4

    const-string v4, "PRIMARY KEY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 851
    invoke-virtual {v15}, Lorg/h2/constraint/Constraint;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    :cond_4b
    move-object/from16 v35, v1

    move-object/from16 v36, v4

    .line 854
    invoke-virtual {v15}, Lorg/h2/constraint/Constraint;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_51
    move-object v14, v1

    goto :goto_52

    :cond_4c
    move-object/from16 v35, v1

    move-object/from16 v36, v4

    :cond_4d
    :goto_52
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v35

    move-object/from16 v4, v36

    goto :goto_50

    :cond_4e
    move-object/from16 v35, v1

    move-object/from16 v36, v4

    .line 858
    invoke-interface {v7}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v1

    .line 860
    instance-of v4, v7, Lorg/h2/index/MultiVersionIndex;

    if-eqz v4, :cond_4f

    .line 861
    move-object v4, v7

    check-cast v4, Lorg/h2/index/MultiVersionIndex;

    invoke-virtual {v4}, Lorg/h2/index/MultiVersionIndex;->getBaseIndex()Lorg/h2/index/Index;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_53

    .line 864
    :cond_4f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_53
    const/4 v13, 0x0

    .line 866
    :goto_54
    array-length v15, v1

    if-ge v13, v15, :cond_54

    .line 867
    aget-object v15, v1, v13

    move-object/from16 v37, v1

    .line 868
    iget-object v1, v15, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    move-object/from16 v38, v5

    const/16 v5, 0x15

    .line 869
    new-array v5, v5, [Ljava/lang/String;

    const/16 v26, 0x0

    aput-object v12, v5, v26

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v27

    move-object/from16 v39, v2

    invoke-virtual/range {v27 .. v27}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0x1

    aput-object v2, v5, v25

    const/4 v2, 0x2

    aput-object v3, v5, v2

    invoke-interface {v7}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "FALSE"

    :goto_55
    const/16 v22, 0x3

    goto :goto_56

    :cond_50
    const-string v2, "TRUE"

    goto :goto_55

    :goto_56
    aput-object v2, v5, v22

    invoke-interface {v7}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v24, 0x4

    aput-object v2, v5, v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v40, v3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v5, v3

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v5, v2

    const-string v1, "0"

    const/4 v2, 0x7

    aput-object v1, v5, v2

    invoke-interface {v7}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v1

    if-eqz v1, :cond_51

    const-string v1, "TRUE"

    :goto_57
    const/16 v2, 0x8

    goto :goto_58

    :cond_51
    const-string v1, "FALSE"

    goto :goto_57

    :goto_58
    aput-object v1, v5, v2

    invoke-interface {v7}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/IndexType;->getSQL()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v5, v2

    invoke-interface {v7}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/IndexType;->getBelongsToConstraint()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "TRUE"

    :goto_59
    const/16 v2, 0xa

    goto :goto_5a

    :cond_52
    const-string v1, "FALSE"

    goto :goto_59

    :goto_5a
    aput-object v1, v5, v2

    const-string v1, "3"

    const/16 v2, 0xb

    aput-object v1, v5, v2

    iget v1, v15, Lorg/h2/table/IndexColumn;->sortType:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_53

    const-string v1, "D"

    :goto_5b
    const/16 v2, 0xc

    goto :goto_5c

    :cond_53
    const-string v1, "A"

    goto :goto_5b

    :goto_5c
    aput-object v1, v5, v2

    const-string v1, "0"

    const/16 v2, 0xd

    aput-object v1, v5, v2

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v5, v1

    const/16 v1, 0xf

    invoke-interface {v7}, Lorg/h2/index/Index;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x10

    invoke-interface {v7}, Lorg/h2/index/Index;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/h2/index/Index;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lorg/h2/table/IndexColumn;->sortType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x13

    aput-object v14, v5, v1

    const/16 v1, 0x14

    aput-object v4, v5, v1

    invoke-direct {v8, v11, v5}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    move-object/from16 v1, v37

    move-object/from16 v5, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    goto/16 :goto_54

    :cond_54
    move-object/from16 v39, v2

    move-object/from16 v40, v3

    goto/16 :goto_4f

    :goto_5d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v35

    move-object/from16 v4, v36

    move-object/from16 v5, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    goto/16 :goto_4e

    :cond_55
    move-object/from16 v35, v1

    move-object/from16 v1, v35

    goto/16 :goto_4d

    :pswitch_1b
    if-eqz v9, :cond_56

    if-eqz v10, :cond_56

    .line 746
    invoke-virtual {v9, v10}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 747
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-direct {v8, v0, v1}, Lorg/h2/table/MetaTable;->getTablesByName(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_5e

    .line 750
    :cond_56
    invoke-direct/range {p0 .. p1}, Lorg/h2/table/MetaTable;->getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;

    move-result-object v1

    .line 752
    :goto_5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_57
    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    .line 753
    invoke-virtual {v2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    invoke-direct {v8, v0, v3, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v4

    if-nez v4, :cond_58

    goto :goto_5f

    .line 757
    :cond_58
    invoke-direct {v8, v2, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_5f

    .line 760
    :cond_59
    invoke-virtual {v2}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v4

    .line 761
    iget-object v5, v8, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 762
    :goto_60
    array-length v7, v4

    if-ge v6, v7, :cond_57

    .line 763
    aget-object v7, v4, v6

    .line 764
    invoke-virtual {v7}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v13

    const/16 v14, 0x17

    .line 765
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v15

    invoke-virtual {v15}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v25, 0x1

    aput-object v15, v14, v25

    const/4 v15, 0x2

    aput-object v3, v14, v15

    invoke-virtual {v7}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v22, 0x3

    aput-object v15, v14, v22

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v24, 0x4

    aput-object v15, v14, v24

    invoke-virtual {v7}, Lorg/h2/table/Column;->getDefaultSQL()Ljava/lang/String;

    move-result-object v15

    const/16 v21, 0x5

    aput-object v15, v14, v21

    invoke-virtual {v7}, Lorg/h2/table/Column;->isNullable()Z

    move-result v15

    if-eqz v15, :cond_5a

    const-string v15, "YES"

    :goto_61
    const/16 v20, 0x6

    goto :goto_62

    :cond_5a
    const-string v15, "NO"

    goto :goto_61

    :goto_62
    aput-object v15, v14, v20

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v1

    const-string v1, ""

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x7

    aput-object v1, v14, v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getPrecisionAsInt()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x8

    aput-object v1, v14, v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getPrecisionAsInt()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x9

    aput-object v1, v14, v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getPrecisionAsInt()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xa

    aput-object v1, v14, v15

    const-string v1, "10"

    const/16 v15, 0xb

    aput-object v1, v14, v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getScale()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xc

    aput-object v1, v14, v15

    const-string v1, "Unicode"

    const/16 v15, 0xd

    aput-object v1, v14, v15

    const/16 v1, 0xe

    aput-object v5, v14, v1

    const/16 v1, 0xf

    invoke-virtual {v7}, Lorg/h2/table/Column;->getType()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v15

    iget-object v15, v15, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-direct {v8, v15}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/table/Column;->isNullable()Z

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x10

    aput-object v1, v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getComputed()Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, "TRUE"

    goto :goto_63

    :cond_5b
    const-string v1, "FALSE"

    :goto_63
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x11

    aput-object v1, v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x12

    aput-object v1, v14, v15

    const/16 v1, 0x13

    invoke-virtual {v7}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v0, v15}, Lorg/h2/table/Column;->getCheckConstraintSQL(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v1

    const/16 v1, 0x14

    if-nez v13, :cond_5c

    const/4 v13, 0x0

    goto :goto_64

    :cond_5c
    invoke-virtual {v13}, Lorg/h2/schema/Sequence;->getName()Ljava/lang/String;

    move-result-object v13

    :goto_64
    aput-object v13, v14, v1

    const/16 v1, 0x15

    invoke-virtual {v7}, Lorg/h2/table/Column;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v1

    const/16 v1, 0x16

    const/4 v7, 0x0

    aput-object v7, v14, v1

    invoke-direct {v8, v11, v14}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    move-object/from16 v1, v41

    goto/16 :goto_60

    .line 687
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lorg/h2/table/MetaTable;->getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    .line 688
    invoke-virtual {v3}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 689
    invoke-direct {v8, v0, v4, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v5

    if-nez v5, :cond_5d

    goto :goto_65

    .line 692
    :cond_5d
    invoke-direct {v8, v3, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v5

    if-eqz v5, :cond_5e

    goto :goto_65

    .line 696
    :cond_5e
    invoke-virtual {v3}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 697
    invoke-virtual {v3}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v5

    if-eqz v5, :cond_5f

    const-string v5, "GLOBAL TEMPORARY"

    goto :goto_66

    :cond_5f
    const-string v5, "LOCAL TEMPORARY"

    goto :goto_66

    .line 703
    :cond_60
    invoke-virtual {v3}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result v5

    if-eqz v5, :cond_61

    const-string v5, "CACHED"

    goto :goto_66

    :cond_61
    const-string v5, "MEMORY"

    .line 706
    :goto_66
    invoke-virtual {v3}, Lorg/h2/table/Table;->getCreateSQL()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_62

    if-eqz v6, :cond_62

    const-string v7, "--hide--"

    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_62

    const-string v6, "-"

    :cond_62
    const/16 v7, 0xc

    .line 713
    new-array v13, v7, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-virtual {v3}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v15

    invoke-virtual {v15}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v13, v17

    const/4 v15, 0x2

    aput-object v4, v13, v15

    invoke-virtual {v3}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v4

    const/16 v22, 0x3

    aput-object v4, v13, v22

    const/4 v4, 0x4

    aput-object v5, v13, v4

    const/4 v5, 0x5

    aput-object v6, v13, v5

    invoke-virtual {v3}, Lorg/h2/table/Table;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v20, 0x6

    aput-object v6, v13, v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/table/Table;->getMaxDataModificationId()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v13, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/table/Table;->getId()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v14, 0x8

    aput-object v4, v13, v14

    const/16 v4, 0x9

    const/4 v15, 0x0

    aput-object v15, v13, v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0xa

    aput-object v16, v13, v19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/table/Table;->getRowCountApproximation()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v13, v4

    invoke-direct {v8, v11, v13}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_65

    :cond_63
    :goto_67
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    .line 2028
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2029
    iget-object v1, p0, Lorg/h2/table/MetaTable;->metaIndex:Lorg/h2/index/MetaIndex;

    if-nez v1, :cond_0

    return-object v0

    .line 2032
    :cond_0
    new-instance v1, Lorg/h2/index/MetaIndex;

    iget-object v2, p0, Lorg/h2/table/MetaTable;->columns:[Lorg/h2/table/Column;

    invoke-static {v2}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lorg/h2/index/MetaIndex;-><init>(Lorg/h2/table/MetaTable;[Lorg/h2/table/IndexColumn;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    iget-object v1, p0, Lorg/h2/table/MetaTable;->metaIndex:Lorg/h2/index/MetaIndex;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    .line 2040
    iget v0, p0, Lorg/h2/table/MetaTable;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2048
    iget-object v0, p0, Lorg/h2/table/MetaTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationDataId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    :pswitch_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 0

    .line 2003
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 2

    .line 2023
    new-instance p1, Lorg/h2/index/MetaIndex;

    iget-object v0, p0, Lorg/h2/table/MetaTable;->columns:[Lorg/h2/table/Column;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lorg/h2/index/MetaIndex;-><init>(Lorg/h2/table/MetaTable;[Lorg/h2/table/IndexColumn;Z)V

    return-object p1
.end method

.method public getTableType()Ljava/lang/String;
    .locals 1

    const-string v0, "SYSTEM TABLE"

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "META"

    .line 1894
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "META"

    .line 1884
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "META"

    .line 1998
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
