.class public Lorg/h2/constraint/ConstraintReferential;
.super Lorg/h2/constraint/Constraint;
.source "ConstraintReferential.java"


# static fields
.field public static final CASCADE:I = 0x1

.field public static final RESTRICT:I = 0x0

.field public static final SET_DEFAULT:I = 0x2

.field public static final SET_NULL:I = 0x3


# instance fields
.field private columns:[Lorg/h2/table/IndexColumn;

.field private deleteAction:I

.field private deleteSQL:Ljava/lang/String;

.field private index:Lorg/h2/index/Index;

.field private indexOwner:Z

.field private refColumns:[Lorg/h2/table/IndexColumn;

.field private refIndex:Lorg/h2/index/Index;

.field private refIndexOwner:Z

.field private refTable:Lorg/h2/table/Table;

.field private skipOwnTable:Z

.field private updateAction:I

.field private updateSQL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/constraint/Constraint;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    return-void
.end method

.method private static appendAction(Lorg/h2/util/StatementBuilder;I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :pswitch_0
    const-string p1, "SET NULL"

    .line 88
    invoke-virtual {p0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :pswitch_1
    const-string p1, "SET DEFAULT"

    .line 85
    invoke-virtual {p0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :pswitch_2
    const-string p1, "CASCADE"

    .line 82
    invoke-virtual {p0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private appendUpdate(Lorg/h2/util/StatementBuilder;)V
    .locals 5

    const-string v0, "UPDATE "

    .line 595
    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 596
    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 597
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, " , "

    .line 598
    invoke-virtual {p1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 599
    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendWhere(Lorg/h2/util/StatementBuilder;)V
    .locals 5

    const-string v0, " WHERE "

    .line 604
    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 605
    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 606
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, " AND "

    .line 607
    invoke-virtual {p1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 608
    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildDeleteSQL()V
    .locals 3

    .line 514
    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 518
    iget v1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "DELETE FROM "

    .line 519
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    .line 521
    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/constraint/ConstraintReferential;->appendUpdate(Lorg/h2/util/StatementBuilder;)V

    .line 523
    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/constraint/ConstraintReferential;->appendWhere(Lorg/h2/util/StatementBuilder;)V

    .line 524
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteSQL:Ljava/lang/String;

    return-void
.end method

.method private buildUpdateSQL()V
    .locals 1

    .line 556
    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 560
    invoke-direct {p0, v0}, Lorg/h2/constraint/ConstraintReferential;->appendUpdate(Lorg/h2/util/StatementBuilder;)V

    .line 561
    invoke-direct {p0, v0}, Lorg/h2/constraint/ConstraintReferential;->appendWhere(Lorg/h2/util/StatementBuilder;)V

    .line 562
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateSQL:Ljava/lang/String;

    return-void
.end method

.method private checkRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 6

    .line 412
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v0

    .line 413
    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 414
    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 415
    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    .line 416
    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 417
    invoke-virtual {p2, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v3

    .line 418
    sget-object v5, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v3, v5, :cond_0

    return-void

    .line 421
    :cond_0
    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    invoke-interface {v0, v4, v3}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_1
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 425
    :goto_1
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/h2/constraint/ConstraintReferential;->existsRow(Lorg/h2/engine/Session;Lorg/h2/index/Index;Lorg/h2/result/SearchRow;Lorg/h2/result/Row;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 p1, 0x5bcf

    .line 426
    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    invoke-direct {p0, p2, v0}, Lorg/h2/constraint/ConstraintReferential;->getShortDescription(Lorg/h2/index/Index;Lorg/h2/result/SearchRow;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkRowOwnTable(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 327
    :goto_0
    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v4, v3

    move v5, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v6, v3, v2

    .line 328
    iget-object v6, v6, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v6}, Lorg/h2/table/Column;->getColumnId()I

    move-result v6

    .line 329
    invoke-virtual {p3, v6}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v7

    .line 330
    sget-object v8, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v8, :cond_2

    return-void

    :cond_2
    if-eqz v5, :cond_3

    .line 335
    iget-object v8, p0, Lorg/h2/constraint/ConstraintReferential;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2, v6}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    return-void

    .line 344
    :cond_5
    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    if-ne p2, v2, :cond_8

    .line 348
    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length p2, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_7

    .line 349
    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    .line 350
    invoke-virtual {p3, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    .line 351
    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 352
    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    .line 353
    invoke-virtual {p3, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    .line 354
    iget-object v5, p0, Lorg/h2/constraint/ConstraintReferential;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5, v4, v3}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    return-void

    .line 363
    :cond_8
    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {p2}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object p2

    .line 364
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v0, v0

    :goto_4
    if-ge v1, v0, :cond_9

    .line 365
    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v2}, Lorg/h2/table/Column;->getColumnId()I

    move-result v2

    .line 366
    invoke-virtual {p3, v2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 368
    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    .line 369
    invoke-virtual {v3, v2}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 371
    :cond_9
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/h2/constraint/ConstraintReferential;->existsRow(Lorg/h2/engine/Session;Lorg/h2/index/Index;Lorg/h2/result/SearchRow;Lorg/h2/result/Row;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    const/16 p1, 0x5bd2

    .line 372
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    invoke-direct {p0, p3, p2}, Lorg/h2/constraint/ConstraintReferential;->getShortDescription(Lorg/h2/index/Index;Lorg/h2/result/SearchRow;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkRowRefTable(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 436
    invoke-direct {p0, p2, p3}, Lorg/h2/constraint/ConstraintReferential;->isEqual(Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_4

    .line 442
    iget p3, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-nez p3, :cond_2

    .line 443
    invoke-direct {p0, p1, p2}, Lorg/h2/constraint/ConstraintReferential;->checkRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_2

    .line 445
    :cond_2
    iget p3, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-ne p3, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v0, p3

    .line 446
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/constraint/ConstraintReferential;->getDelete(Lorg/h2/engine/Session;)Lorg/h2/command/Prepared;

    move-result-object p1

    .line 447
    invoke-direct {p0, p1, v0, p2}, Lorg/h2/constraint/ConstraintReferential;->setWhere(Lorg/h2/command/Prepared;ILorg/h2/result/Row;)V

    .line 448
    invoke-direct {p0, p1}, Lorg/h2/constraint/ConstraintReferential;->updateWithSkipCheck(Lorg/h2/command/Prepared;)V

    goto :goto_2

    .line 452
    :cond_4
    iget v2, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-nez v2, :cond_5

    .line 453
    invoke-direct {p0, p1, p2}, Lorg/h2/constraint/ConstraintReferential;->checkRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_2

    .line 455
    :cond_5
    invoke-direct {p0, p1}, Lorg/h2/constraint/ConstraintReferential;->getUpdate(Lorg/h2/engine/Session;)Lorg/h2/command/Prepared;

    move-result-object p1

    .line 456
    iget v2, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-ne v2, v1, :cond_6

    .line 457
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    .line 458
    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    :goto_1
    if-ge v0, v2, :cond_6

    .line 459
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Parameter;

    .line 460
    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 461
    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    invoke-virtual {p3, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_6
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length p3, p3

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/constraint/ConstraintReferential;->setWhere(Lorg/h2/command/Prepared;ILorg/h2/result/Row;)V

    .line 465
    invoke-direct {p0, p1}, Lorg/h2/constraint/ConstraintReferential;->updateWithSkipCheck(Lorg/h2/command/Prepared;)V

    :goto_2
    return-void
.end method

.method private existsRow(Lorg/h2/engine/Session;Lorg/h2/index/Index;Lorg/h2/result/SearchRow;Lorg/h2/result/Row;)Z
    .locals 9

    .line 379
    invoke-interface {p2}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 380
    invoke-virtual {v0, p1, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 381
    invoke-interface {p2, p1, p3, p3}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    .line 382
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 384
    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v2

    if-eqz p4, :cond_1

    .line 385
    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    invoke-virtual {p4}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    invoke-interface {p2}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v3

    .line 390
    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v4, v4

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_3

    .line 392
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lorg/h2/table/Column;->getColumnId()I

    move-result v7

    .line 393
    invoke-interface {p3, v7}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v8

    .line 394
    invoke-interface {v2, v7}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v7

    .line 395
    invoke-virtual {v0, v8, v7}, Lorg/h2/table/Table;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    return v6

    :cond_4
    return v1
.end method

.method private getDelete(Lorg/h2/engine/Session;)Lorg/h2/command/Prepared;
    .locals 2

    .line 532
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteSQL:Ljava/lang/String;

    iget v1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/constraint/ConstraintReferential;->prepare(Lorg/h2/engine/Session;Ljava/lang/String;I)Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method private getShortDescription(Lorg/h2/index/Index;Lorg/h2/result/SearchRow;)Ljava/lang/String;
    .locals 7

    .line 180
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintReferential;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    .line 181
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " FOREIGN KEY("

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 182
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-string v6, ", "

    .line 183
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v5}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ") REFERENCES "

    .line 186
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 187
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 188
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, ", "

    .line 189
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v5}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x29

    .line 192
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-string v2, " ("

    .line 194
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 195
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 196
    invoke-interface {p1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    .line 197
    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    array-length v4, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_3

    .line 199
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    .line 200
    invoke-interface {p2, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    const-string v5, ", "

    .line 201
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v4, :cond_2

    const-string v4, ""

    goto :goto_3

    .line 202
    :cond_2
    invoke-virtual {v4}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 204
    :cond_3
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 206
    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUpdate(Lorg/h2/engine/Session;)Lorg/h2/command/Prepared;
    .locals 2

    .line 528
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateSQL:Ljava/lang/String;

    iget v1, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/constraint/ConstraintReferential;->prepare(Lorg/h2/engine/Session;Ljava/lang/String;I)Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method private isEqual(Lorg/h2/result/Row;Lorg/h2/result/Row;)Z
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private prepare(Lorg/h2/engine/Session;Ljava/lang/String;I)Lorg/h2/command/Prepared;
    .locals 6

    .line 572
    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    .line 574
    invoke-virtual {p2}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 575
    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 576
    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 577
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    const/4 v5, 0x3

    if-ne p3, v5, :cond_0

    .line 580
    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    .line 582
    :cond_0
    invoke-virtual {v3}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 586
    invoke-virtual {v5, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    .line 588
    :goto_1
    invoke-virtual {v4, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5bd3

    .line 584
    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    return-object p2
.end method

.method private setWhere(Lorg/h2/command/Prepared;ILorg/h2/result/Row;)V
    .locals 5

    .line 484
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 485
    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v2}, Lorg/h2/table/Column;->getColumnId()I

    move-result v2

    .line 486
    invoke-virtual {p3, v2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    .line 487
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v3

    add-int v4, p2, v1

    .line 488
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Parameter;

    .line 489
    invoke-virtual {v3, v2}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateWithSkipCheck(Lorg/h2/command/Prepared;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    :try_start_0
    iput-boolean v0, p0, Lorg/h2/constraint/ConstraintReferential;->skipOwnTable:Z

    .line 477
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->update()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iput-boolean v1, p0, Lorg/h2/constraint/ConstraintReferential;->skipOwnTable:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lorg/h2/constraint/ConstraintReferential;->skipOwnTable:Z

    throw p1
.end method


# virtual methods
.method public checkExistingData(Lorg/h2/engine/Session;)V
    .locals 8

    .line 640
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 644
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    .line 645
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "SELECT 1 FROM (SELECT "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, ", "

    .line 647
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v5}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " FROM "

    .line 650
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 651
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 652
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const-string v6, " AND "

    .line 653
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v5}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const-string v6, " IS NOT NULL "

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v1, " ORDER BY "

    .line 656
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 657
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 658
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    const-string v6, ", "

    .line 659
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v5}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-string v1, ") C WHERE NOT EXISTS(SELECT 1 FROM "

    .line 662
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " P WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 664
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 666
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    const-string v6, " AND "

    .line 667
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v6, "C."

    .line 668
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const-string v6, "P."

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    add-int/lit8 v7, v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_3

    :cond_4
    const/16 v1, 0x29

    .line 671
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 672
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    .line 674
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/16 p1, 0x5bd2

    const/4 v0, 0x0

    .line 675
    invoke-direct {p0, v0, v0}, Lorg/h2/constraint/ConstraintReferential;->getShortDescription(Lorg/h2/index/Index;Lorg/h2/result/SearchRow;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public checkRow(Lorg/h2/engine/Session;Lorg/h2/table/Table;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getReferentialIntegrity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getCheckForeignKeyConstraints()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getCheckForeignKeyConstraints()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    if-ne p2, v0, :cond_2

    .line 313
    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintReferential;->skipOwnTable:Z

    if-nez v0, :cond_2

    .line 314
    invoke-direct {p0, p1, p3, p4}, Lorg/h2/constraint/ConstraintReferential;->checkRowOwnTable(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)V

    .line 317
    :cond_2
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    if-ne p2, v0, :cond_3

    .line 318
    invoke-direct {p0, p1, p3, p4}, Lorg/h2/constraint/ConstraintReferential;->checkRowRefTable(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public getColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getConstraintType()Ljava/lang/String;
    .locals 1

    const-string v0, "REFERENTIAL"

    return-object v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintReferential;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/constraint/ConstraintReferential;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/h2/constraint/ConstraintReferential;->getCreateSQLForCopy(Lorg/h2/table/Table;Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 120
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "ALTER TABLE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " ADD CONSTRAINT "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 123
    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IF NOT EXISTS "

    .line 124
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 126
    :cond_0
    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 127
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->comment:Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string p3, " COMMENT "

    .line 128
    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p3

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 130
    :cond_1
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    .line 131
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    const-string v2, " FOREIGN KEY("

    .line 132
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 133
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p3, v4

    const-string v6, ", "

    .line 134
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v5}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/16 p3, 0x29

    .line 137
    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    if-eqz p4, :cond_3

    .line 138
    iget-boolean v2, p0, Lorg/h2/constraint/ConstraintReferential;->indexOwner:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    if-ne p1, v2, :cond_3

    const-string v2, " INDEX "

    .line 139
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    invoke-interface {v4}, Lorg/h2/index/Index;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    const-string v2, " REFERENCES "

    .line 141
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 143
    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    if-ne v2, v4, :cond_4

    .line 145
    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 147
    :cond_4
    invoke-virtual {p2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p2

    .line 149
    :goto_1
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p2

    const/16 v2, 0x28

    invoke-virtual {p2, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 150
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 151
    array-length p2, v1

    :goto_2
    if-ge v3, p2, :cond_5

    aget-object v2, v1, v3

    const-string v4, ", "

    .line 152
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 155
    :cond_5
    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    if-eqz p4, :cond_6

    .line 156
    iget-boolean p2, p0, Lorg/h2/constraint/ConstraintReferential;->refIndexOwner:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    if-ne p1, p2, :cond_6

    const-string p1, " INDEX "

    .line 157
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    invoke-interface {p2}, Lorg/h2/index/Index;->getSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 159
    :cond_6
    iget p1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-eqz p1, :cond_7

    const-string p1, " ON DELETE "

    .line 160
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 161
    iget p1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    invoke-static {v0, p1}, Lorg/h2/constraint/ConstraintReferential;->appendAction(Lorg/h2/util/StatementBuilder;I)V

    .line 163
    :cond_7
    iget p1, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-eqz p1, :cond_8

    const-string p1, " ON UPDATE "

    .line 164
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 165
    iget p1, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    invoke-static {v0, p1}, Lorg/h2/constraint/ConstraintReferential;->appendAction(Lorg/h2/util/StatementBuilder;I)V

    :cond_8
    const-string p1, " NOCHECK"

    .line 167
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLWithoutIndexes()Ljava/lang/String;
    .locals 4

    .line 211
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintReferential;->getSQL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/h2/constraint/ConstraintReferential;->getCreateSQLForCopy(Lorg/h2/table/Table;Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAction()I
    .locals 1

    .line 494
    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    return v0
.end method

.method public getRefColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getRefTable()Lorg/h2/table/Table;
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getReferencedColumns(Lorg/h2/table/Table;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/table/Table;",
            ")",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 231
    iget-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 232
    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    if-ne p1, v1, :cond_1

    .line 235
    iget-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 236
    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    return-object v0
.end method

.method public getUpdateAction()I
    .locals 1

    .line 536
    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    return v0
.end method

.method public isBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rebuild()V
    .locals 0

    .line 567
    invoke-direct {p0}, Lorg/h2/constraint/ConstraintReferential;->buildUpdateSQL()V

    .line 568
    invoke-direct {p0}, Lorg/h2/constraint/ConstraintReferential;->buildDeleteSQL()V

    return-void
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeConstraint(Lorg/h2/constraint/Constraint;)V

    .line 284
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeConstraint(Lorg/h2/constraint/Constraint;)V

    .line 285
    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintReferential;->indexOwner:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->removeIndexOrTransferOwnership(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V

    .line 288
    :cond_0
    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndexOwner:Z

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->removeIndexOrTransferOwnership(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintReferential;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 292
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    .line 293
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    .line 294
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    .line 295
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    .line 296
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    .line 297
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteSQL:Ljava/lang/String;

    .line 298
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->updateSQL:Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->table:Lorg/h2/table/Table;

    .line 300
    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintReferential;->invalidate()V

    return-void
.end method

.method public setColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setDeleteAction(I)V
    .locals 1

    .line 503
    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-nez v0, :cond_1

    .line 509
    iput p1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    .line 510
    invoke-direct {p0}, Lorg/h2/constraint/ConstraintReferential;->buildDeleteSQL()V

    return-void

    :cond_1
    const p1, 0x15fbd

    const-string v0, "ON DELETE"

    .line 507
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setIndex(Lorg/h2/index/Index;Z)V
    .locals 0

    .line 265
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    .line 266
    iput-boolean p2, p0, Lorg/h2/constraint/ConstraintReferential;->indexOwner:Z

    return-void
.end method

.method public setIndexOwner(Lorg/h2/index/Index;)V
    .locals 2

    .line 624
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 625
    iput-boolean v1, p0, Lorg/h2/constraint/ConstraintReferential;->indexOwner:Z

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    if-ne v0, p1, :cond_1

    .line 627
    iput-boolean v1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndexOwner:Z

    goto :goto_0

    .line 629
    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public setRefColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setRefIndex(Lorg/h2/index/Index;Z)V
    .locals 0

    .line 277
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    .line 278
    iput-boolean p2, p0, Lorg/h2/constraint/ConstraintReferential;->refIndexOwner:Z

    return-void
.end method

.method public setRefTable(Lorg/h2/table/Table;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    .line 252
    invoke-virtual {p1}, Lorg/h2/table/Table;->isTemporary()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 253
    invoke-virtual {p0, p1}, Lorg/h2/constraint/ConstraintReferential;->setTemporary(Z)V

    :cond_0
    return-void
.end method

.method public setUpdateAction(I)V
    .locals 1

    .line 545
    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-nez v0, :cond_1

    .line 551
    iput p1, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    .line 552
    invoke-direct {p0}, Lorg/h2/constraint/ConstraintReferential;->buildUpdateSQL()V

    return-void

    :cond_1
    const p1, 0x15fbd

    const-string v0, "ON UPDATE"

    .line 549
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public usesIndex(Lorg/h2/index/Index;)Z
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
