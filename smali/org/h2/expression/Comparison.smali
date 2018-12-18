.class public Lorg/h2/expression/Comparison;
.super Lorg/h2/expression/Condition;
.source "Comparison.java"


# static fields
.field public static final BIGGER:I = 0x2

.field public static final BIGGER_EQUAL:I = 0x1

.field public static final EQUAL:I = 0x0

.field public static final EQUAL_NULL_SAFE:I = 0x10

.field public static final FALSE:I = 0x8

.field public static final IN_LIST:I = 0x9

.field public static final IN_QUERY:I = 0xa

.field public static final IS_NOT_NULL:I = 0x7

.field public static final IS_NULL:I = 0x6

.field public static final NOT_EQUAL:I = 0x5

.field public static final NOT_EQUAL_NULL_SAFE:I = 0x15

.field public static final NULL_SAFE:I = 0x10

.field public static final SMALLER:I = 0x4

.field public static final SMALLER_EQUAL:I = 0x3

.field public static final SPATIAL_INTERSECTS:I = 0xb


# instance fields
.field private compareType:I

.field private final database:Lorg/h2/engine/Database;

.field private left:Lorg/h2/expression/Expression;

.field private right:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    .line 119
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Comparison;->database:Lorg/h2/engine/Database;

    .line 120
    iput-object p3, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    .line 121
    iput-object p4, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    .line 122
    iput p2, p0, Lorg/h2/expression/Comparison;->compareType:I

    return-void
.end method

.method static compareNotNull(Lorg/h2/engine/Database;Lorg/h2/value/Value;Lorg/h2/value/Value;I)Z
    .locals 2

    const/16 v0, 0xb

    if-eq p3, v0, :cond_2

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    .line 302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 293
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p0

    if-gez p0, :cond_3

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 290
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p0

    if-gtz p0, :cond_3

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_0

    .line 284
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p0

    if-ltz p0, :cond_3

    goto :goto_0

    .line 281
    :cond_0
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result p0

    xor-int/lit8 v0, p0, 0x1

    goto :goto_1

    .line 277
    :cond_1
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/16 p0, 0x16

    .line 296
    invoke-virtual {p1, p0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueGeometry;

    .line 297
    invoke-virtual {p2, p0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueGeometry;

    .line 298
    invoke-virtual {p1, p0}, Lorg/h2/value/ValueGeometry;->intersectsBoundingBox(Lorg/h2/value/ValueGeometry;)Z

    move-result v0

    :cond_3
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static getCompareOperator(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compareType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    const-string p0, "<>"

    return-object p0

    :pswitch_1
    const-string p0, "<"

    return-object p0

    :pswitch_2
    const-string p0, "<="

    return-object p0

    :pswitch_3
    const-string p0, ">"

    return-object p0

    :pswitch_4
    const-string p0, ">="

    return-object p0

    :pswitch_5
    const-string p0, "="

    return-object p0

    :cond_0
    const-string p0, "IS NOT"

    return-object p0

    :cond_1
    const-string p0, "IS"

    return-object p0

    :cond_2
    const-string p0, "&&"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNotCompareType()I
    .locals 3

    .line 338
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/16 v1, 0x15

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x4

    return v0

    :pswitch_7
    const/4 v0, 0x5

    return v0

    :cond_0
    return v2

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private getReversedCompareType(I)I
    .locals 2

    .line 308
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/4 p1, 0x2

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_2
    const/4 p1, 0x4

    return p1

    :pswitch_3
    const/4 p1, 0x3

    return p1

    :cond_0
    :pswitch_4
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addFilterConditions(Lorg/h2/table/TableFilter;Z)V
    .locals 2

    .line 469
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/expression/Condition;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 4

    .line 366
    invoke-virtual {p2}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->isQueryComparable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ExpressionColumn;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    .line 372
    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v2

    if-eq p2, v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 376
    :cond_2
    iget-object v2, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    const/16 v3, 0x10

    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    .line 378
    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeIsNull:Z

    if-eqz p1, :cond_4

    .line 381
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    :cond_4
    :goto_0
    return-void

    .line 391
    :cond_5
    iget-object p1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    instance-of p1, p1, Lorg/h2/expression/ExpressionColumn;

    if-eqz p1, :cond_7

    .line 392
    iget-object p1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    check-cast p1, Lorg/h2/expression/ExpressionColumn;

    .line 393
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v2

    if-eq p2, v2, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, p1

    :cond_7
    :goto_1
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    return-void

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    return-void

    :cond_9
    if-nez v0, :cond_a

    .line 405
    invoke-static {p2}, Lorg/h2/expression/ExpressionVisitor;->getNotFromResolverVisitor(Lorg/h2/table/ColumnResolver;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object p1

    .line 407
    iget-object v2, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_a
    if-nez v1, :cond_10

    .line 411
    invoke-static {p2}, Lorg/h2/expression/ExpressionVisitor;->getNotFromResolverVisitor(Lorg/h2/table/ColumnResolver;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object p1

    .line 413
    iget-object v2, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 422
    :cond_b
    iget p1, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/16 v2, 0xb

    if-eq p1, v2, :cond_d

    if-eq p1, v3, :cond_d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_c

    packed-switch p1, :pswitch_data_0

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_c
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_d
    :pswitch_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_f

    if-eqz v0, :cond_e

    .line 441
    iget p1, p0, Lorg/h2/expression/Comparison;->compareType:I

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-static {p1, v0, v1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    goto :goto_3

    :cond_e
    if-eqz v1, :cond_f

    .line 444
    iget p1, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-direct {p0, p1}, Lorg/h2/expression/Comparison;->getReversedCompareType(I)I

    move-result p1

    .line 445
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-static {p1, v1, v0}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    :cond_f
    :goto_3
    return-void

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;Z)Lorg/h2/expression/Expression;
    .locals 11

    .line 530
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    iget v1, p2, Lorg/h2/expression/Comparison;->compareType:I

    if-ne v0, v1, :cond_b

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    if-nez v0, :cond_b

    .line 531
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    .line 532
    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v1

    .line 533
    iget-object v2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    .line 534
    iget-object v3, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v3

    .line 535
    iget-object v4, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    .line 536
    iget-object v5, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v5

    .line 537
    iget-object v6, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v6

    .line 538
    iget-object v7, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v7}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz p3, :cond_7

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 542
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 543
    new-instance p3, Lorg/h2/expression/Comparison;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-direct {p3, p1, v8, v0, p2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object p3

    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 544
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 545
    new-instance p3, Lorg/h2/expression/Comparison;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-direct {p3, p1, v8, v0, p2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object p3

    :cond_3
    if-eqz v0, :cond_4

    if-nez v3, :cond_5

    .line 546
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 547
    new-instance p3, Lorg/h2/expression/Comparison;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-direct {p3, p1, v8, v0, p2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object p3

    :cond_5
    if-eqz v0, :cond_6

    if-nez v2, :cond_b

    .line 548
    :cond_6
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 549
    new-instance p3, Lorg/h2/expression/Comparison;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-direct {p3, p1, v8, v0, p2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object p3

    .line 553
    :cond_7
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v9, 0x2

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 554
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 555
    new-instance v0, Lorg/h2/expression/ConditionIn;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    new-array v2, v9, [Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    aput-object v3, v2, v8

    iget-object p2, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    aput-object p2, v2, p3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    return-object v0

    :cond_8
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 557
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 558
    new-instance v0, Lorg/h2/expression/ConditionIn;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    new-array v2, v9, [Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    aput-object v3, v2, v8

    iget-object p2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    aput-object p2, v2, p3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    return-object v0

    :cond_9
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    .line 560
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 561
    new-instance v0, Lorg/h2/expression/ConditionIn;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    new-array v2, v9, [Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    aput-object v3, v2, v8

    iget-object p2, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    aput-object p2, v2, p3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    return-object v0

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 564
    new-instance v0, Lorg/h2/expression/ConditionIn;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    new-array v2, v9, [Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    aput-object v3, v2, v8

    iget-object p2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    aput-object p2, v2, p3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    return-object v0

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCost()I
    .locals 2

    .line 497
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic getDisplaySize()I
    .locals 1

    .line 29
    invoke-super {p0}, Lorg/h2/expression/Condition;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getExpression(Z)Lorg/h2/expression/Expression;
    .locals 0

    if-eqz p1, :cond_0

    .line 580
    iget-object p1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    :goto_0
    return-object p1
.end method

.method getIfEquals(Lorg/h2/expression/Expression;)Lorg/h2/expression/Expression;
    .locals 1

    .line 508
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    if-nez v0, :cond_1

    .line 509
    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    .line 510
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object p1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    return-object p1

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 513
    iget-object p1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 4

    .line 330
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 333
    :cond_0
    invoke-direct {p0}, Lorg/h2/expression/Comparison;->getNotCompareType()I

    move-result v0

    .line 334
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v1
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    .line 29
    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 128
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-static {v1}, Lorg/h2/expression/Comparison;->getCompareOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERSECTS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getScale()I
    .locals 1

    .line 29
    invoke-super {p0}, Lorg/h2/expression/Condition;->getScale()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .line 29
    invoke-super {p0}, Lorg/h2/expression/Condition;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-nez v1, :cond_1

    .line 231
    iget p1, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 236
    :pswitch_0
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 233
    :pswitch_1
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    :goto_1
    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    .line 243
    :cond_1
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_2

    .line 244
    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 245
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 248
    :cond_2
    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 249
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v1, :cond_3

    .line 250
    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_3

    .line 251
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 254
    :cond_3
    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getType()I

    move-result v1

    iget-object v2, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v1

    .line 255
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    .line 256
    invoke-virtual {p1, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 257
    iget-object v1, p0, Lorg/h2/expression/Comparison;->database:Lorg/h2/engine/Database;

    iget v2, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-static {v1, v0, p1, v2}, Lorg/h2/expression/Comparison;->compareNotNull(Lorg/h2/engine/Database;Lorg/h2/value/Value;Lorg/h2/value/Value;I)Z

    move-result p1

    .line 258
    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 484
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    .line 179
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    .line 181
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ExpressionColumn;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Parameter;

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    .line 184
    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iput-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    .line 185
    iput-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    .line 186
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-direct {p0, v0}, Lorg/h2/expression/Comparison;->getReversedCompareType(I)I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    .line 189
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ExpressionColumn;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 192
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_3

    .line 193
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_3

    .line 194
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 197
    :cond_2
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Parameter;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/Parameter;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    check-cast v1, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v1}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/expression/Parameter;->setColumn(Lorg/h2/table/Column;)V

    .line 203
    :cond_3
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 208
    :cond_4
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-nez v0, :cond_6

    .line 209
    :cond_5
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 211
    :cond_6
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 215
    :cond_7
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_8

    .line 216
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 219
    :cond_8
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 220
    invoke-virtual {p0, p1}, Lorg/h2/expression/Comparison;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 204
    :cond_9
    :goto_0
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    invoke-virtual {p0, p1}, Lorg/h2/expression/Comparison;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_a
    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 454
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    .line 462
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method
