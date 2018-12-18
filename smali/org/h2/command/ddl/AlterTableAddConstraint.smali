.class public Lorg/h2/command/ddl/AlterTableAddConstraint;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "AlterTableAddConstraint.java"


# instance fields
.field private checkExisting:Z

.field private checkExpression:Lorg/h2/expression/Expression;

.field private comment:Ljava/lang/String;

.field private constraintName:Ljava/lang/String;

.field private createdIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private deleteAction:I

.field private final ifNotExists:Z

.field private ifTableExists:Z

.field private index:Lorg/h2/index/Index;

.field private indexColumns:[Lorg/h2/table/IndexColumn;

.field private primaryKeyHash:Z

.field private refIndex:Lorg/h2/index/Index;

.field private refIndexColumns:[Lorg/h2/table/IndexColumn;

.field private refSchema:Lorg/h2/schema/Schema;

.field private refTableName:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private type:I

.field private updateAction:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 54
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->createdIndexes:Ljava/util/ArrayList;

    .line 59
    iput-boolean p3, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->ifNotExists:Z

    return-void
.end method

.method private static canUseIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Z
    .locals 3

    .line 356
    invoke-interface {p0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    invoke-interface {p0}, Lorg/h2/index/Index;->getCreateSQL()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_3

    .line 360
    :cond_0
    invoke-interface {p0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    if-eqz p3, :cond_4

    .line 363
    array-length p1, p1

    array-length p3, p2

    if-ge p1, p3, :cond_1

    return v1

    .line 366
    :cond_1
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_7

    aget-object v0, p2, p3

    .line 371
    iget-object v0, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p0, v0}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 372
    array-length v2, p2

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    .line 377
    :cond_4
    array-length p1, p1

    array-length p3, p2

    if-eq p1, p3, :cond_5

    return v1

    .line 380
    :cond_5
    array-length p1, p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_7

    aget-object v0, p2, p3

    .line 382
    iget-object v0, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p0, v0}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v0

    if-gez v0, :cond_6

    return v1

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_3
    return v1
.end method

.method private static canUseUniqueIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Z
    .locals 4

    .line 333
    invoke-interface {p0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_5

    invoke-interface {p0}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 336
    :cond_0
    invoke-interface {p0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p0

    .line 337
    array-length p1, p0

    array-length v0, p2

    if-le p1, v0, :cond_1

    return v1

    .line 340
    :cond_1
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object p1

    .line 341
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 342
    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_2
    array-length p2, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v2, p0, v0

    .line 347
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method private createIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;
    .locals 8

    .line 276
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getObjectId()I

    move-result v3

    if-eqz p3, :cond_0

    .line 280
    invoke-virtual {p1}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/h2/index/IndexType;->createUnique(ZZ)Lorg/h2/index/IndexType;

    move-result-object p3

    :goto_0
    move-object v5, p3

    goto :goto_1

    .line 283
    :cond_0
    invoke-virtual {p1}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result p3

    invoke-static {p3}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object p3

    goto :goto_0

    :goto_1
    const/4 p3, 0x1

    .line 285
    invoke-virtual {v5, p3}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    .line 286
    iget-object p3, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    if-nez p3, :cond_1

    const-string p3, "CONSTRAINT"

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    .line 287
    :goto_2
    invoke-virtual {p1}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_INDEX_"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p3}, Lorg/h2/schema/Schema;->getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 290
    :try_start_0
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->createdIndexes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    throw p1
.end method

.method private generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/schema/Schema;->getUniqueConstraintName(Lorg/h2/engine/Session;Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    return-object p1
.end method

.method private static getIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;
    .locals 4

    .line 320
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    .line 324
    invoke-static {v2, p0, p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private static getUniqueIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Lorg/h2/index/Index;
    .locals 4

    .line 308
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    .line 312
    invoke-static {v2, p0, p1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseUniqueIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private tryUpdate()I
    .locals 13

    .line 94
    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->transactional:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 100
    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->ifTableExists:Z

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const v0, 0xa476

    .line 103
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 105
    :cond_2
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/h2/schema/Schema;->findConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 106
    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->ifNotExists:Z

    if-eqz v0, :cond_3

    return v3

    :cond_3
    const v0, 0x15fbd

    .line 109
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 112
    :cond_4
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v2, v5}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 113
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 114
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 116
    iget v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->type:I

    packed-switch v4, :pswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 118
    :pswitch_0
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v4, v2}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    .line 119
    invoke-virtual {v2}, Lorg/h2/table/Table;->findPrimaryKey()Lorg/h2/index/Index;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    .line 120
    invoke-virtual {v2}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    const v6, 0x15fa1

    if-eqz v4, :cond_6

    .line 121
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 122
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/constraint/Constraint;

    const-string v8, "PRIMARY KEY"

    .line 123
    invoke-virtual {v7}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 124
    :cond_5
    invoke-static {v6}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 127
    :cond_6
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-eqz v4, :cond_9

    .line 130
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    .line 131
    array-length v5, v4

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v7, v7

    if-ne v5, v7, :cond_8

    const/4 v5, 0x0

    .line 134
    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_9

    .line 135
    aget-object v7, v4, v5

    iget-object v7, v7, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    iget-object v8, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v8, v8, v5

    iget-object v8, v8, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    if-ne v7, v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    :cond_7
    invoke-static {v6}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 132
    :cond_8
    invoke-static {v6}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 140
    :cond_9
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-nez v4, :cond_a

    .line 141
    invoke-virtual {v2}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result v4

    iget-boolean v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->primaryKeyHash:Z

    invoke-static {v4, v5}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v10

    .line 143
    invoke-virtual {v2}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    const-string v6, "PRIMARY_KEY_"

    invoke-virtual {v4, v5, v2, v6}, Lorg/h2/schema/Schema;->getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getObjectId()I

    move-result v8

    .line 147
    :try_start_0
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    iget-object v9, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, v2

    move-object v7, v4

    invoke-virtual/range {v5 .. v12}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_a
    :goto_2
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    .line 154
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getObjectId()I

    move-result v7

    .line 155
    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v8

    .line 156
    new-instance v4, Lorg/h2/constraint/ConstraintUnique;

    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    const/4 v10, 0x1

    move-object v5, v4

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Lorg/h2/constraint/ConstraintUnique;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;Z)V

    .line 158
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-virtual {v4, v5}, Lorg/h2/constraint/ConstraintUnique;->setColumns([Lorg/h2/table/IndexColumn;)V

    .line 159
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-virtual {v4, v5, v1}, Lorg/h2/constraint/ConstraintUnique;->setIndex(Lorg/h2/index/Index;Z)V

    goto/16 :goto_9

    .line 201
    :pswitch_1
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refSchema:Lorg/h2/schema/Schema;

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refTableName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/h2/schema/Schema;->getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v4

    .line 202
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 203
    invoke-virtual {v4}, Lorg/h2/table/Table;->canReference()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 208
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v5, v2}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    .line 209
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v5, v2, v6, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 211
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-interface {v5}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 213
    :cond_b
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v2, v5, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    .line 214
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-nez v5, :cond_c

    .line 215
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-direct {p0, v2, v5, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->createIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    .line 219
    :goto_4
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    if-nez v6, :cond_d

    .line 220
    invoke-virtual {v4}, Lorg/h2/table/Table;->getPrimaryKey()Lorg/h2/index/Index;

    move-result-object v6

    .line 221
    invoke-interface {v6}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    goto :goto_5

    .line 223
    :cond_d
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v6, v4}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    .line 225
    :goto_5
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    array-length v6, v6

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v7, v7

    if-ne v6, v7, :cond_11

    .line 229
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    invoke-interface {v6}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    if-ne v6, v4, :cond_e

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v6, v4, v7, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 232
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    invoke-interface {v6}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    .line 234
    iput-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    const/4 v6, 0x0

    .line 236
    :goto_6
    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    if-nez v7, :cond_f

    .line 237
    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v4, v7, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v7

    iput-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    .line 238
    iget-object v7, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    if-nez v7, :cond_f

    .line 239
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-direct {p0, v4, v6, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->createIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    goto :goto_7

    :cond_f
    move v1, v6

    .line 243
    :goto_7
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getObjectId()I

    move-result v6

    .line 244
    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v7

    .line 245
    new-instance v8, Lorg/h2/constraint/ConstraintReferential;

    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v9

    invoke-direct {v8, v9, v6, v7, v2}, Lorg/h2/constraint/ConstraintReferential;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    .line 247
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-virtual {v8, v6}, Lorg/h2/constraint/ConstraintReferential;->setColumns([Lorg/h2/table/IndexColumn;)V

    .line 248
    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-virtual {v8, v6, v5}, Lorg/h2/constraint/ConstraintReferential;->setIndex(Lorg/h2/index/Index;Z)V

    .line 249
    invoke-virtual {v8, v4}, Lorg/h2/constraint/ConstraintReferential;->setRefTable(Lorg/h2/table/Table;)V

    .line 250
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    invoke-virtual {v8, v5}, Lorg/h2/constraint/ConstraintReferential;->setRefColumns([Lorg/h2/table/IndexColumn;)V

    .line 251
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    invoke-virtual {v8, v5, v1}, Lorg/h2/constraint/ConstraintReferential;->setRefIndex(Lorg/h2/index/Index;Z)V

    .line 252
    iget-boolean v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExisting:Z

    if-eqz v1, :cond_10

    .line 253
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8, v1}, Lorg/h2/constraint/ConstraintReferential;->checkExistingData(Lorg/h2/engine/Session;)V

    .line 256
    :cond_10
    invoke-virtual {v4, v8}, Lorg/h2/table/Table;->addConstraint(Lorg/h2/constraint/Constraint;)V

    .line 257
    iget v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->deleteAction:I

    invoke-virtual {v8, v1}, Lorg/h2/constraint/ConstraintReferential;->setDeleteAction(I)V

    .line 258
    iget v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->updateAction:I

    invoke-virtual {v8, v1}, Lorg/h2/constraint/ConstraintReferential;->setUpdateAction(I)V

    move-object v4, v8

    goto/16 :goto_9

    :cond_11
    const/16 v0, 0x520a

    .line 226
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 204
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 164
    :pswitch_2
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v4, v2}, Lorg/h2/table/IndexColumn;->mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V

    .line 166
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v4, v2, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;->canUseUniqueIndex(Lorg/h2/index/Index;Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 168
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/h2/index/IndexType;->setBelongsToConstraint(Z)V

    goto :goto_8

    .line 170
    :cond_13
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-static {v2, v4}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getUniqueIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;)Lorg/h2/index/Index;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    .line 171
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    if-nez v4, :cond_14

    .line 172
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-direct {p0, v2, v4, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->createIndex(Lorg/h2/table/Table;[Lorg/h2/table/IndexColumn;Z)Lorg/h2/index/Index;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    .line 176
    :goto_8
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getObjectId()I

    move-result v7

    .line 177
    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v8

    .line 178
    new-instance v4, Lorg/h2/constraint/ConstraintUnique;

    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    const/4 v10, 0x0

    move-object v5, v4

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Lorg/h2/constraint/ConstraintUnique;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;Z)V

    .line 180
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    invoke-virtual {v4, v5}, Lorg/h2/constraint/ConstraintUnique;->setColumns([Lorg/h2/table/IndexColumn;)V

    .line 181
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    invoke-virtual {v4, v5, v1}, Lorg/h2/constraint/ConstraintUnique;->setIndex(Lorg/h2/index/Index;Z)V

    goto :goto_9

    .line 186
    :pswitch_3
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getObjectId()I

    move-result v1

    .line 187
    invoke-direct {p0, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->generateConstraintName(Lorg/h2/table/Table;)Ljava/lang/String;

    move-result-object v4

    .line 188
    new-instance v12, Lorg/h2/constraint/ConstraintCheck;

    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {v12, v5, v1, v4, v2}, Lorg/h2/constraint/ConstraintCheck;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    .line 189
    new-instance v1, Lorg/h2/table/TableFilter;

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v1

    move-object v7, v2

    invoke-direct/range {v5 .. v11}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;I)V

    .line 190
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v4, v1, v3}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 191
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    .line 192
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v12, v4}, Lorg/h2/constraint/ConstraintCheck;->setExpression(Lorg/h2/expression/Expression;)V

    .line 193
    invoke-virtual {v12, v1}, Lorg/h2/constraint/ConstraintCheck;->setTableFilter(Lorg/h2/table/TableFilter;)V

    .line 195
    iget-boolean v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExisting:Z

    if-eqz v1, :cond_15

    .line 196
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v12, v1}, Lorg/h2/constraint/ConstraintCheck;->checkExistingData(Lorg/h2/engine/Session;)V

    :cond_15
    move-object v4, v12

    .line 265
    :goto_9
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->comment:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/h2/constraint/Constraint;->setComment(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v2}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_16

    .line 267
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4}, Lorg/h2/engine/Session;->addLocalTempTableConstraint(Lorg/h2/constraint/Constraint;)V

    goto :goto_a

    .line 269
    :cond_16
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v4}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 271
    :goto_a
    invoke-virtual {v2, v4}, Lorg/h2/table/Table;->addConstraint(Lorg/h2/constraint/Constraint;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getIndexColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 401
    iget v0, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->type:I

    return v0
.end method

.method public setCheckExisting(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExisting:Z

    return-void
.end method

.method public setCheckExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->checkExpression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->comment:Ljava/lang/String;

    return-void
.end method

.method public setConstraintName(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    return-void
.end method

.method public setDeleteAction(I)V
    .locals 0

    .line 300
    iput p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->deleteAction:I

    return-void
.end method

.method public setIfTableExists(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->ifTableExists:Z

    return-void
.end method

.method public setIndex(Lorg/h2/index/Index;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->index:Lorg/h2/index/Index;

    return-void
.end method

.method public setIndexColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->indexColumns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setPrimaryKeyHash(Z)V
    .locals 0

    .line 452
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->primaryKeyHash:Z

    return-void
.end method

.method public setRefIndex(Lorg/h2/index/Index;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndex:Lorg/h2/index/Index;

    return-void
.end method

.method public setRefIndexColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refIndexColumns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setRefTableName(Lorg/h2/schema/Schema;Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refSchema:Lorg/h2/schema/Schema;

    .line 428
    iput-object p2, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->refTableName:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 396
    iput p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->type:I

    return-void
.end method

.method public setUpdateAction(I)V
    .locals 0

    .line 304
    iput p1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->updateAction:I

    return-void
.end method

.method public update()I
    .locals 5

    .line 77
    :try_start_0
    invoke-direct {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->tryUpdate()I

    move-result v0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 79
    :try_start_1
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->createdIndexes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    .line 80
    iget-object v3, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, v2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_0

    .line 82
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_1
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableAddConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    throw v0
.end method
