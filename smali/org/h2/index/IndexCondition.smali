.class public Lorg/h2/index/IndexCondition;
.super Ljava/lang/Object;
.source "IndexCondition.java"


# static fields
.field public static final ALWAYS_FALSE:I = 0x8

.field public static final END:I = 0x4

.field public static final EQUALITY:I = 0x1

.field public static final RANGE:I = 0x6

.field public static final SPATIAL_INTERSECTS:I = 0x10

.field public static final START:I = 0x2


# instance fields
.field private final column:Lorg/h2/table/Column;

.field private final compareType:I

.field private final expression:Lorg/h2/expression/Expression;

.field private expressionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private expressionQuery:Lorg/h2/command/dml/Query;


# direct methods
.method private constructor <init>(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lorg/h2/index/IndexCondition;->compareType:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p2}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    .line 86
    iput-object p3, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    return-void
.end method

.method private static compareTypeToString(I)Ljava/lang/String;
    .locals 3

    .line 409
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "&"

    .line 411
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "EQUALITY"

    .line 412
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "&"

    .line 415
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "START"

    .line 416
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-string v1, "&"

    .line 419
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "END"

    .line 420
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const-string v1, "&"

    .line 423
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "ALWAYS_FALSE"

    .line 424
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    const/16 v1, 0x10

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    const-string p0, "&"

    .line 427
    invoke-virtual {v0, p0}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string p0, "SPATIAL_INTERSECTS"

    .line 428
    invoke-virtual {v0, p0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 430
    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;
    .locals 1

    .line 100
    new-instance v0, Lorg/h2/index/IndexCondition;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/index/IndexCondition;-><init>(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method public static getInList(Lorg/h2/expression/ExpressionColumn;Ljava/util/List;)Lorg/h2/index/IndexCondition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/expression/ExpressionColumn;",
            "Ljava/util/List<",
            "Lorg/h2/expression/Expression;",
            ">;)",
            "Lorg/h2/index/IndexCondition;"
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/h2/index/IndexCondition;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/h2/index/IndexCondition;-><init>(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)V

    .line 115
    iput-object p1, v0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    return-object v0
.end method

.method public static getInQuery(Lorg/h2/expression/ExpressionColumn;Lorg/h2/command/dml/Query;)Lorg/h2/index/IndexCondition;
    .locals 3

    .line 128
    new-instance v0, Lorg/h2/index/IndexCondition;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/h2/index/IndexCondition;-><init>(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)V

    .line 130
    iput-object p1, v0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    return-object v0
.end method


# virtual methods
.method public getColumn()Lorg/h2/table/Column;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getCompareType()I
    .locals 1

    .line 338
    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    return v0
.end method

.method public getCurrentResult()Lorg/h2/result/ResultInterface;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentValueList(Lorg/h2/engine/Session;)[Lorg/h2/value/Value;
    .locals 4

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 153
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    .line 154
    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    .line 155
    iget-object v3, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    invoke-virtual {v3, v2}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/value/Value;

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object p1

    .line 161
    new-instance v0, Lorg/h2/index/IndexCondition$1;

    invoke-direct {v0, p0, p1}, Lorg/h2/index/IndexCondition$1;-><init>(Lorg/h2/index/IndexCondition;Lorg/h2/value/CompareMode;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public getExpression()Lorg/h2/expression/Expression;
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getExpressionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    return-object v0
.end method

.method public getExpressionQuery()Lorg/h2/command/dml/Query;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getMask(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/IndexCondition;",
            ">;)I"
        }
    .end annotation

    .line 242
    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    return v1

    .line 250
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_0

    const-string p1, "TABLE"

    .line 251
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v2

    :pswitch_2
    const/16 p1, 0x8

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/4 p1, 0x2

    return p1

    :cond_1
    :pswitch_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSQL()Ljava/lang/String;
    .locals 5

    .line 186
    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "FALSE"

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 190
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 191
    iget v1, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    const/16 v2, 0x29

    packed-switch v1, :pswitch_data_1

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/index/IndexCondition;->compareType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_1

    :pswitch_0
    const-string v1, " && "

    .line 224
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :pswitch_1
    const-string v1, " IN("

    .line 219
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 220
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 221
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :pswitch_2
    const-string v1, " IN("

    .line 211
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 212
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    const-string v4, ", "

    .line 213
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :pswitch_3
    const-string v1, " < "

    .line 208
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :pswitch_4
    const-string v1, " <= "

    .line 205
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :pswitch_5
    const-string v1, " > "

    .line 202
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :pswitch_6
    const-string v1, " >= "

    .line 199
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :pswitch_7
    const-string v1, " = "

    .line 193
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_2
    const-string v1, " IS "

    .line 196
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 229
    :goto_1
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 232
    :cond_3
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAlwaysFalse()Z
    .locals 2

    .line 283
    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnd()Z
    .locals 2

    .line 311
    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEvaluatable()Z
    .locals 3

    .line 383
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    return v0

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    .line 389
    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_3
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    return v0
.end method

.method public isSpatialIntersects()Z
    .locals 2

    .line 329
    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStart()Z
    .locals 2

    .line 293
    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", compareType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/IndexCondition;->compareType:I

    invoke-static {v1}, Lorg/h2/index/IndexCondition;->compareTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expressionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expressionQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
