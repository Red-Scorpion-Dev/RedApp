.class public Lorg/h2/result/ResultTempTable;
.super Ljava/lang/Object;
.source "ResultTempTable.java"

# interfaces
.implements Lorg/h2/result/ResultExternal;


# static fields
.field private static final COLUMN_NAME:Ljava/lang/String; = "DATA"


# instance fields
.field private childCount:I

.field private closed:Z

.field private columnCount:I

.field private containsLob:Z

.field private final distinct:Z

.field private index:Lorg/h2/index/Index;

.field private final parent:Lorg/h2/result/ResultTempTable;

.field private resultCursor:Lorg/h2/index/Cursor;

.field private rowCount:I

.field private session:Lorg/h2/engine/Session;

.field private final sort:Lorg/h2/result/SortOrder;

.field private table:Lorg/h2/table/Table;


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZLorg/h2/result/SortOrder;)V
    .locals 9

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    .line 48
    iput-boolean p3, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    .line 49
    iput-object p4, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    .line 50
    array-length v0, p2

    iput v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    .line 51
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    .line 52
    new-instance v1, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v1}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 53
    :goto_0
    array-length v4, p2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 54
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v4

    .line 55
    new-instance v6, Lorg/h2/table/Column;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DATA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x10

    if-eq v4, v7, :cond_0

    const/16 v7, 0xf

    if-ne v4, v7, :cond_1

    .line 58
    :cond_0
    iput-boolean v5, p0, Lorg/h2/result/ResultTempTable;->containsLob:Z

    .line 60
    :cond_1
    iget-object v4, v1, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result p2

    iput p2, v1, Lorg/h2/command/ddl/CreateTableData;->id:I

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEMP_RESULT_SET_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/h2/command/ddl/CreateTableData;->id:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    .line 64
    iput-boolean v5, v1, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    .line 65
    iput-boolean v2, v1, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    .line 66
    iput-boolean v5, v1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    .line 67
    iput-boolean v5, v1, Lorg/h2/command/ddl/CreateTableData;->create:Z

    .line 68
    iput-object p1, v1, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    .line 69
    invoke-virtual {v0, v1}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    if-nez p4, :cond_3

    if-eqz p3, :cond_4

    .line 71
    :cond_3
    invoke-direct {p0}, Lorg/h2/result/ResultTempTable;->createIndex()V

    :cond_4
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    return-void
.end method

.method private constructor <init>(Lorg/h2/result/ResultTempTable;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    .line 78
    iget v0, p1, Lorg/h2/result/ResultTempTable;->columnCount:I

    iput v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    .line 79
    iget-boolean v0, p1, Lorg/h2/result/ResultTempTable;->distinct:Z

    iput-boolean v0, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    .line 80
    iget-object v0, p1, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    .line 81
    iget-object v0, p1, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    .line 82
    iget-object v0, p1, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    .line 83
    iget v0, p1, Lorg/h2/result/ResultTempTable;->rowCount:I

    iput v0, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    .line 84
    iget-object v0, p1, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    .line 85
    iget-boolean p1, p1, Lorg/h2/result/ResultTempTable;->containsLob:Z

    iput-boolean p1, p0, Lorg/h2/result/ResultTempTable;->containsLob:Z

    .line 86
    invoke-virtual {p0}, Lorg/h2/result/ResultTempTable;->reset()V

    return-void
.end method

.method private declared-synchronized closeChild()V
    .locals 1

    monitor-enter p0

    .line 176
    :try_start_0
    iget v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->closed:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lorg/h2/result/ResultTempTable;->dropTable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 175
    monitor-exit p0

    throw v0
.end method

.method private convertToRow([Lorg/h2/value/Value;)Lorg/h2/result/Row;
    .locals 2

    .line 284
    array-length v0, p1

    iget v1, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    if-ge v0, v1, :cond_1

    .line 285
    iget v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    .line 286
    array-length p1, p1

    :goto_0
    iget v1, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    if-ge p1, v1, :cond_0

    .line 287
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method private createIndex()V
    .locals 11

    .line 91
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v0}, Lorg/h2/result/SortOrder;->getQueryColumnIndexes()[I

    move-result-object v0

    .line 93
    array-length v2, v0

    new-array v2, v2, [Lorg/h2/table/IndexColumn;

    .line 94
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 95
    new-instance v3, Lorg/h2/table/IndexColumn;

    invoke-direct {v3}, Lorg/h2/table/IndexColumn;-><init>()V

    .line 96
    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v4

    iput-object v4, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 97
    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v4}, Lorg/h2/result/SortOrder;->getSortTypes()[I

    move-result-object v4

    aget v4, v4, v1

    iput v4, v3, Lorg/h2/table/IndexColumn;->sortType:I

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DATA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 99
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    new-array v2, v0, [Lorg/h2/table/IndexColumn;

    .line 103
    :goto_1
    iget v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    if-ge v1, v0, :cond_1

    .line 104
    new-instance v0, Lorg/h2/table/IndexColumn;

    invoke-direct {v0}, Lorg/h2/table/IndexColumn;-><init>()V

    .line 105
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v3, v1}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v3

    iput-object v3, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 107
    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v7, v2

    .line 110
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    const-string v3, "INDEX_"

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/schema/Schema;->getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v6

    const/4 v0, 0x1

    .line 113
    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v8

    .line 114
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    return-void
.end method

.method private dropTable()V
    .locals 5

    .line 197
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->containsLob:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 206
    :try_start_0
    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 211
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 212
    :try_start_2
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/table/Table;->truncate(Lorg/h2/engine/Session;)V

    .line 213
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 214
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 220
    :try_start_4
    invoke-virtual {v1}, Lorg/h2/engine/Database;->isSysTableLocked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 221
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v2

    .line 222
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v3, v2}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 223
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    invoke-virtual {v3, v4}, Lorg/h2/engine/Session;->removeLocalTempTableIndex(Lorg/h2/index/Index;)V

    .line 230
    :cond_2
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 231
    :try_start_5
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 232
    :try_start_6
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v4, 0x0

    .line 233
    :try_start_7
    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->commit(Z)V

    .line 234
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 235
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 236
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 234
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v4

    :catchall_1
    move-exception v1

    .line 235
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v1

    :catchall_2
    move-exception v1

    .line 236
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 239
    :cond_3
    :goto_0
    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    return-void

    :catchall_3
    move-exception v3

    .line 213
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v3

    :catchall_4
    move-exception v1

    .line 214
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v1

    .line 239
    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    throw v1
.end method

.method private find(Lorg/h2/result/Row;)Lorg/h2/index/Cursor;
    .locals 7

    .line 295
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0}, Lorg/h2/result/ResultTempTable;->createIndex()V

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-interface {v0, v1, p1, p1}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 302
    :cond_1
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    invoke-interface {v0}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 306
    :goto_0
    invoke-virtual {p1}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 307
    invoke-virtual {p1, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-interface {v1, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addRow([Lorg/h2/value/Value;)I
    .locals 2

    .line 149
    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->convertToRow([Lorg/h2/value/Value;)Lorg/h2/result/Row;

    move-result-object p1

    .line 150
    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->find(Lorg/h2/result/Row;)Lorg/h2/index/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 154
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 158
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    .line 160
    :cond_1
    :goto_0
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    return p1
.end method

.method public addRows(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;)I"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v0, p1}, Lorg/h2/result/SortOrder;->sort(Ljava/util/ArrayList;)V

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    .line 170
    invoke-virtual {p0, v0}, Lorg/h2/result/ResultTempTable;->addRow([Lorg/h2/value/Value;)I

    goto :goto_0

    .line 172
    :cond_1
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    return p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 184
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 186
    :try_start_1
    iput-boolean v0, p0, Lorg/h2/result/ResultTempTable;->closed:Z

    .line 187
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    invoke-direct {v0}, Lorg/h2/result/ResultTempTable;->closeChild()V

    goto :goto_0

    .line 190
    :cond_1
    iget v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    if-nez v0, :cond_2

    .line 191
    invoke-direct {p0}, Lorg/h2/result/ResultTempTable;->dropTable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 182
    monitor-exit p0

    throw v0
.end method

.method public contains([Lorg/h2/value/Value;)Z
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->convertToRow([Lorg/h2/value/Value;)Lorg/h2/result/Row;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->find(Lorg/h2/result/Row;)Lorg/h2/index/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized createShallowCopy()Lorg/h2/result/ResultExternal;
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    invoke-virtual {v0}, Lorg/h2/result/ResultTempTable;->createShallowCopy()Lorg/h2/result/ResultExternal;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 123
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 124
    monitor-exit p0

    return-object v0

    .line 126
    :cond_1
    :try_start_2
    iget v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    .line 127
    new-instance v0, Lorg/h2/result/ResultTempTable;

    invoke-direct {v0, p0}, Lorg/h2/result/ResultTempTable;-><init>(Lorg/h2/result/ResultTempTable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0

    throw v0
.end method

.method public done()V
    .locals 0

    return-void
.end method

.method public next()[Lorg/h2/value/Value;
    .locals 7

    .line 250
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 252
    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    goto :goto_1

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    .line 257
    :goto_1
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 260
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-interface {v0, v2}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    if-lez v2, :cond_2

    .line 262
    move-object v2, v1

    check-cast v2, Lorg/h2/engine/Session;

    invoke-interface {v0, v2, v1, v1}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    goto :goto_2

    .line 265
    :cond_2
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-interface {v0, v2, v1, v1}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    goto :goto_2

    .line 268
    :cond_3
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-interface {v0, v2, v1, v1}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    .line 271
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v0

    if-nez v0, :cond_5

    return-object v1

    .line 274
    :cond_5
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lorg/h2/result/Row;->getValueList()[Lorg/h2/value/Value;

    move-result-object v0

    return-object v0
.end method

.method public removeRow([Lorg/h2/value/Value;)I
    .locals 2

    .line 132
    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->convertToRow([Lorg/h2/value/Value;)Lorg/h2/result/Row;

    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->find(Lorg/h2/result/Row;)Lorg/h2/index/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 137
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    .line 139
    :cond_0
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    return-void
.end method
