.class public Lorg/h2/table/Column;
.super Ljava/lang/Object;
.source "Column.java"


# static fields
.field public static final NOT_NULLABLE:I = 0x0

.field public static final NULLABLE:I = 0x1

.field public static final NULLABLE_UNKNOWN:I = 0x2

.field public static final ROWID:Ljava/lang/String; = "_ROWID_"


# instance fields
.field private autoIncrement:Z

.field private checkConstraint:Lorg/h2/expression/Expression;

.field private checkConstraintSQL:Ljava/lang/String;

.field private columnId:I

.field private comment:Ljava/lang/String;

.field private computeTableFilter:Lorg/h2/table/TableFilter;

.field private convertNullToDefault:Z

.field private defaultExpression:Lorg/h2/expression/Expression;

.field private displaySize:I

.field private increment:J

.field private isComputed:Z

.field private name:Ljava/lang/String;

.field private nullable:Z

.field private originalSQL:Ljava/lang/String;

.field private precision:J

.field private primaryKey:Z

.field private resolver:Lorg/h2/table/SingleColumnResolver;

.field private scale:I

.field private selectivity:I

.field private sequence:Lorg/h2/schema/Sequence;

.field private start:J

.field private table:Lorg/h2/table/Table;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 91
    invoke-direct/range {v0 .. v6}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJII)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    .line 96
    iput-object p1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 97
    iput p2, p0, Lorg/h2/table/Column;->type:I

    const-wide/16 v0, -0x1

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p5, p1, :cond_0

    if-ne p6, p1, :cond_0

    if-eq p2, p1, :cond_0

    .line 99
    invoke-static {p2}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object p1

    .line 100
    iget-wide p3, p1, Lorg/h2/value/DataType;->defaultPrecision:J

    .line 101
    iget p5, p1, Lorg/h2/value/DataType;->defaultScale:I

    .line 102
    iget p6, p1, Lorg/h2/value/DataType;->defaultDisplaySize:I

    .line 104
    :cond_0
    iput-wide p3, p0, Lorg/h2/table/Column;->precision:J

    .line 105
    iput p5, p0, Lorg/h2/table/Column;->scale:I

    .line 106
    iput p6, p0, Lorg/h2/table/Column;->displaySize:I

    return-void
.end method

.method private updateSequenceIfRequired(Lorg/h2/engine/Session;Lorg/h2/value/Value;)V
    .locals 10

    .line 344
    iget-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v0}, Lorg/h2/schema/Sequence;->getCurrentValue()J

    move-result-wide v0

    .line 346
    iget-object v2, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v2}, Lorg/h2/schema/Sequence;->getIncrement()J

    move-result-wide v2

    .line 347
    invoke-virtual {p2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    const/4 p2, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    cmp-long v9, v4, v0

    if-lez v9, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    cmp-long v7, v4, v0

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 355
    iget-object p2, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, v1}, Lorg/h2/schema/Sequence;->modify(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 356
    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->setLastIdentity(Lorg/h2/value/Value;)V

    .line 357
    iget-object p2, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {p2, p1}, Lorg/h2/schema/Sequence;->flush(Lorg/h2/engine/Session;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 559
    :cond_0
    new-instance v0, Lorg/h2/table/SingleColumnResolver;

    invoke-direct {v0, p0}, Lorg/h2/table/SingleColumnResolver;-><init>(Lorg/h2/table/Column;)V

    iput-object v0, p0, Lorg/h2/table/Column;->resolver:Lorg/h2/table/SingleColumnResolver;

    .line 560
    monitor-enter p0

    .line 561
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 562
    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "VALUE"

    .line 563
    iput-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 565
    :cond_1
    iget-object v1, p0, Lorg/h2/table/Column;->resolver:Lorg/h2/table/SingleColumnResolver;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 566
    iput-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 568
    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p2

    .line 569
    iget-object v0, p0, Lorg/h2/table/Column;->resolver:Lorg/h2/table/SingleColumnResolver;

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v0, v1}, Lorg/h2/table/SingleColumnResolver;->setValue(Lorg/h2/value/Value;)V

    .line 571
    monitor-enter p0

    .line 572
    :try_start_1
    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 573
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-nez v0, :cond_2

    .line 575
    iput-object p2, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    goto :goto_0

    .line 577
    :cond_2
    new-instance v0, Lorg/h2/expression/ConditionAndOr;

    iget-object v1, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    invoke-direct {v0, v2, v1, p2}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    .line 579
    :goto_0
    iget-object p2, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/h2/table/Column;->getCheckConstraintSQL(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 573
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 567
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method declared-synchronized computeValue(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Lorg/h2/value/Value;
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1}, Lorg/h2/table/TableFilter;->setSession(Lorg/h2/engine/Session;)V

    .line 175
    iget-object v0, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p2}, Lorg/h2/table/TableFilter;->set(Lorg/h2/result/Row;)V

    .line 176
    iget-object p2, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 173
    monitor-exit p0

    throw p1
.end method

.method public convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    .line 149
    :try_start_0
    iget v0, p0, Lorg/h2/table/Column;->type:I

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x5602

    if-ne v1, v2, :cond_1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 158
    :cond_1
    throw v0
.end method

.method public convertAutoIncrementToSequence(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V
    .locals 11

    .line 374
    iget-boolean v0, p0, Lorg/h2/table/Column;->autoIncrement:Z

    if-nez v0, :cond_0

    .line 375
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    const-string v0, "IDENTITY"

    .line 377
    iget-object v1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BIGINT"

    .line 378
    iput-object v0, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "SERIAL"

    .line 379
    iget-object v1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INT"

    .line 380
    iput-object v0, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    .line 384
    :cond_2
    :goto_0
    invoke-static {}, Lorg/h2/value/ValueUuid;->getNewRandom()Lorg/h2/value/ValueUuid;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lorg/h2/value/ValueUuid;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    .line 386
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM_SEQUENCE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 388
    invoke-virtual {p2, v6}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v0

    if-nez v0, :cond_2

    .line 392
    new-instance v0, Lorg/h2/schema/Sequence;

    iget-wide v7, p0, Lorg/h2/table/Column;->start:J

    iget-wide v9, p0, Lorg/h2/table/Column;->increment:J

    move-object v3, v0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v3 .. v10}, Lorg/h2/schema/Sequence;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;JJ)V

    .line 393
    invoke-virtual {v0, p4}, Lorg/h2/schema/Sequence;->setTemporary(Z)V

    .line 394
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    .line 395
    invoke-virtual/range {v1 .. v6}, Lorg/h2/table/Column;->setAutoIncrement(ZJJ)V

    .line 396
    new-instance p2, Lorg/h2/expression/SequenceValue;

    invoke-direct {p2, v0}, Lorg/h2/expression/SequenceValue;-><init>(Lorg/h2/schema/Sequence;)V

    .line 397
    invoke-virtual {p0, p1, p2}, Lorg/h2/table/Column;->setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    .line 398
    invoke-virtual {p0, v0}, Lorg/h2/table/Column;->setSequence(Lorg/h2/schema/Sequence;)V

    return-void
.end method

.method public copy(Lorg/h2/table/Column;)V
    .locals 2

    .line 731
    iget-object v0, p1, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    .line 732
    iget-object v0, p1, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    .line 733
    iget v0, p1, Lorg/h2/table/Column;->displaySize:I

    iput v0, p0, Lorg/h2/table/Column;->displaySize:I

    .line 734
    iget-object v0, p1, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 735
    iget-wide v0, p1, Lorg/h2/table/Column;->precision:J

    iput-wide v0, p0, Lorg/h2/table/Column;->precision:J

    .line 736
    iget v0, p1, Lorg/h2/table/Column;->scale:I

    iput v0, p0, Lorg/h2/table/Column;->scale:I

    .line 739
    iget-boolean v0, p1, Lorg/h2/table/Column;->nullable:Z

    iput-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    .line 740
    iget-object v0, p1, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    .line 741
    iget-object v0, p1, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    .line 743
    iget-boolean v0, p1, Lorg/h2/table/Column;->convertNullToDefault:Z

    iput-boolean v0, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    .line 744
    iget-object v0, p1, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    iput-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    .line 745
    iget-object v0, p1, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    .line 746
    iget-object v0, p1, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    iput-object v0, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    .line 747
    iget-boolean v0, p1, Lorg/h2/table/Column;->isComputed:Z

    iput-boolean v0, p0, Lorg/h2/table/Column;->isComputed:Z

    .line 748
    iget v0, p1, Lorg/h2/table/Column;->selectivity:I

    iput v0, p0, Lorg/h2/table/Column;->selectivity:I

    .line 749
    iget-boolean p1, p1, Lorg/h2/table/Column;->primaryKey:Z

    iput-boolean p1, p0, Lorg/h2/table/Column;->primaryKey:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 113
    :cond_0
    instance-of v0, p1, Lorg/h2/table/Column;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 116
    :cond_1
    check-cast p1, Lorg/h2/table/Column;

    .line 117
    iget-object v0, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    iget-object v2, p1, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-eq v0, v2, :cond_3

    return v1

    .line 124
    :cond_3
    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public getCheckConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 601
    :cond_0
    new-instance v0, Lorg/h2/command/Parser;

    invoke-direct {v0, p1}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    iget-object p1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 605
    iput-object p2, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 606
    iget-object p2, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    invoke-virtual {p2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p2

    .line 607
    iput-object p1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 608
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {v0, p2}, Lorg/h2/command/Parser;->parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 608
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getCheckConstraintSQL(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 633
    invoke-virtual {p0, p1, p2}, Lorg/h2/table/Column;->getCheckConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getClone()Lorg/h2/table/Column;
    .locals 8

    .line 136
    new-instance v7, Lorg/h2/table/Column;

    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iget v2, p0, Lorg/h2/table/Column;->type:I

    iget-wide v3, p0, Lorg/h2/table/Column;->precision:J

    iget v5, p0, Lorg/h2/table/Column;->scale:I

    iget v6, p0, Lorg/h2/table/Column;->displaySize:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 137
    invoke-virtual {v7, p0}, Lorg/h2/table/Column;->copy(Lorg/h2/table/Column;)V

    return-object v7
.end method

.method public getColumnId()I
    .locals 1

    .line 225
    iget v0, p0, Lorg/h2/table/Column;->columnId:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    return-object v0
.end method

.method getComputed()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lorg/h2/table/Column;->isComputed:Z

    return v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 8

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_0
    iget-object v1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 422
    :cond_1
    iget v1, p0, Lorg/h2/table/Column;->type:I

    invoke-static {v1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v1

    iget-object v1, v1, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget v1, p0, Lorg/h2/table/Column;->type:I

    const/4 v2, 0x6

    const/16 v3, 0x29

    const/16 v4, 0x28

    if-eq v1, v2, :cond_3

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 431
    :cond_2
    :pswitch_0
    iget-wide v1, p0, Lorg/h2/table/Column;->precision:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    if-gez v7, :cond_4

    .line 432
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/table/Column;->precision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 425
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/table/Column;->precision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/table/Column;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_6

    .line 439
    iget-object v1, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 441
    iget-boolean v2, p0, Lorg/h2/table/Column;->isComputed:Z

    if-eqz v2, :cond_5

    const-string v2, " AS "

    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 443
    :cond_5
    iget-object v2, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_6

    const-string v2, " DEFAULT "

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lorg/h2/table/Column;->nullable:Z

    if-nez v1, :cond_7

    const-string v1, " NOT NULL"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_7
    iget-boolean v1, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    if-eqz v1, :cond_8

    const-string v1, " NULL_TO_DEFAULT"

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_8
    iget-object v1, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    if-eqz v1, :cond_9

    const-string v1, " SEQUENCE "

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_9
    iget v1, p0, Lorg/h2/table/Column;->selectivity:I

    if-eqz v1, :cond_a

    const-string v1, " SELECTIVITY "

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/table/Column;->selectivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    :cond_a
    iget-object v1, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, " COMMENT "

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_b
    iget-object v1, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_c

    const-string v1, " CHECK "

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getDataType()Lorg/h2/value/DataType;
    .locals 1

    .line 622
    iget v0, p0, Lorg/h2/table/Column;->type:I

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultExpression()Lorg/h2/expression/Expression;
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method getDefaultSQL()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 249
    iget v0, p0, Lorg/h2/table/Column;->displaySize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalSQL()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    .line 241
    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    return-wide v0
.end method

.method getPrecisionAsInt()I
    .locals 2

    .line 618
    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 253
    iget v0, p0, Lorg/h2/table/Column;->scale:I

    return v0
.end method

.method public getSelectivity()I
    .locals 1

    .line 535
    iget v0, p0, Lorg/h2/table/Column;->selectivity:I

    if-nez v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/h2/table/Column;->selectivity:I

    :goto_0
    return v0
.end method

.method public getSequence()Lorg/h2/schema/Sequence;
    .locals 1

    .line 525
    iget-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    return-object v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 237
    iget v0, p0, Lorg/h2/table/Column;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoIncrement()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lorg/h2/table/Column;->autoIncrement:Z

    return v0
.end method

.method isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 2

    .line 658
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 659
    iget-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getDependencies()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_0
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 666
    :cond_1
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isNullable()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    return v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lorg/h2/table/Column;->primaryKey:Z

    return v0
.end method

.method public isWideningConversion(Lorg/h2/table/Column;)Z
    .locals 6

    .line 689
    iget v0, p0, Lorg/h2/table/Column;->type:I

    iget v1, p1, Lorg/h2/table/Column;->type:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 692
    :cond_0
    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    iget-wide v3, p1, Lorg/h2/table/Column;->precision:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    return v2

    .line 695
    :cond_1
    iget v0, p0, Lorg/h2/table/Column;->scale:I

    iget v1, p1, Lorg/h2/table/Column;->scale:I

    if-eq v0, v1, :cond_2

    return v2

    .line 698
    :cond_2
    iget-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/h2/table/Column;->nullable:Z

    if-nez v0, :cond_3

    return v2

    .line 701
    :cond_3
    iget-boolean v0, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    iget-boolean v1, p1, Lorg/h2/table/Column;->convertNullToDefault:Z

    if-eq v0, v1, :cond_4

    return v2

    .line 704
    :cond_4
    iget-boolean v0, p0, Lorg/h2/table/Column;->primaryKey:Z

    iget-boolean v1, p1, Lorg/h2/table/Column;->primaryKey:Z

    if-eq v0, v1, :cond_5

    return v2

    .line 707
    :cond_5
    iget-boolean v0, p0, Lorg/h2/table/Column;->autoIncrement:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lorg/h2/table/Column;->autoIncrement:Z

    if-eqz v0, :cond_6

    goto :goto_4

    .line 710
    :cond_6
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-nez v0, :cond_e

    iget-object v0, p1, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_7

    goto :goto_3

    .line 713
    :cond_7
    iget-boolean v0, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    if-nez v0, :cond_d

    iget-boolean v0, p1, Lorg/h2/table/Column;->convertNullToDefault:Z

    if-eqz v0, :cond_8

    goto :goto_2

    .line 716
    :cond_8
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-nez v0, :cond_c

    iget-object v0, p1, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_9

    goto :goto_1

    .line 719
    :cond_9
    iget-boolean v0, p0, Lorg/h2/table/Column;->isComputed:Z

    if-nez v0, :cond_b

    iget-boolean p1, p1, Lorg/h2/table/Column;->isComputed:Z

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_0
    return v2

    :cond_c
    :goto_1
    return v2

    :cond_d
    :goto_2
    return v2

    :cond_e
    :goto_3
    return v2

    :cond_f
    :goto_4
    return v2
.end method

.method public prepareExpression(Lorg/h2/engine/Session;)V
    .locals 8

    .line 407
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Lorg/h2/table/TableFilter;

    iget-object v3, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;I)V

    iput-object v0, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    .line 409
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 410
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    :cond_0
    return-void
.end method

.method public removeCheckConstraint()V
    .locals 1

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    .line 587
    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    return-void
.end method

.method public setAutoIncrement(ZJJ)V
    .locals 0

    .line 497
    iput-boolean p1, p0, Lorg/h2/table/Column;->autoIncrement:Z

    .line 498
    iput-wide p2, p0, Lorg/h2/table/Column;->start:J

    .line 499
    iput-wide p4, p0, Lorg/h2/table/Column;->increment:J

    const/4 p2, 0x0

    .line 500
    iput-boolean p2, p0, Lorg/h2/table/Column;->nullable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 502
    iput-boolean p1, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    :cond_0
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    return-void
.end method

.method public setComputedExpression(Lorg/h2/expression/Expression;)V
    .locals 1

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lorg/h2/table/Column;->isComputed:Z

    .line 187
    iput-object p1, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setConvertNullToDefault(Z)V
    .locals 0

    .line 507
    iput-boolean p1, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    return-void
.end method

.method public setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p2

    .line 216
    invoke-virtual {p2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p2

    .line 221
    :cond_0
    iput-object p2, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setNullable(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lorg/h2/table/Column;->nullable:Z

    return-void
.end method

.method public setOriginalSQL(Ljava/lang/String;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    return-void
.end method

.method public setPrecision(J)V
    .locals 0

    .line 245
    iput-wide p1, p0, Lorg/h2/table/Column;->precision:J

    return-void
.end method

.method public setPrimaryKey(Z)V
    .locals 0

    .line 646
    iput-boolean p1, p0, Lorg/h2/table/Column;->primaryKey:Z

    return-void
.end method

.method public setSelectivity(I)V
    .locals 1

    const/16 v0, 0x64

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    .line 545
    :cond_1
    :goto_0
    iput p1, p0, Lorg/h2/table/Column;->selectivity:I

    return-void
.end method

.method public setSequence(Lorg/h2/schema/Sequence;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    return-void
.end method

.method public setTable(Lorg/h2/table/Table;I)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    .line 198
    iput p2, p0, Lorg/h2/table/Column;->columnId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 8

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    .line 275
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_1

    if-nez v0, :cond_0

    .line 278
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p2

    iget v1, p0, Lorg/h2/table/Column;->type:I

    invoke-virtual {p2, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 281
    iget-boolean v1, p0, Lorg/h2/table/Column;->primaryKey:Z

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->setLastIdentity(Lorg/h2/value/Value;)V

    .line 286
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    .line 287
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-ne p2, v2, :cond_a

    .line 288
    iget-boolean v2, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    if-eqz v2, :cond_2

    .line 289
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p2

    iget v0, p0, Lorg/h2/table/Column;->type:I

    invoke-virtual {p2, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 291
    :cond_2
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v0, :cond_a

    iget-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    if-nez v0, :cond_a

    .line 292
    iget-boolean p2, v1, Lorg/h2/engine/Mode;->convertInsertNullToZero:Z

    if-eqz p2, :cond_9

    .line 293
    iget p2, p0, Lorg/h2/table/Column;->type:I

    invoke-static {p2}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object p2

    .line 294
    iget-boolean v0, p2, Lorg/h2/value/DataType;->decimal:Z

    if-eqz v0, :cond_3

    .line 295
    invoke-static {v5}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    iget v0, p0, Lorg/h2/table/Column;->type:I

    invoke-virtual {p2, v0}, Lorg/h2/value/ValueInt;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    goto :goto_1

    .line 296
    :cond_3
    iget v0, p2, Lorg/h2/value/DataType;->type:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 297
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object p2

    goto :goto_1

    .line 298
    :cond_4
    iget v0, p2, Lorg/h2/value/DataType;->type:I

    const/16 v2, 0x17

    if-ne v0, v2, :cond_5

    .line 299
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/h2/value/ValueTimestampUtc;->fromMillis(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object p2

    goto :goto_1

    .line 300
    :cond_5
    iget v0, p2, Lorg/h2/value/DataType;->type:I

    const/16 v2, 0x18

    if-ne v0, v2, :cond_6

    .line 301
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide v6

    invoke-static {v6, v7, v5}, Lorg/h2/value/ValueTimestampTimeZone;->fromMillis(JS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p2

    goto :goto_1

    .line 303
    :cond_6
    iget v0, p2, Lorg/h2/value/DataType;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_7

    .line 304
    invoke-static {v3, v4}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p2

    goto :goto_1

    .line 305
    :cond_7
    iget p2, p2, Lorg/h2/value/DataType;->type:I

    const/16 v0, 0xa

    if-ne p2, v0, :cond_8

    .line 306
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/h2/value/ValueDate;->fromMillis(J)Lorg/h2/value/ValueDate;

    move-result-object p2

    goto :goto_1

    :cond_8
    const-string p2, ""

    .line 308
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    iget v0, p0, Lorg/h2/table/Column;->type:I

    invoke-virtual {p2, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    goto :goto_1

    :cond_9
    const/16 p1, 0x5bce

    .line 311
    iget-object p2, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 315
    :cond_a
    :goto_1
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_c

    .line 316
    iget-object v0, p0, Lorg/h2/table/Column;->resolver:Lorg/h2/table/SingleColumnResolver;

    invoke-virtual {v0, p2}, Lorg/h2/table/SingleColumnResolver;->setValue(Lorg/h2/value/Value;)V

    .line 318
    monitor-enter p0

    .line 319
    :try_start_1
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 320
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/16 p1, 0x5bd9

    .line 323
    iget-object p2, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    invoke-virtual {p2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 320
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 328
    :cond_c
    :goto_2
    iget-boolean v0, v1, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    iget v1, p0, Lorg/h2/table/Column;->scale:I

    invoke-virtual {p2, v0, v1}, Lorg/h2/value/Value;->convertScale(ZI)Lorg/h2/value/Value;

    move-result-object p2

    .line 329
    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    cmp-long v2, v0, v3

    if-lez v2, :cond_e

    .line 330
    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    invoke-virtual {p2, v0, v1}, Lorg/h2/value/Value;->checkPrecision(J)Z

    move-result v0

    if-nez v0, :cond_e

    .line 331
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_d

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    const/16 v0, 0x55f1

    const/4 v1, 0x2

    .line 335
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide p1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 339
    :cond_e
    invoke-direct {p0, p1, p2}, Lorg/h2/table/Column;->updateSequenceIfRequired(Lorg/h2/engine/Session;Lorg/h2/value/Value;)V

    return-object p2

    :catchall_1
    move-exception p1

    .line 275
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
