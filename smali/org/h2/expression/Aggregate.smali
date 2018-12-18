.class public Lorg/h2/expression/Aggregate;
.super Lorg/h2/expression/Expression;
.source "Aggregate.java"


# static fields
.field private static final AGGREGATES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final AVG:I = 0x6

.field static final BIT_AND:I = 0xe

.field static final BIT_OR:I = 0xd

.field static final BOOL_AND:I = 0xc

.field static final BOOL_OR:I = 0xb

.field public static final COUNT:I = 0x1

.field public static final COUNT_ALL:I = 0x0

.field public static final GROUP_CONCAT:I = 0x2

.field static final HISTOGRAM:I = 0x10

.field static final MAX:I = 0x5

.field static final MIN:I = 0x4

.field static final SELECTIVITY:I = 0xf

.field static final STDDEV_POP:I = 0x7

.field static final STDDEV_SAMP:I = 0x8

.field static final SUM:I = 0x3

.field static final VAR_POP:I = 0x9

.field static final VAR_SAMP:I = 0xa


# instance fields
.field private dataType:I

.field private displaySize:I

.field private final distinct:Z

.field private groupConcatOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private groupConcatSeparator:Lorg/h2/expression/Expression;

.field private groupConcatSort:Lorg/h2/result/SortOrder;

.field private lastGroupRowId:I

.field private on:Lorg/h2/expression/Expression;

.field private precision:J

.field private scale:I

.field private final select:Lorg/h2/command/dml/Select;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 129
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/expression/Aggregate;->AGGREGATES:Ljava/util/HashMap;

    const-string v0, "COUNT"

    const/4 v1, 0x1

    .line 160
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "SUM"

    const/4 v1, 0x3

    .line 161
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "MIN"

    const/4 v1, 0x4

    .line 162
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "MAX"

    const/4 v1, 0x5

    .line 163
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "AVG"

    const/4 v1, 0x6

    .line 164
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "GROUP_CONCAT"

    const/4 v1, 0x2

    .line 165
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STRING_AGG"

    .line 167
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STDDEV_SAMP"

    const/16 v1, 0x8

    .line 168
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STDDEV"

    .line 169
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STDDEV_POP"

    const/4 v1, 0x7

    .line 170
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STDDEVP"

    .line 171
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VAR_POP"

    const/16 v1, 0x9

    .line 172
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VARP"

    .line 173
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VAR_SAMP"

    const/16 v1, 0xa

    .line 174
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VAR"

    .line 175
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VARIANCE"

    .line 176
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "BOOL_OR"

    const/16 v1, 0xb

    .line 177
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "SOME"

    .line 179
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "BOOL_AND"

    const/16 v1, 0xc

    .line 180
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "EVERY"

    .line 182
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "SELECTIVITY"

    const/16 v1, 0xf

    .line 183
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "HISTOGRAM"

    const/16 v1, 0x10

    .line 184
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "BIT_OR"

    const/16 v1, 0xd

    .line 185
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "BIT_AND"

    const/16 v1, 0xe

    .line 186
    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 153
    iput p1, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 154
    iput-object p2, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 155
    iput-object p3, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    .line 156
    iput-boolean p4, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    return-void
.end method

.method private static addAggregate(Ljava/lang/String;I)V
    .locals 1

    .line 190
    sget-object v0, Lorg/h2/expression/Aggregate;->AGGREGATES:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAggregateType(Ljava/lang/String;)I
    .locals 1

    .line 201
    sget-object v0, Lorg/h2/expression/Aggregate;->AGGREGATES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getColumnIndex()Lorg/h2/index/Index;
    .locals 2

    .line 579
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ExpressionColumn;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    .line 581
    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v1

    .line 582
    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    .line 585
    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getIndexForColumn(Lorg/h2/table/Column;)Lorg/h2/index/Index;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSQLGroupConcat()Ljava/lang/String;
    .locals 4

    .line 495
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "GROUP_CONCAT("

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    iget-boolean v1, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    if-eqz v1, :cond_0

    const-string v1, "DISTINCT "

    .line 497
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 499
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 500
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string v1, " ORDER BY "

    .line 501
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 502
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/command/dml/SelectOrderBy;

    const-string v3, ", "

    .line 503
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 504
    iget-object v3, v2, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 505
    iget-boolean v2, v2, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    if-eqz v2, :cond_1

    const-string v2, " DESC"

    .line 506
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    .line 510
    :cond_2
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_3

    const-string v1, " SEPARATOR "

    .line 511
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    const/16 v1, 0x29

    .line 513
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initOrder(Lorg/h2/engine/Session;)Lorg/h2/result/SortOrder;
    .locals 6

    .line 224
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 225
    new-array v1, v0, [I

    .line 226
    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 228
    iget-object v4, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/command/dml/SelectOrderBy;

    add-int/lit8 v5, v3, 0x1

    .line 229
    aput v5, v1, v3

    .line 230
    iget-boolean v4, v4, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    .line 231
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Lorg/h2/result/SortOrder;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/h2/result/SortOrder;-><init>(Lorg/h2/engine/Database;[I[ILjava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public getCost()I
    .locals 2

    .line 631
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method public getDisplaySize()I
    .locals 1

    .line 491
    iget v0, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    return v0
.end method

.method public getPrecision()J
    .locals 2

    .line 486
    iget-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 519
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    packed-switch v0, :pswitch_data_0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/expression/Aggregate;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "HISTOGRAM"

    goto :goto_0

    :pswitch_1
    const-string v0, "SELECTIVITY"

    goto :goto_0

    :pswitch_2
    const-string v0, "BIT_AND"

    goto :goto_0

    :pswitch_3
    const-string v0, "BIT_OR"

    goto :goto_0

    :pswitch_4
    const-string v0, "BOOL_AND"

    goto :goto_0

    :pswitch_5
    const-string v0, "BOOL_OR"

    goto :goto_0

    :pswitch_6
    const-string v0, "VAR_SAMP"

    goto :goto_0

    :pswitch_7
    const-string v0, "VAR_POP"

    goto :goto_0

    :pswitch_8
    const-string v0, "STDDEV_SAMP"

    goto :goto_0

    :pswitch_9
    const-string v0, "STDDEV_POP"

    goto :goto_0

    :pswitch_a
    const-string v0, "AVG"

    goto :goto_0

    :pswitch_b
    const-string v0, "MAX"

    goto :goto_0

    :pswitch_c
    const-string v0, "MIN"

    goto :goto_0

    :pswitch_d
    const-string v0, "SUM"

    goto :goto_0

    .line 521
    :pswitch_e
    invoke-direct {p0}, Lorg/h2/expression/Aggregate;->getSQLGroupConcat()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_f
    const-string v0, "COUNT"

    .line 572
    :goto_0
    iget-boolean v1, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    if-eqz v1, :cond_0

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(DISTINCT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->enclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_10
    const-string v0, "COUNT(*)"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public getScale()I
    .locals 1

    .line 481
    iget v0, p0, Lorg/h2/expression/Aggregate;->scale:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 358
    iget v0, p0, Lorg/h2/expression/Aggregate;->dataType:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 6

    .line 281
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->isQuickAggregateQuery()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 282
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    packed-switch v0, :pswitch_data_0

    .line 305
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/expression/Aggregate;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_2

    .line 289
    :pswitch_1
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 290
    :goto_0
    invoke-direct {p0}, Lorg/h2/expression/Aggregate;->getColumnIndex()Lorg/h2/index/Index;

    move-result-object v2

    .line 291
    invoke-interface {v2}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    xor-int/lit8 v0, v0, 0x1

    .line 295
    :cond_1
    invoke-interface {v2, p1, v0}, Lorg/h2/index/Index;->findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;

    move-result-object p1

    .line 296
    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p1

    if-nez p1, :cond_2

    .line 299
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    .line 301
    :cond_2
    invoke-interface {v2}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    :goto_1
    return-object p1

    .line 285
    :pswitch_2
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getTopTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    .line 308
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 312
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/AggregateData;

    if-nez v0, :cond_4

    .line 314
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    invoke-static {v0}, Lorg/h2/expression/AggregateData;->create(I)Lorg/h2/expression/AggregateData;

    move-result-object v0

    .line 316
    :cond_4
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    iget v3, p0, Lorg/h2/expression/Aggregate;->dataType:I

    iget-boolean v4, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    invoke-virtual {v0, v2, v3, v4}, Lorg/h2/expression/AggregateData;->getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;

    move-result-object v2

    .line 317
    iget v3, p0, Lorg/h2/expression/Aggregate;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 318
    check-cast v0, Lorg/h2/expression/AggregateDataGroupConcat;

    invoke-virtual {v0}, Lorg/h2/expression/AggregateDataGroupConcat;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 319
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_6

    .line 322
    :cond_5
    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 323
    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatSort:Lorg/h2/result/SortOrder;

    .line 324
    new-instance v3, Lorg/h2/expression/Aggregate$1;

    invoke-direct {v3, p0, v2}, Lorg/h2/expression/Aggregate$1;-><init>(Lorg/h2/expression/Aggregate;Lorg/h2/result/SortOrder;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 333
    :cond_6
    new-instance v2, Lorg/h2/util/StatementBuilder;

    invoke-direct {v2}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 334
    iget-object v3, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-nez v3, :cond_7

    const-string p1, ","

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    .line 336
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Value;

    .line 338
    invoke-virtual {v3}, Lorg/h2/value/Value;->getType()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_8

    .line 339
    check-cast v3, Lorg/h2/value/ValueArray;

    invoke-virtual {v3}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 341
    :cond_8
    invoke-virtual {v3}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    .line 347
    invoke-virtual {v2, p1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 349
    :cond_a
    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_4

    .line 351
    :cond_b
    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    goto :goto_7

    .line 320
    :cond_c
    :goto_6
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_d
    :goto_7
    return-object v2

    :cond_e
    const p1, 0x15fc6

    .line 310
    invoke-virtual {p0}, Lorg/h2/expression/Aggregate;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    .line 594
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 595
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v2

    .line 605
    :pswitch_1
    invoke-direct {p0}, Lorg/h2/expression/Aggregate;->getColumnIndex()Lorg/h2/index/Index;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 597
    :pswitch_2
    iget-boolean v0, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getNullable()I

    move-result v0

    if-nez v0, :cond_1

    .line 598
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/Table;->canGetRowCount()Z

    move-result p1

    return p1

    :cond_1
    return v2

    .line 602
    :pswitch_3
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/Table;->canGetRowCount()Z

    move-result p1

    return p1

    .line 611
    :cond_2
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 614
    :cond_3
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 618
    :cond_4
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 619
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_6

    .line 620
    iget-object v4, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/command/dml/SelectOrderBy;

    .line 621
    iget-object v4, v4, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 2

    .line 363
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/command/dml/SelectOrderBy;

    .line 368
    iget-object v1, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_2
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 5

    .line 378
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 380
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 381
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Aggregate;->scale:I

    .line 382
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    .line 383
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/command/dml/SelectOrderBy;

    .line 387
    iget-object v2, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    goto :goto_0

    .line 389
    :cond_1
    invoke-direct {p0, p1}, Lorg/h2/expression/Aggregate;->initOrder(Lorg/h2/engine/Session;)Lorg/h2/result/SortOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSort:Lorg/h2/result/SortOrder;

    .line 391
    :cond_2
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    .line 394
    :cond_3
    iget p1, p0, Lorg/h2/expression/Aggregate;->type:I

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const v2, 0x15f9f

    const/4 v3, 0x5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_1

    :pswitch_0
    const/16 p1, 0x11

    .line 414
    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 415
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    .line 416
    iput v1, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    int-to-long v0, v1

    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    goto/16 :goto_1

    :pswitch_1
    const/4 p1, 0x4

    .line 408
    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 409
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    const-wide/16 v0, 0xa

    .line 410
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    const/16 p1, 0xb

    .line 411
    iput p1, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    goto/16 :goto_1

    .line 454
    :pswitch_2
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    invoke-static {p1}, Lorg/h2/value/DataType;->supportsAdd(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 455
    :cond_4
    invoke-virtual {p0}, Lorg/h2/expression/Aggregate;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 447
    :pswitch_3
    iput v0, p0, Lorg/h2/expression/Aggregate;->dataType:I

    const-wide/16 v0, 0x1

    .line 448
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    .line 449
    iput v3, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    .line 450
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x7

    .line 440
    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    const-wide/16 v0, 0x11

    .line 441
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    const/16 p1, 0x18

    .line 442
    iput p1, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    .line 443
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    goto :goto_1

    .line 429
    :pswitch_5
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    invoke-static {p1}, Lorg/h2/value/DataType;->supportsAdd(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 430
    :cond_5
    invoke-virtual {p0}, Lorg/h2/expression/Aggregate;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 419
    :pswitch_6
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    if-ne p1, v0, :cond_6

    .line 421
    iput v3, p0, Lorg/h2/expression/Aggregate;->dataType:I

    goto :goto_1

    .line 422
    :cond_6
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    invoke-static {p1}, Lorg/h2/value/DataType;->supportsAdd(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 425
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    invoke-static {p1}, Lorg/h2/value/DataType;->getAddProofType(I)I

    move-result p1

    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    goto :goto_1

    .line 423
    :cond_7
    invoke-virtual {p0}, Lorg/h2/expression/Aggregate;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_7
    const/16 p1, 0xd

    .line 396
    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 397
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    .line 398
    iput v1, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    int-to-long v0, v1

    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    goto :goto_1

    .line 402
    :pswitch_8
    iput v3, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 403
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    const-wide/16 v0, 0x13

    .line 404
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    const/16 p1, 0x14

    .line 405
    iput p1, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    :goto_1
    :pswitch_9
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 2

    .line 466
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/command/dml/SelectOrderBy;

    .line 471
    iget-object v1, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_2
    return-void
.end method

.method public setGroupConcatOrder(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    return-void
.end method

.method public setGroupConcatSeparator(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 5

    .line 242
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v1}, Lorg/h2/command/dml/Select;->getCurrentGroupRowId()I

    move-result v1

    .line 249
    iget v2, p0, Lorg/h2/expression/Aggregate;->lastGroupRowId:I

    if-ne v2, v1, :cond_1

    return-void

    .line 253
    :cond_1
    iput v1, p0, Lorg/h2/expression/Aggregate;->lastGroupRowId:I

    .line 255
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/AggregateData;

    if-nez v1, :cond_2

    .line 257
    iget v1, p0, Lorg/h2/expression/Aggregate;->type:I

    invoke-static {v1}, Lorg/h2/expression/AggregateData;->create(I)Lorg/h2/expression/AggregateData;

    move-result-object v1

    .line 258
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_2
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 261
    :goto_0
    iget v2, p0, Lorg/h2/expression/Aggregate;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 262
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, v2, :cond_5

    const/16 v2, 0xd

    .line 263
    invoke-virtual {v0, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 265
    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 266
    new-array v3, v3, [Lorg/h2/value/Value;

    const/4 v4, 0x0

    .line 267
    aput-object v0, v3, v4

    :goto_1
    if-ge v4, v2, :cond_4

    .line 269
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/dml/SelectOrderBy;

    add-int/lit8 v4, v4, 0x1

    .line 270
    iget-object v0, v0, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    aput-object v0, v3, v4

    goto :goto_1

    .line 272
    :cond_4
    invoke-static {v3}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v0

    .line 276
    :cond_5
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iget v2, p0, Lorg/h2/expression/Aggregate;->dataType:I

    iget-boolean v3, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/h2/expression/AggregateData;->add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V

    return-void
.end method
