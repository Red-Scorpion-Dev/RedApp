.class public Lorg/h2/command/ddl/CreateTable;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "CreateTable.java"


# instance fields
.field private asQuery:Lorg/h2/command/dml/Query;

.field private comment:Ljava/lang/String;

.field private final constraintCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/ddl/DefineCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Lorg/h2/command/ddl/CreateTableData;

.field private ifNotExists:Z

.field private onCommitDrop:Z

.field private onCommitTruncate:Z

.field private pkColumns:[Lorg/h2/table/IndexColumn;

.field private sortedInsertMode:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 34
    new-instance p1, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {p1}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    .line 35
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->constraintCommands:Ljava/util/ArrayList;

    .line 46
    iget-object p1, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    .line 47
    iget-object p1, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p2, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    return-void
.end method

.method private generateColumnsFromQuery()V
    .locals 15

    .line 229
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    .line 230
    iget-object v1, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 232
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    .line 233
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v6

    .line 234
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v7

    .line 236
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v10

    .line 237
    invoke-static {v6}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v4

    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-lez v9, :cond_1

    .line 238
    iget-wide v13, v4, Lorg/h2/value/DataType;->defaultPrecision:J

    cmp-long v9, v13, v11

    if-eqz v9, :cond_0

    iget-wide v11, v4, Lorg/h2/value/DataType;->defaultPrecision:J

    cmp-long v9, v11, v7

    if-lez v9, :cond_1

    iget-wide v11, v4, Lorg/h2/value/DataType;->defaultPrecision:J

    const-wide/16 v13, 0x7f

    cmp-long v9, v11, v13

    if-gez v9, :cond_1

    .line 241
    :cond_0
    iget-wide v7, v4, Lorg/h2/value/DataType;->defaultPrecision:J

    .line 243
    :cond_1
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getScale()I

    move-result v3

    if-lez v3, :cond_3

    .line 244
    iget v9, v4, Lorg/h2/value/DataType;->defaultScale:I

    if-eqz v9, :cond_2

    iget v9, v4, Lorg/h2/value/DataType;->defaultScale:I

    if-le v9, v3, :cond_3

    iget v9, v4, Lorg/h2/value/DataType;->defaultScale:I

    int-to-long v11, v9

    cmp-long v9, v11, v7

    if-gez v9, :cond_3

    .line 246
    :cond_2
    iget v3, v4, Lorg/h2/value/DataType;->defaultScale:I

    :cond_3
    move v9, v3

    int-to-long v3, v9

    cmp-long v11, v3, v7

    if-lez v11, :cond_4

    move-wide v7, v3

    .line 251
    :cond_4
    new-instance v3, Lorg/h2/table/Column;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 252
    invoke-virtual {p0, v3}, Lorg/h2/command/ddl/CreateTable;->addColumn(Lorg/h2/table/Column;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private setPrimaryKeyColumns([Lorg/h2/table/IndexColumn;)Z
    .locals 5

    .line 264
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 265
    array-length v0, p1

    .line 266
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    const v3, 0x15fa1

    if-ne v0, v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 270
    aget-object v2, p1, v1

    iget-object v2, v2, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {v3}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 267
    :cond_2
    invoke-static {v3}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 276
    :cond_3
    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    return v1
.end method


# virtual methods
.method public addColumn(Lorg/h2/table/Column;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v0, v0, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V
    .locals 3

    .line 78
    instance-of v0, p1, Lorg/h2/command/ddl/CreateIndex;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->constraintCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/h2/command/ddl/AlterTableAddConstraint;

    .line 83
    invoke-virtual {v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 84
    invoke-virtual {v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/ddl/CreateTable;->setPrimaryKeyColumns([Lorg/h2/table/IndexColumn;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->constraintCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->comment:Ljava/lang/String;

    return-void
.end method

.method public setGlobalTemporary(Z)V
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->globalTemporary:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTable;->ifNotExists:Z

    return-void
.end method

.method public setOnCommitDrop()V
    .locals 1

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lorg/h2/command/ddl/CreateTable;->onCommitDrop:Z

    return-void
.end method

.method public setOnCommitTruncate()V
    .locals 1

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lorg/h2/command/ddl/CreateTable;->onCommitTruncate:Z

    return-void
.end method

.method public setPersistData(Z)V
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    if-nez p1, :cond_0

    .line 309
    iget-object p1, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    :cond_0
    return-void
.end method

.method public setPersistIndexes(Z)V
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    return-void
.end method

.method public setQuery(Lorg/h2/command/dml/Query;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setSortedInsertMode(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTable;->sortedInsertMode:Z

    return-void
.end method

.method public setTableEngine(Ljava/lang/String;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-object p1, v0, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    return-void
.end method

.method public setTableEngineParams(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-object p1, v0, Lorg/h2/command/ddl/CreateTableData;->tableEngineParams:Ljava/util/ArrayList;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-object p1, v0, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setTemporary(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean p1, v0, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    return-void
.end method

.method public update()I
    .locals 12

    .line 100
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateTable;->transactional:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 105
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iput-boolean v3, v2, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    .line 107
    :cond_1
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-boolean v2, v2, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-boolean v2, v2, Lorg/h2/command/ddl/CreateTableData;->globalTemporary:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 109
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 111
    :cond_3
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v6, v6, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 112
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateTable;->ifNotExists:Z

    if-eqz v0, :cond_4

    return v3

    :cond_4
    const v0, 0xa475

    .line 115
    iget-object v1, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v1, v1, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 117
    :cond_5
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    if-eqz v4, :cond_8

    .line 118
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v4}, Lorg/h2/command/dml/Query;->prepare()V

    .line 119
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v4, v4, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 120
    invoke-direct {p0}, Lorg/h2/command/ddl/CreateTable;->generateColumnsFromQuery()V

    goto :goto_1

    .line 121
    :cond_6
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v4, v4, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v5}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v5

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x520a

    .line 122
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 125
    :cond_8
    :goto_1
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    if-eqz v4, :cond_b

    .line 126
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v4, v4, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Column;

    .line 127
    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->pkColumns:[Lorg/h2/table/IndexColumn;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_9

    aget-object v9, v6, v8

    .line 128
    invoke-virtual {v5}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v9, v9, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 129
    invoke-virtual {v5, v3}, Lorg/h2/table/Column;->setNullable(Z)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 134
    :cond_b
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTable;->getObjectId()I

    move-result v5

    iput v5, v4, Lorg/h2/command/ddl/CreateTableData;->id:I

    .line 135
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-boolean v5, p0, Lorg/h2/command/ddl/CreateTable;->create:Z

    iput-boolean v5, v4, Lorg/h2/command/ddl/CreateTableData;->create:Z

    .line 136
    iget-object v4, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    iput-object v5, v4, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    .line 137
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    invoke-virtual {v4, v5}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object v4

    .line 138
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 139
    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v6, v6, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/table/Column;

    .line 140
    invoke-virtual {v7}, Lorg/h2/table/Column;->isAutoIncrement()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 141
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTable;->getObjectId()I

    move-result v8

    .line 142
    iget-object v9, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v10

    iget-object v11, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-boolean v11, v11, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    invoke-virtual {v7, v9, v10, v8, v11}, Lorg/h2/table/Column;->convertAutoIncrementToSequence(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V

    const-string v8, "\'\'"

    .line 143
    iget-object v9, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v9}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/engine/Database;->getCluster()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_4

    :cond_d
    const-string v0, "CLUSTERING && auto-increment columns"

    .line 145
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 149
    :cond_e
    :goto_4
    invoke-virtual {v7}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 151
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 154
    :cond_f
    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->comment:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/h2/table/Table;->setComment(Ljava/lang/String;)V

    if-eqz v2, :cond_12

    .line 156
    iget-boolean v2, p0, Lorg/h2/command/ddl/CreateTable;->onCommitDrop:Z

    if-eqz v2, :cond_10

    .line 157
    invoke-virtual {v4, v1}, Lorg/h2/table/Table;->setOnCommitDrop(Z)V

    .line 159
    :cond_10
    iget-boolean v2, p0, Lorg/h2/command/ddl/CreateTable;->onCommitTruncate:Z

    if-eqz v2, :cond_11

    .line 160
    invoke-virtual {v4, v1}, Lorg/h2/table/Table;->setOnCommitTruncate(Z)V

    .line 162
    :cond_11
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->addLocalTempTable(Lorg/h2/table/Table;)V

    goto :goto_5

    .line 164
    :cond_12
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 165
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v4}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 168
    :goto_5
    :try_start_0
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->data:Lorg/h2/command/ddl/CreateTableData;

    iget-object v2, v2, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    .line 169
    iget-object v7, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/table/Column;->prepareExpression(Lorg/h2/engine/Session;)V

    goto :goto_6

    .line 171
    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/schema/Sequence;

    .line 172
    invoke-virtual {v4, v5}, Lorg/h2/table/Table;->addSequence(Lorg/h2/schema/Sequence;)V

    goto :goto_7

    .line 174
    :cond_14
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->constraintCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/command/ddl/DefineCommand;

    .line 175
    iget-boolean v6, p0, Lorg/h2/command/ddl/CreateTable;->transactional:Z

    invoke-virtual {v5, v6}, Lorg/h2/command/ddl/DefineCommand;->setTransactional(Z)V

    .line 176
    invoke-virtual {v5}, Lorg/h2/command/ddl/DefineCommand;->update()I

    goto :goto_8

    .line 178
    :cond_15
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    if-eqz v2, :cond_16

    .line 179
    iget-object v2, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->isUndoLogEnabled()Z

    move-result v2
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :try_start_1
    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v3}, Lorg/h2/engine/Session;->setUndoLogEnabled(Z)V

    .line 182
    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    .line 184
    new-instance v5, Lorg/h2/command/dml/Insert;

    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-direct {v5, v6}, Lorg/h2/command/dml/Insert;-><init>(Lorg/h2/engine/Session;)V

    .line 185
    iget-boolean v6, p0, Lorg/h2/command/ddl/CreateTable;->sortedInsertMode:Z

    invoke-virtual {v5, v6}, Lorg/h2/command/dml/Insert;->setSortedInsertMode(Z)V

    .line 186
    iget-object v6, p0, Lorg/h2/command/ddl/CreateTable;->asQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v5, v6}, Lorg/h2/command/dml/Insert;->setQuery(Lorg/h2/command/dml/Query;)V

    .line 187
    invoke-virtual {v5, v4}, Lorg/h2/command/dml/Insert;->setTable(Lorg/h2/table/Table;)V

    .line 188
    invoke-virtual {v5, v1}, Lorg/h2/command/dml/Insert;->setInsertFromSelect(Z)V

    .line 189
    invoke-virtual {v5}, Lorg/h2/command/dml/Insert;->prepare()V

    .line 190
    invoke-virtual {v5}, Lorg/h2/command/dml/Insert;->update()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v2}, Lorg/h2/engine/Session;->setUndoLogEnabled(Z)V

    goto :goto_9

    :catchall_0
    move-exception v3

    iget-object v5, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v2}, Lorg/h2/engine/Session;->setUndoLogEnabled(Z)V

    throw v3

    .line 195
    :cond_16
    :goto_9
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 197
    invoke-virtual {v4, v2}, Lorg/h2/table/Table;->addDependencies(Ljava/util/HashSet;)V

    .line 198
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/engine/DbObject;

    if-ne v5, v4, :cond_18

    goto :goto_a

    .line 202
    :cond_18
    invoke-interface {v5}, Lorg/h2/engine/DbObject;->getType()I

    move-result v6

    if-nez v6, :cond_17

    .line 203
    instance-of v6, v5, Lorg/h2/table/Table;

    if-eqz v6, :cond_17

    .line 204
    check-cast v5, Lorg/h2/table/Table;

    .line 205
    invoke-virtual {v5}, Lorg/h2/table/Table;->getId()I

    move-result v6

    invoke-virtual {v4}, Lorg/h2/table/Table;->getId()I

    move-result v7

    if-gt v6, v7, :cond_19

    goto :goto_a

    :cond_19
    const v2, 0xc3b4

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Table depends on another table with a higher ID: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", this is currently not supported, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "as it would prevent the database from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "being re-opened"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v2

    throw v2
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1a
    return v3

    :catch_0
    move-exception v2

    .line 218
    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V

    .line 219
    iget-object v3, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v4}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 220
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateTable;->transactional:Z

    if-nez v0, :cond_1b

    .line 221
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 223
    :cond_1b
    throw v2
.end method
