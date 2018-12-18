.class public Lorg/h2/table/TableLink;
.super Lorg/h2/table/Table;
.source "TableLink.java"


# static fields
.field private static final MAX_RETRY:I = 0x2

.field private static final ROW_COUNT_APPROXIMATION:J = 0x186a0L


# instance fields
.field private conn:Lorg/h2/table/TableLinkConnection;

.field private connectException:Lorg/h2/message/DbException;

.field private driver:Ljava/lang/String;

.field private final emitUpdates:Z

.field private globalTemporary:Z

.field private final indexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private linkedIndex:Lorg/h2/index/LinkedIndex;

.field private final originalSchema:Ljava/lang/String;

.field private originalTable:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private preparedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/sql/PreparedStatement;",
            ">;"
        }
    .end annotation
.end field

.field private qualifiedTableName:Ljava/lang/String;

.field private readOnly:Z

.field private storesLowerCase:Z

.field private storesMixedCase:Z

.field private storesMixedCaseQuoted:Z

.field private supportsMixedCaseIdentifiers:Z

.field private url:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    move-object v7, p0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 70
    invoke-direct/range {v1 .. v6}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    .line 55
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/table/TableLink;->preparedMap:Ljava/util/HashMap;

    .line 56
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    move-object v0, p4

    .line 71
    iput-object v0, v7, Lorg/h2/table/TableLink;->driver:Ljava/lang/String;

    move-object v0, p5

    .line 72
    iput-object v0, v7, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    move-object v0, p6

    .line 73
    iput-object v0, v7, Lorg/h2/table/TableLink;->user:Ljava/lang/String;

    move-object v0, p7

    .line 74
    iput-object v0, v7, Lorg/h2/table/TableLink;->password:Ljava/lang/String;

    move-object/from16 v0, p8

    .line 75
    iput-object v0, v7, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 76
    iput-object v0, v7, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    move/from16 v0, p10

    .line 77
    iput-boolean v0, v7, Lorg/h2/table/TableLink;->emitUpdates:Z

    .line 79
    :try_start_0
    invoke-direct {p0}, Lorg/h2/table/TableLink;->connect()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    if-eqz p11, :cond_0

    const/4 v0, 0x0

    .line 84
    new-array v1, v0, [Lorg/h2/table/Column;

    .line 85
    invoke-virtual {p0, v1}, Lorg/h2/table/TableLink;->setColumns([Lorg/h2/table/Column;)V

    .line 86
    new-instance v2, Lorg/h2/index/LinkedIndex;

    invoke-static {v1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v1

    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v0

    move v3, p2

    invoke-direct {v2, p0, p2, v1, v0}, Lorg/h2/index/LinkedIndex;-><init>(Lorg/h2/table/TableLink;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v2, v7, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    .line 88
    iget-object v0, v7, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 82
    :cond_0
    throw v1
.end method

.method private addIndex(Ljava/util/List;Lorg/h2/index/IndexType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/h2/table/Column;",
            ">;",
            "Lorg/h2/index/IndexType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 342
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object p1, p0, Lorg/h2/table/TableLink;->trace:Lorg/h2/message/Trace;

    const-string p2, "Omitting linked index - no recognized columns."

    invoke-virtual {p1, p2}, Lorg/h2/message/Trace;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 347
    iget-object v2, p0, Lorg/h2/table/TableLink;->trace:Lorg/h2/message/Trace;

    const-string v3, "Unrecognized columns in linked index. Registering the index against the leading {0} recognized columns of {1} total columns."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 352
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/table/Column;

    .line 353
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 354
    new-instance p1, Lorg/h2/index/LinkedIndex;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-direct {p1, p0, v1, v0, p2}, Lorg/h2/index/LinkedIndex;-><init>(Lorg/h2/table/TableLink;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 355
    iget-object p2, p0, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkReadOnly()V
    .locals 1

    .line 423
    iget-boolean v0, p0, Lorg/h2/table/TableLink;->readOnly:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15ff1

    .line 424
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private connect()V
    .locals 7

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/h2/table/TableLink;->connectException:Lorg/h2/message/DbException;

    const/4 v1, 0x0

    .line 96
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/h2/table/TableLink;->database:Lorg/h2/engine/Database;

    iget-object v3, p0, Lorg/h2/table/TableLink;->driver:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    iget-object v5, p0, Lorg/h2/table/TableLink;->user:Ljava/lang/String;

    iget-object v6, p0, Lorg/h2/table/TableLink;->password:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/h2/engine/Database;->getLinkConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/table/TableLinkConnection;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    .line 97
    iget-object v2, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    monitor-enter v2
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :try_start_1
    invoke-direct {p0}, Lorg/h2/table/TableLink;->readMetaData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 103
    iget-object v4, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/h2/table/TableLinkConnection;->close(Z)V

    .line 104
    iput-object v0, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    .line 105
    invoke-static {v3}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v3

    throw v3

    .line 107
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v2

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iput-object v2, p0, Lorg/h2/table/TableLink;->connectException:Lorg/h2/message/DbException;

    .line 111
    throw v2
.end method

.method private convertColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 326
    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesMixedCase:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesLowerCase:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 329
    :cond_1
    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesMixedCase:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/h2/table/TableLink;->supportsMixedCaseIdentifiers:Z

    if-nez v0, :cond_2

    .line 331
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 332
    :cond_2
    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesMixedCase:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesMixedCaseQuoted:Z

    if-eqz v0, :cond_3

    .line 334
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method private static convertPrecision(IJ)J
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x17

    .line 302
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x6

    .line 305
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x8

    .line 299
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_0

    :pswitch_3
    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-wide/32 p1, 0xffff

    :cond_0
    :goto_0
    return-wide p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertScale(II)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-gez p1, :cond_0

    const/16 p1, 0x7fff

    :cond_0
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readMetaData()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 118
    iget-object v0, v1, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-virtual {v0}, Lorg/h2/table/TableLinkConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    .line 119
    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->storesLowerCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/table/TableLink;->storesLowerCase:Z

    .line 120
    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->storesMixedCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/table/TableLink;->storesMixedCase:Z

    .line 121
    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->storesMixedCaseQuotedIdentifiers()Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/table/TableLink;->storesMixedCaseQuoted:Z

    .line 122
    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->supportsMixedCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/table/TableLink;->supportsMixedCaseIdentifiers:Z

    .line 123
    iget-object v0, v1, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    iget-object v3, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v2, v8, v0, v3, v8}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fe0

    .line 125
    iget-object v2, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 127
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 128
    iget-object v0, v1, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    iget-object v3, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-interface {v2, v8, v0, v3, v8}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 130
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 131
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, v8

    move-object v5, v4

    const/4 v6, 0x0

    .line 133
    :goto_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "TABLE_CAT"

    .line 134
    invoke-interface {v0, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_2

    move-object v4, v7

    :cond_2
    const-string v11, "TABLE_SCHEM"

    .line 138
    invoke-interface {v0, v11}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v5, :cond_3

    move-object v5, v11

    .line 142
    :cond_3
    invoke-static {v4, v7}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v5, v11}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v7, "COLUMN_NAME"

    .line 150
    invoke-interface {v0, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-direct {v1, v7}, Lorg/h2/table/TableLink;->convertColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "DATA_TYPE"

    .line 152
    invoke-interface {v0, v11}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "TYPE_NAME"

    .line 153
    invoke-interface {v0, v12}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "COLUMN_SIZE"

    .line 154
    invoke-interface {v0, v13}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    .line 155
    invoke-static {v11, v13, v14}, Lorg/h2/table/TableLink;->convertPrecision(IJ)J

    move-result-wide v14

    const-string v13, "DECIMAL_DIGITS"

    .line 156
    invoke-interface {v0, v13}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 157
    invoke-static {v11, v13}, Lorg/h2/table/TableLink;->convertScale(II)I

    move-result v16

    .line 158
    invoke-static {v14, v15}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v17

    .line 159
    invoke-static {v11, v12}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(ILjava/lang/String;)I

    move-result v13

    .line 160
    new-instance v12, Lorg/h2/table/Column;

    move-object v11, v12

    move-object v8, v12

    move-object v12, v7

    invoke-direct/range {v11 .. v17}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    add-int/lit8 v11, v6, 0x1

    .line 161
    invoke-virtual {v8, v1, v6}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 162
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v11

    const/4 v8, 0x0

    goto :goto_1

    .line 146
    :cond_5
    :goto_2
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 147
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 165
    :cond_6
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 166
    iget-object v0, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    invoke-static {v5}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    goto :goto_3

    .line 169
    :cond_7
    iget-object v0, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    iput-object v0, v1, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    :goto_3
    const/4 v8, 0x1

    .line 174
    :try_start_0
    iget-object v0, v1, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-virtual {v0}, Lorg/h2/table/TableLinkConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " T WHERE 1=0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 177
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 179
    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v5

    const/4 v6, 0x0

    .line 180
    :goto_4
    invoke-interface {v5}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    add-int/lit8 v7, v6, 0x1

    .line 181
    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v11

    .line 182
    invoke-direct {v1, v11}, Lorg/h2/table/TableLink;->convertColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 183
    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v12

    .line 184
    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v13

    int-to-long v13, v13

    .line 185
    invoke-static {v12, v13, v14}, Lorg/h2/table/TableLink;->convertPrecision(IJ)J

    move-result-wide v21

    .line 186
    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v13

    .line 187
    invoke-static {v12, v13}, Lorg/h2/table/TableLink;->convertScale(II)I

    move-result v23

    .line 188
    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v24

    .line 189
    invoke-static {v5, v7}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v20

    .line 190
    new-instance v12, Lorg/h2/table/Column;

    move-object/from16 v18, v12

    move-object/from16 v19, v11

    invoke-direct/range {v18 .. v24}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 191
    invoke-virtual {v12, v1, v6}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 192
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    goto :goto_4

    .line 196
    :cond_8
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 203
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/table/Column;

    .line 204
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 205
    invoke-virtual {v1, v0}, Lorg/h2/table/TableLink;->setColumns([Lorg/h2/table/Column;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/TableLink;->getId()I

    move-result v3

    .line 207
    new-instance v4, Lorg/h2/index/LinkedIndex;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-static {v10}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-direct {v4, v1, v3, v0, v5}, Lorg/h2/index/LinkedIndex;-><init>(Lorg/h2/table/TableLink;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v4, v1, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    .line 209
    iget-object v0, v1, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :try_start_2
    iget-object v0, v1, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    iget-object v3, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    const/4 v0, 0x0

    :goto_5
    const-string v3, ""

    if-eqz v0, :cond_d

    .line 220
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 222
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v4

    :cond_9
    const-string v5, "KEY_SEQ"

    .line 224
    invoke-interface {v0, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v3, :cond_a

    const-string v3, "PK_NAME"

    .line 226
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    :cond_a
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v5, :cond_b

    const/4 v11, 0x0

    .line 229
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    const-string v6, "COLUMN_NAME"

    .line 231
    invoke-interface {v0, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-direct {v1, v6}, Lorg/h2/table/TableLink;->convertColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    if-nez v5, :cond_c

    .line 236
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    add-int/lit8 v5, v5, -0x1

    .line 238
    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 240
    :goto_7
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-nez v5, :cond_9

    .line 241
    invoke-static {v10, v10}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/h2/table/TableLink;->addIndex(Ljava/util/List;Lorg/h2/index/IndexType;)V

    .line 242
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    move-object v0, v3

    const/4 v3, 0x0

    .line 245
    :try_start_3
    iget-object v4, v1, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    iget-object v5, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-object v2, v11

    .line 252
    :goto_9
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_14

    move-object v4, v11

    move-object v5, v4

    .line 255
    :goto_a
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "TYPE"

    .line 256
    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result v6

    if-nez v6, :cond_e

    goto :goto_a

    :cond_e
    const-string v6, "INDEX_NAME"

    .line 260
    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_a

    :cond_f
    if-eqz v4, :cond_10

    .line 264
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 265
    invoke-direct {v1, v3, v5}, Lorg/h2/table/TableLink;->addIndex(Ljava/util/List;Lorg/h2/index/IndexType;)V

    move-object v4, v11

    :cond_10
    if-nez v4, :cond_11

    .line 270
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object v4, v6

    :cond_11
    const-string v5, "NON_UNIQUE"

    .line 272
    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v8

    if-eqz v5, :cond_12

    .line 273
    invoke-static {v10, v10}, Lorg/h2/index/IndexType;->createUnique(ZZ)Lorg/h2/index/IndexType;

    move-result-object v5

    goto :goto_b

    :cond_12
    invoke-static {v10}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    :goto_b
    const-string v6, "COLUMN_NAME"

    .line 275
    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-direct {v1, v6}, Lorg/h2/table/TableLink;->convertColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    .line 278
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 280
    :cond_13
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    goto :goto_c

    :cond_14
    move-object v4, v11

    move-object v5, v4

    :goto_c
    if-eqz v4, :cond_15

    .line 283
    invoke-direct {v1, v3, v5}, Lorg/h2/table/TableLink;->addIndex(Ljava/util/List;Lorg/h2/index/IndexType;)V

    :cond_15
    return-void

    :catch_2
    move-exception v0

    goto :goto_d

    :catchall_0
    move-exception v0

    const/4 v11, 0x0

    move-object v4, v11

    goto :goto_e

    :catch_3
    move-exception v0

    const/4 v11, 0x0

    move-object v4, v11

    :goto_d
    const v2, 0xa476

    .line 198
    :try_start_4
    new-array v3, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-static {v2, v0, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 201
    :goto_e
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw v0
.end method

.method public static wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;
    .locals 2

    .line 475
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    const/4 v0, 0x2

    .line 476
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const p0, 0x15fff

    invoke-static {p0, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    const-string p1, "LINK"

    .line 403
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 1

    .line 436
    invoke-direct {p0}, Lorg/h2/table/TableLink;->checkReadOnly()V

    .line 437
    invoke-virtual {p0, p1}, Lorg/h2/table/TableLink;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    return-void
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "LINK"

    .line 555
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkWritingAllowed()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 2

    .line 442
    iget-object p1, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 444
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/TableLinkConnection;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    iput-object p1, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object p1, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;Z)",
            "Ljava/sql/PreparedStatement;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 500
    :try_start_0
    iget-object v3, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    monitor-enter v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :try_start_1
    iget-object v4, p0, Lorg/h2/table/TableLink;->preparedMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/sql/PreparedStatement;

    if-nez v4, :cond_0

    .line 503
    iget-object v4, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-virtual {v4}, Lorg/h2/table/TableLinkConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 505
    :cond_0
    iget-object v5, p0, Lorg/h2/table/TableLink;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v5}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 506
    new-instance v5, Lorg/h2/util/StatementBuilder;

    invoke-direct {v5}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 507
    invoke-virtual {p0}, Lorg/h2/table/TableLink;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    if-eqz p2, :cond_2

    .line 508
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, " {"

    .line 509
    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 511
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/value/Value;

    const-string v9, ", "

    .line 512
    invoke-virtual {v5, v9}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    add-int/lit8 v9, v7, 0x1

    int-to-long v10, v7

    .line 513
    invoke-virtual {v5, v10, v11}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    invoke-virtual {v8}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move v7, v9

    goto :goto_1

    :cond_1
    const/16 v6, 0x7d

    .line 515
    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_2
    const/16 v6, 0x3b

    .line 517
    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 518
    iget-object v6, p0, Lorg/h2/table/TableLink;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 521
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    .line 522
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/value/Value;

    add-int/lit8 v6, v6, 0x1

    .line 523
    invoke-virtual {v7, v4, v6}, Lorg/h2/value/Value;->set(Ljava/sql/PreparedStatement;I)V

    goto :goto_2

    .line 526
    :cond_4
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->execute()Z

    if-eqz p3, :cond_5

    .line 528
    invoke-virtual {p0, v4, p1}, Lorg/h2/table/TableLink;->reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 529
    monitor-exit v3

    return-object v4

    .line 531
    :cond_5
    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception v4

    .line 532
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const/4 v4, 0x2

    if-ge v1, v4, :cond_6

    .line 537
    iget-object v3, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-virtual {v3, v2}, Lorg/h2/table/TableLinkConnection;->close(Z)V

    .line 538
    invoke-direct {p0}, Lorg/h2/table/TableLink;->connect()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 535
    :cond_6
    invoke-static {v3}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 496
    :cond_7
    iget-object p1, p0, Lorg/h2/table/TableLink;->connectException:Lorg/h2/message/DbException;

    throw p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE FORCE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lorg/h2/table/TableLink;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-boolean v1, p0, Lorg/h2/table/TableLink;->globalTemporary:Z

    if-eqz v1, :cond_0

    const-string v1, "GLOBAL "

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "LOCAL "

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "TEMPORARY "

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "LINKED TABLE "

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/table/TableLink;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v1, p0, Lorg/h2/table/TableLink;->comment:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " COMMENT "

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableLink;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x28

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableLink;->driver:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableLink;->user:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableLink;->password:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    iget-boolean v1, p0, Lorg/h2/table/TableLink;->emitUpdates:Z

    if-eqz v1, :cond_3

    const-string v1, " EMIT UPDATES"

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_3
    iget-boolean v1, p0, Lorg/h2/table/TableLink;->readOnly:Z

    if-eqz v1, :cond_4

    const-string v1, " READONLY"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " /*--hide--*/"

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(Lorg/h2/engine/Session;Lorg/h2/table/Column;)Lorg/h2/value/Value;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/table/TableLink;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getQualifiedTable()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRowCount(Lorg/h2/engine/Session;)J
    .locals 4

    monitor-enter p0

    .line 453
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT COUNT(*) FROM "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 455
    :try_start_1
    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 456
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 457
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    const/4 v2, 0x1

    .line 458
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    .line 459
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 460
    invoke-virtual {p0, v0, p1}, Lorg/h2/table/TableLink;->reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    monitor-exit p0

    return-wide v2

    :catch_0
    move-exception v0

    .line 463
    :try_start_2
    invoke-static {p1, v0}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 452
    monitor-exit p0

    throw p1
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/32 v0, 0x186a0

    return-wide v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 0

    .line 419
    iget-object p1, p0, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    return-object p1
.end method

.method public getTableType()Ljava/lang/String;
    .locals 1

    const-string v0, "TABLE LINK"

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 3

    .line 606
    iget-object v0, p0, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    .line 607
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOracle()Z
    .locals 2

    .line 590
    iget-object v0, p0, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    const-string v1, "jdbc:oracle:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 580
    invoke-super {p0, p1}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 581
    invoke-virtual {p0, p1}, Lorg/h2/table/TableLink;->close(Lorg/h2/engine/Session;)V

    .line 582
    iget-object v0, p0, Lorg/h2/table/TableLink;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/table/TableLink;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 583
    iput-object p1, p0, Lorg/h2/table/TableLink;->driver:Ljava/lang/String;

    .line 584
    iput-object p1, p0, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/table/TableLink;->password:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/table/TableLink;->user:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    .line 585
    iput-object p1, p0, Lorg/h2/table/TableLink;->preparedMap:Ljava/util/HashMap;

    .line 586
    invoke-virtual {p0}, Lorg/h2/table/TableLink;->invalidate()V

    return-void
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 1

    .line 430
    invoke-direct {p0}, Lorg/h2/table/TableLink;->checkReadOnly()V

    .line 431
    invoke-virtual {p0, p1}, Lorg/h2/table/TableLink;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    return-void
.end method

.method public reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V
    .locals 2

    .line 661
    iget-object v0, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    monitor-enter v0

    .line 662
    :try_start_0
    iget-object v1, p0, Lorg/h2/table/TableLink;->preparedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setGlobalTemporary(Z)V
    .locals 0

    .line 637
    iput-boolean p1, p0, Lorg/h2/table/TableLink;->globalTemporary:Z

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 641
    iput-boolean p1, p0, Lorg/h2/table/TableLink;->readOnly:Z

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "LINK"

    .line 560
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public updateRows(Lorg/h2/command/Prepared;Lorg/h2/engine/Session;Lorg/h2/result/RowList;)V
    .locals 5

    .line 617
    invoke-direct {p0}, Lorg/h2/table/TableLink;->checkReadOnly()V

    .line 618
    iget-boolean v0, p0, Lorg/h2/table/TableLink;->emitUpdates:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p3}, Lorg/h2/result/RowList;->reset()V

    :goto_0
    invoke-virtual {p3}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->checkCanceled()V

    .line 621
    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v0

    .line 622
    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v3

    .line 623
    iget-object v4, p0, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    invoke-virtual {v4, v0, v3}, Lorg/h2/index/LinkedIndex;->update(Lorg/h2/result/Row;Lorg/h2/result/Row;)V

    .line 624
    invoke-virtual {p2, p0, v2, v0}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 625
    invoke-virtual {p2, p0, v1, v3}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 632
    invoke-super {p0, p1, p2, p3}, Lorg/h2/table/Table;->updateRows(Lorg/h2/command/Prepared;Lorg/h2/engine/Session;Lorg/h2/result/RowList;)V

    :cond_2
    return-void
.end method

.method public validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    const/4 v0, 0x0

    .line 689
    :goto_0
    iget-object v1, p0, Lorg/h2/table/TableLink;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 690
    invoke-virtual {p2, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    iget-object v2, p0, Lorg/h2/table/TableLink;->columns:[Lorg/h2/table/Column;

    aget-object v2, v2, v0

    .line 694
    invoke-virtual {v2, p1, v1}, Lorg/h2/table/Column;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 696
    invoke-virtual {p2, v0, v2}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
