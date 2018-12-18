.class public Lorg/h2/command/dml/SelectUnion;
.super Lorg/h2/command/dml/Query;
.source "SelectUnion.java"


# static fields
.field public static final EXCEPT:I = 0x2

.field public static final INTERSECT:I = 0x3

.field public static final UNION:I = 0x0

.field public static final UNION_ALL:I = 0x1


# instance fields
.field private checkInit:Z

.field private expressionArray:[Lorg/h2/expression/Expression;

.field private expressions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private isForUpdate:Z

.field private isPrepared:Z

.field private final left:Lorg/h2/command/dml/Query;

.field private orderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private right:Lorg/h2/command/dml/Query;

.field private sort:Lorg/h2/result/SortOrder;

.field private unionType:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/command/dml/Query;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/h2/command/dml/Query;-><init>(Lorg/h2/engine/Session;)V

    .line 71
    iput-object p2, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    return-void
.end method

.method private convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;
    .locals 4

    .line 122
    array-length v0, p1

    if-ne p2, v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 128
    :cond_0
    new-array v0, p2, [Lorg/h2/value/Value;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 131
    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    .line 132
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addGlobalCondition(Lorg/h2/expression/Parameter;II)V
    .locals 1

    .line 375
    invoke-virtual {p0, p1}, Lorg/h2/command/dml/SelectUnion;->addParameter(Lorg/h2/expression/Parameter;)V

    .line 376
    iget v0, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    packed-switch v0, :pswitch_data_0

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 385
    :pswitch_0
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    .line 381
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public allowGlobalConditions()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->allowGlobalConditions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->allowGlobalConditions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fireBeforeSelectTriggers()V
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->fireBeforeSelectTriggers()V

    .line 462
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->fireBeforeSelectTriggers()V

    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getCost()D
    .locals 4

    .line 333
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getCost()D

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v2}, Lorg/h2/command/dml/Query;->getCost()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getEmptyResult()Lorg/h2/result/LocalResult;
    .locals 4

    .line 146
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    .line 147
    new-instance v1, Lorg/h2/result/LocalResult;

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-direct {v1, v2, v3, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    return-object v1
.end method

.method public getExpressions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeft()Lorg/h2/command/dml/Query;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 5

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v2}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    iget v3, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    packed-switch v3, :pswitch_data_0

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :pswitch_0
    const-string v3, "\nINTERSECT\n"

    .line 405
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v3, "\nEXCEPT\n"

    .line 408
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v3, "\nUNION ALL\n"

    .line 399
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v3, "\nUNION\n"

    .line 402
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/h2/expression/Expression;

    .line 415
    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    if-eqz v2, :cond_0

    const-string v2, "\nORDER BY "

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lorg/h2/result/SortOrder;->getSQL([Lorg/h2/expression/Expression;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_1

    const-string v1, "\nLIMIT "

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->limitExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_1

    const-string v1, "\nOFFSET "

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->offsetExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_1
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->sampleSizeExpr:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_2

    const-string v1, "\nSAMPLE_SIZE "

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->sampleSizeExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_2
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectUnion;->isForUpdate:Z

    if-eqz v1, :cond_3

    const-string v1, "\nFOR UPDATE"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRight()Lorg/h2/command/dml/Query;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getTables()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getTables()Ljava/util/HashSet;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getTables()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public getUnionType()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    return v0
.end method

.method public hasOrder()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init()V
    .locals 5

    .line 274
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->checkInit:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->checkInit:Z

    .line 278
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->init()V

    .line 279
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->init()V

    .line 280
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    .line 281
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 284
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v1

    .line 287
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 289
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    .line 290
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x520a

    .line 282
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isReadOnly()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 363
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public prepare()V
    .locals 15

    .line 296
    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->isPrepared:Z

    if-eqz v0, :cond_0

    return-void

    .line 300
    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->checkInit:Z

    if-nez v0, :cond_1

    const-string v0, "not initialized"

    .line 301
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->isPrepared:Z

    .line 304
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->prepare()V

    .line 305
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->prepare()V

    .line 306
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    .line 308
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    .line 309
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v2}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 312
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    .line 313
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/Expression;

    .line 314
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getType()I

    move-result v7

    invoke-static {v6, v7}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v10

    .line 315
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 316
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getScale()I

    move-result v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getScale()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 317
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 318
    new-instance v5, Lorg/h2/table/Column;

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v9

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 319
    new-instance v4, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    .line 320
    iget-object v5, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 323
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/command/dml/SelectUnion;->getColumnCount()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/h2/command/dml/SelectUnion;->initOrder(Lorg/h2/engine/Session;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLjava/util/ArrayList;)V

    .line 324
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/command/dml/SelectUnion;->prepareOrder(Ljava/util/ArrayList;I)Lorg/h2/result/SortOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    .line 327
    :cond_3
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    .line 328
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public prepareJoinBatch()V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->prepareJoinBatch()V

    .line 82
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->prepareJoinBatch()V

    return-void
.end method

.method public query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;
    .locals 0

    .line 440
    invoke-virtual {p0, p1, p2}, Lorg/h2/command/dml/SelectUnion;->queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;

    move-result-object p1

    return-object p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 4

    .line 139
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    .line 140
    new-instance v1, Lorg/h2/result/LocalResult;

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-direct {v1, v2, v3, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 141
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->done()V

    return-object v1
.end method

.method protected queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;
    .locals 7

    if-eqz p1, :cond_3

    .line 155
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->limitExpr:Lorg/h2/expression/Expression;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->limitExpr:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 159
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    move v0, p1

    goto :goto_1

    .line 165
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    :goto_1
    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion;->limitExpr:Lorg/h2/expression/Expression;

    .line 169
    :cond_3
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->optimizeInsertFromSelect:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 170
    iget v0, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    if-ne v0, v3, :cond_4

    if-eqz p2, :cond_4

    .line 171
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->distinct:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->offsetExpr:Lorg/h2/expression/Expression;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->limitExpr:Lorg/h2/expression/Expression;

    if-nez p1, :cond_4

    .line 173
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {p1, v2, p2}, Lorg/h2/command/dml/Query;->query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;

    .line 174
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {p1, v2, p2}, Lorg/h2/command/dml/Query;->query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;

    return-object v1

    .line 179
    :cond_4
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result p1

    .line 180
    new-instance v0, Lorg/h2/result/LocalResult;

    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    iget-object v5, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-direct {v0, v4, v5, p1}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 181
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    if-eqz v4, :cond_5

    .line 182
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->setSortOrder(Lorg/h2/result/SortOrder;)V

    .line 184
    :cond_5
    iget-boolean v4, p0, Lorg/h2/command/dml/SelectUnion;->distinct:Z

    if-eqz v4, :cond_6

    .line 185
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v4, v3}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 186
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v4, v3}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 187
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->setDistinct()V

    .line 189
    :cond_6
    iget-boolean v4, p0, Lorg/h2/command/dml/SelectUnion;->randomAccessResult:Z

    if-eqz v4, :cond_7

    .line 190
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->setRandomAccess()V

    .line 192
    :cond_7
    iget v4, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    packed-switch v4, :pswitch_data_0

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_2

    .line 202
    :pswitch_0
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v4, v3}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 203
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v4, v3}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    goto :goto_2

    .line 195
    :pswitch_1
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v4, v3}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 196
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v4, v3}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 197
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->setDistinct()V

    .line 208
    :goto_2
    :pswitch_2
    iget-object v3, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v3, v2}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v3

    .line 209
    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v4, v2}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v2

    .line 210
    invoke-virtual {v3}, Lorg/h2/result/LocalResult;->reset()V

    .line 211
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->reset()V

    .line 212
    iget v4, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    packed-switch v4, :pswitch_data_1

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_9

    .line 233
    :pswitch_3
    new-instance v4, Lorg/h2/result/LocalResult;

    iget-object v5, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-direct {v4, v5, v6, p1}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 234
    invoke-virtual {v4}, Lorg/h2/result/LocalResult;->setDistinct()V

    .line 235
    invoke-virtual {v4}, Lorg/h2/result/LocalResult;->setRandomAccess()V

    .line 236
    :goto_3
    invoke-virtual {v3}, Lorg/h2/result/LocalResult;->next()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 237
    invoke-virtual {v3}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_3

    .line 239
    :cond_8
    :goto_4
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->next()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 240
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v5

    .line 241
    invoke-virtual {v4, v5}, Lorg/h2/result/LocalResult;->containsDistinct([Lorg/h2/value/Value;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 242
    invoke-virtual {v0, v5}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_4

    .line 224
    :goto_5
    :pswitch_4
    invoke-virtual {v3}, Lorg/h2/result/LocalResult;->next()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 225
    invoke-virtual {v3}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_5

    .line 227
    :cond_9
    :goto_6
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->next()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 228
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->removeDistinct([Lorg/h2/value/Value;)V

    goto :goto_6

    .line 215
    :goto_7
    :pswitch_5
    invoke-virtual {v3}, Lorg/h2/result/LocalResult;->next()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 216
    invoke-virtual {v3}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_7

    .line 218
    :cond_a
    :goto_8
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->next()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 219
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_8

    .line 250
    :cond_b
    :goto_9
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz p1, :cond_c

    .line 251
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->offsetExpr:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/result/LocalResult;->setOffset(I)V

    .line 253
    :cond_c
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz p1, :cond_d

    .line 254
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->limitExpr:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 255
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p1, v4, :cond_d

    .line 256
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/result/LocalResult;->setLimit(I)V

    .line 259
    :cond_d
    invoke-virtual {v3}, Lorg/h2/result/LocalResult;->close()V

    .line 260
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->close()V

    .line 261
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->done()V

    if-eqz p2, :cond_f

    .line 263
    :goto_a
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->next()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 264
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    goto :goto_a

    .line 266
    :cond_e
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object v1

    :cond_f
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 369
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public setForUpdate(Z)V
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->setForUpdate(Z)V

    .line 351
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->setForUpdate(Z)V

    .line 352
    iput-boolean p1, p0, Lorg/h2/command/dml/SelectUnion;->isForUpdate:Z

    return-void
.end method

.method public setOrder(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    return-void
.end method

.method public setRight(Lorg/h2/command/dml/Query;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setSQL(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/h2/command/dml/SelectUnion;->sqlStatement:Ljava/lang/String;

    return-void
.end method

.method public setUnionType(I)V
    .locals 0

    .line 86
    iput p1, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->updateAggregate(Lorg/h2/engine/Session;)V

    .line 456
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
