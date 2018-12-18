.class public Lorg/h2/table/TableFilter;
.super Ljava/lang/Object;
.source "TableFilter.java"

# interfaces
.implements Lorg/h2/table/ColumnResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/table/TableFilter$TableFilterVisitor;
    }
.end annotation


# static fields
.field private static final AFTER_LAST:I = 0x2

.field private static final BEFORE_FIRST:I = 0x0

.field private static final FOUND:I = 0x1

.field private static final NULL_ROW:I = 0x3


# instance fields
.field private alias:Ljava/lang/String;

.field private current:Lorg/h2/result/Row;

.field private currentSearchRow:Lorg/h2/result/SearchRow;

.field private final cursor:Lorg/h2/index/IndexCursor;

.field private evaluatable:Z

.field private filterCondition:Lorg/h2/expression/Expression;

.field private foundOne:Z

.field private fullCondition:Lorg/h2/expression/Expression;

.field private final hashCode:I

.field private index:Lorg/h2/index/Index;

.field private final indexConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/IndexCondition;",
            ">;"
        }
    .end annotation
.end field

.field private join:Lorg/h2/table/TableFilter;

.field private joinBatch:Lorg/h2/table/JoinBatch;

.field private joinCondition:Lorg/h2/expression/Expression;

.field private joinFilterId:I

.field private joinOuter:Z

.field protected joinOuterIndirect:Z

.field private masks:[I

.field private naturalJoinColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field private nestedJoin:Lorg/h2/table/TableFilter;

.field private final orderInFrom:I

.field private scanCount:I

.field private final select:Lorg/h2/command/dml/Select;

.field private session:Lorg/h2/engine/Session;

.field private state:I

.field private final table:Lorg/h2/table/Table;

.field private used:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;I)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lorg/h2/table/TableFilter;->joinFilterId:I

    .line 82
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    .line 133
    iput-object p1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    .line 134
    iput-object p2, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    .line 135
    iput-object p3, p0, Lorg/h2/table/TableFilter;->alias:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lorg/h2/table/TableFilter;->select:Lorg/h2/command/dml/Select;

    .line 137
    new-instance p3, Lorg/h2/index/IndexCursor;

    invoke-direct {p3, p0}, Lorg/h2/index/IndexCursor;-><init>(Lorg/h2/table/TableFilter;)V

    iput-object p3, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    if-nez p4, :cond_0

    .line 139
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p4}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 141
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->nextObjectId()I

    move-result p1

    iput p1, p0, Lorg/h2/table/TableFilter;->hashCode:I

    .line 142
    iput p6, p0, Lorg/h2/table/TableFilter;->orderInFrom:I

    return-void
.end method

.method private checkTimeout()V
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->checkCanceled()V

    return-void
.end method

.method private isAlwaysTopTableFilter(I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 374
    :cond_0
    iget-object p1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getSubQueryInfo()Lorg/h2/table/SubQueryInfo;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 379
    :cond_1
    invoke-virtual {p1}, Lorg/h2/table/SubQueryInfo;->getFilter()I

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 382
    :cond_2
    invoke-virtual {p1}, Lorg/h2/table/SubQueryInfo;->getUpper()Lorg/h2/table/SubQueryInfo;

    move-result-object p1

    goto :goto_0
.end method

.method private setEvaluatable(Lorg/h2/table/TableFilter;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0, v1}, Lorg/h2/table/TableFilter;->setEvaluatable(Z)V

    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0, p0, v1}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 262
    :cond_1
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getNestedJoin()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 264
    invoke-direct {p0, v0}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;)V

    .line 266
    :cond_2
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void
.end method


# virtual methods
.method public addFilterCondition(Lorg/h2/expression/Expression;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 641
    iget-object p2, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    if-nez p2, :cond_0

    .line 642
    iput-object p1, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    goto :goto_0

    .line 644
    :cond_0
    new-instance p2, Lorg/h2/expression/ConditionAndOr;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    invoke-direct {p2, v0, v1, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object p2, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    goto :goto_0

    .line 648
    :cond_1
    iget-object p2, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    if-nez p2, :cond_2

    .line 649
    iput-object p1, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    goto :goto_0

    .line 651
    :cond_2
    new-instance p2, Lorg/h2/expression/ConditionAndOr;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    invoke-direct {p2, v0, v1, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object p2, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    :goto_0
    return-void
.end method

.method public addIndexCondition(Lorg/h2/index/IndexCondition;)V
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V
    .locals 1

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 668
    invoke-virtual {p4, p0, v0}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 669
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v0, :cond_0

    .line 670
    new-instance v0, Lorg/h2/table/TableFilter$2;

    invoke-direct {v0, p0, p4}, Lorg/h2/table/TableFilter$2;-><init>(Lorg/h2/table/TableFilter;Lorg/h2/expression/Expression;)V

    invoke-virtual {p0, v0}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    .line 676
    new-instance v0, Lorg/h2/table/TableFilter$3;

    invoke-direct {v0, p0, p4}, Lorg/h2/table/TableFilter$3;-><init>(Lorg/h2/table/TableFilter;Lorg/h2/expression/Expression;)V

    invoke-virtual {p1, v0}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    :cond_0
    if-eqz p3, :cond_3

    .line 684
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v0, :cond_3

    .line 685
    iget-object p3, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-nez p3, :cond_2

    .line 688
    iput-object p1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    .line 689
    iput-boolean p2, p1, Lorg/h2/table/TableFilter;->joinOuter:Z

    if-eqz p2, :cond_1

    .line 691
    new-instance p2, Lorg/h2/table/TableFilter$4;

    invoke-direct {p2, p0}, Lorg/h2/table/TableFilter$4;-><init>(Lorg/h2/table/TableFilter;)V

    invoke-virtual {p0, p2}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    :cond_1
    if-eqz p4, :cond_7

    .line 699
    invoke-virtual {p1, p4}, Lorg/h2/table/TableFilter;->mapAndAddFilter(Lorg/h2/expression/Expression;)V

    goto :goto_2

    .line 686
    :cond_2
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 702
    :cond_3
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-nez v0, :cond_6

    .line 703
    iput-object p1, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    .line 704
    iput-boolean p2, p1, Lorg/h2/table/TableFilter;->joinOuter:Z

    .line 705
    iget-object p3, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {p3}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p3

    invoke-virtual {p3}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p3

    iget-boolean p3, p3, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz p3, :cond_4

    if-eqz p2, :cond_5

    .line 707
    new-instance p2, Lorg/h2/table/TableFilter$5;

    invoke-direct {p2, p0}, Lorg/h2/table/TableFilter$5;-><init>(Lorg/h2/table/TableFilter;)V

    invoke-virtual {p1, p2}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 718
    iget-object p2, p1, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    :goto_0
    if-eqz p2, :cond_5

    const/4 p3, 0x1

    .line 720
    iput-boolean p3, p2, Lorg/h2/table/TableFilter;->joinOuter:Z

    .line 721
    iget-object p2, p2, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz p4, :cond_7

    .line 726
    invoke-virtual {p1, p4}, Lorg/h2/table/TableFilter;->mapAndAddFilter(Lorg/h2/expression/Expression;)V

    goto :goto_2

    .line 729
    :cond_6
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public addNaturalJoinColumn(Lorg/h2/table/Column;)V
    .locals 1

    .line 1101
    iget-object v0, p0, Lorg/h2/table/TableFilter;->naturalJoinColumns:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1102
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->naturalJoinColumns:Ljava/util/ArrayList;

    .line 1104
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->naturalJoinColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get()Lorg/h2/result/Row;
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/TableFilter;->currentSearchRow:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    .line 595
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getBestPlanItem(Lorg/h2/engine/Session;[Lorg/h2/table/TableFilter;ILjava/util/HashSet;)Lorg/h2/table/PlanItem;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/table/PlanItem;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/h2/table/TableFilter;->select:Lorg/h2/command/dml/Select;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/h2/table/TableFilter;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getSortOrder()Lorg/h2/result/SortOrder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 199
    :goto_0
    iget-object v2, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 200
    new-instance v9, Lorg/h2/table/PlanItem;

    invoke-direct {v9}, Lorg/h2/table/PlanItem;-><init>()V

    .line 201
    iget-object v2, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-object v7, v0

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/index/Index;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/h2/table/PlanItem;->setIndex(Lorg/h2/index/Index;)V

    .line 203
    invoke-virtual {v9}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v2

    invoke-interface/range {v2 .. v8}, Lorg/h2/index/Index;->getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D

    move-result-wide v2

    iput-wide v2, v9, Lorg/h2/table/PlanItem;->cost:D

    goto :goto_1

    :cond_1
    move-object v9, v1

    .line 206
    :goto_1
    iget-object v2, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v2

    array-length v2, v2

    .line 207
    new-array v2, v2, [I

    .line 208
    iget-object v3, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/IndexCondition;

    .line 209
    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->isEvaluatable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->isAlwaysFalse()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 214
    :cond_3
    invoke-virtual {v4}, Lorg/h2/index/IndexCondition;->getColumn()Lorg/h2/table/Column;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/table/Column;->getColumnId()I

    move-result v5

    if-ltz v5, :cond_2

    .line 216
    aget v6, v2, v5

    iget-object v7, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Lorg/h2/index/IndexCondition;->getMask(Ljava/util/ArrayList;)I

    move-result v4

    or-int/2addr v4, v6

    aput v4, v2, v5

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 220
    :goto_3
    iget-object v2, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    move v6, p3

    move-object v7, v0

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/h2/table/Table;->getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v1}, Lorg/h2/table/PlanItem;->setMasks([I)V

    .line 225
    iget-wide v1, v0, Lorg/h2/table/PlanItem;->cost:D

    iget-wide v3, v0, Lorg/h2/table/PlanItem;->cost:D

    iget-object v5, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    add-int/lit8 v5, p3, 0x1

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    iput-wide v1, v0, Lorg/h2/table/PlanItem;->cost:D

    if-eqz v9, :cond_5

    .line 227
    iget-wide v1, v9, Lorg/h2/table/PlanItem;->cost:D

    iget-wide v3, v0, Lorg/h2/table/PlanItem;->cost:D

    cmpg-double v5, v1, v3

    if-gez v5, :cond_5

    move-object v0, v9

    .line 231
    :cond_5
    iget-object v1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v1, :cond_6

    .line 232
    iget-object v1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-direct {p0, v1}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;)V

    .line 233
    iget-object v1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/h2/table/TableFilter;->getBestPlanItem(Lorg/h2/engine/Session;[Lorg/h2/table/TableFilter;ILjava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/table/PlanItem;->setNestedJoinPlan(Lorg/h2/table/PlanItem;)V

    .line 236
    iget-wide v1, v0, Lorg/h2/table/PlanItem;->cost:D

    iget-wide v3, v0, Lorg/h2/table/PlanItem;->cost:D

    invoke-virtual {v0}, Lorg/h2/table/PlanItem;->getNestedJoinPlan()Lorg/h2/table/PlanItem;

    move-result-object v5

    iget-wide v5, v5, Lorg/h2/table/PlanItem;->cost:D

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    iput-wide v1, v0, Lorg/h2/table/PlanItem;->cost:D

    .line 238
    :cond_6
    iget-object v1, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v1, :cond_8

    .line 239
    iget-object v1, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-direct {p0, v1}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;)V

    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 242
    aget-object v1, p2, p3

    iget-object v2, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-ne v1, v2, :cond_7

    .line 243
    iget-object v1, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/h2/table/TableFilter;->getBestPlanItem(Lorg/h2/engine/Session;[Lorg/h2/table/TableFilter;ILjava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/table/PlanItem;->setJoinPlan(Lorg/h2/table/PlanItem;)V

    .line 246
    iget-wide p1, v0, Lorg/h2/table/PlanItem;->cost:D

    iget-wide p3, v0, Lorg/h2/table/PlanItem;->cost:D

    invoke-virtual {v0}, Lorg/h2/table/PlanItem;->getJoinPlan()Lorg/h2/table/PlanItem;

    move-result-object v1

    iget-wide v1, v1, Lorg/h2/table/PlanItem;->cost:D

    mul-double p3, p3, v1

    add-double/2addr p1, p3

    iput-wide p1, v0, Lorg/h2/table/PlanItem;->cost:D

    :cond_8
    return-object v0
.end method

.method public getColumns()[Lorg/h2/table/Column;
    .locals 1

    .line 1018
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    return-object v0
.end method

.method public getFilterCondition()Lorg/h2/expression/Expression;
    .locals 1

    .line 944
    iget-object v0, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getIndex()Lorg/h2/index/Index;
    .locals 1

    .line 900
    iget-object v0, p0, Lorg/h2/table/TableFilter;->index:Lorg/h2/index/Index;

    return-object v0
.end method

.method public getIndexConditions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/IndexCondition;",
            ">;"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIndexCursor()Lorg/h2/index/IndexCursor;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    return-object v0
.end method

.method public getJoin()Lorg/h2/table/TableFilter;
    .locals 1

    .line 753
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method public getJoinBatch()Lorg/h2/table/JoinBatch;
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    return-object v0
.end method

.method public getJoinCondition()Lorg/h2/expression/Expression;
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getJoinFilterId()I
    .locals 1

    .line 445
    iget v0, p0, Lorg/h2/table/TableFilter;->joinFilterId:I

    return v0
.end method

.method public getMasks()[I
    .locals 1

    .line 892
    iget-object v0, p0, Lorg/h2/table/TableFilter;->masks:[I

    return-object v0
.end method

.method public getNestedJoin()Lorg/h2/table/TableFilter;
    .locals 1

    .line 1164
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method public getOrderInFrom()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/h2/table/TableFilter;->orderInFrom:I

    return v0
.end method

.method public getPlanSQL(Z)Ljava/lang/String;
    .locals 8

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 784
    iget-boolean v1, p0, Lorg/h2/table/TableFilter;->joinOuter:Z

    if-eqz v1, :cond_0

    const-string v1, "LEFT OUTER JOIN "

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "INNER JOIN "

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    .line 791
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 792
    iget-object v6, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    .line 794
    :cond_2
    iget-object v7, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eq v6, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Lorg/h2/table/TableFilter;->getPlanSQL(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 796
    invoke-virtual {v6}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v6

    if-nez v6, :cond_2

    .line 798
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "("

    .line 799
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_4

    const-string v4, "(\n"

    .line 801
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_4
    invoke-static {v1, v2, v5}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    const/16 v1, 0x29

    .line 805
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p1, :cond_7

    const-string p1, " ON "

    .line 808
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    iget-object p1, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    if-nez p1, :cond_6

    const-string p1, "1=1"

    .line 812
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 814
    :cond_6
    iget-object p1, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 819
    :cond_8
    iget-object v1, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget-object v1, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->isView()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    check-cast v1, Lorg/h2/table/TableView;

    invoke-virtual {v1}, Lorg/h2/table/TableView;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    const p1, 0x15ffd

    const/4 v0, 0x2

    .line 821
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "not compiled"

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 823
    :cond_a
    :goto_3
    iget-object v1, p0, Lorg/h2/table/TableFilter;->alias:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/16 v1, 0x20

    .line 824
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->alias:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_b
    iget-object v1, p0, Lorg/h2/table/TableFilter;->index:Lorg/h2/index/Index;

    if-eqz v1, :cond_11

    .line 827
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    new-instance v1, Lorg/h2/util/StatementBuilder;

    invoke-direct {v1}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 829
    iget-object v3, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    if-eqz v3, :cond_e

    .line 830
    iget-object v3, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    iget v6, p0, Lorg/h2/table/TableFilter;->joinFilterId:I

    invoke-virtual {v3, v6}, Lorg/h2/table/JoinBatch;->getLookupBatch(I)Lorg/h2/index/IndexLookupBatch;

    move-result-object v3

    if-nez v3, :cond_d

    .line 832
    iget v3, p0, Lorg/h2/table/TableFilter;->joinFilterId:I

    if-nez v3, :cond_c

    goto :goto_4

    .line 833
    :cond_c
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_d
    const-string v6, "batched:"

    .line 836
    invoke-virtual {v1, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 837
    invoke-interface {v3}, Lorg/h2/index/IndexLookupBatch;->getPlanSQL()Ljava/lang/String;

    move-result-object v3

    .line 838
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const-string v3, " "

    .line 839
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 842
    :cond_e
    :goto_4
    iget-object v3, p0, Lorg/h2/table/TableFilter;->index:Lorg/h2/index/Index;

    invoke-interface {v3}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 843
    iget-object v3, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    const-string v3, ": "

    .line 844
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 845
    iget-object v3, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/index/IndexCondition;

    const-string v7, "\n    AND "

    .line 846
    invoke-virtual {v1, v7}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v6}, Lorg/h2/index/IndexCondition;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_5

    .line 850
    :cond_f
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteRemarkSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_10

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/* "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " */"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v5}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    if-eqz p1, :cond_13

    const-string p1, "\n    ON "

    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    iget-object p1, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    if-nez p1, :cond_12

    const-string p1, "1=1"

    .line 861
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 863
    :cond_12
    iget-object p1, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    :cond_13
    :goto_6
    iget-object p1, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    if-eqz p1, :cond_14

    .line 867
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 868
    iget-object p1, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/* WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteRemarkSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n*/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 870
    invoke-static {p1, v2, v5}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :cond_14
    iget p1, p0, Lorg/h2/table/TableFilter;->scanCount:I

    if-lez p1, :cond_15

    const-string p1, "\n    /* scanCount: "

    .line 873
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/h2/table/TableFilter;->scanCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " */"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRowIdColumn()Lorg/h2/table/Column;
    .locals 1

    .line 1045
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->rowId:Z

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getRowIdColumn()Lorg/h2/table/Column;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    .line 1013
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Lorg/h2/command/dml/Select;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/h2/table/TableFilter;->select:Lorg/h2/command/dml/Select;

    return-object v0
.end method

.method public getSession()Lorg/h2/engine/Session;
    .locals 1

    .line 1189
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getSystemColumns()[Lorg/h2/table/Column;
    .locals 5

    .line 1030
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->systemColumns:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    .line 1033
    new-array v0, v0, [Lorg/h2/table/Column;

    .line 1034
    new-instance v1, Lorg/h2/table/Column;

    const-string v2, "oid"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1035
    aget-object v1, v0, v2

    iget-object v3, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v1, v3, v2}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 1036
    new-instance v1, Lorg/h2/table/Column;

    const-string v3, "ctid"

    const/16 v4, 0xd

    invoke-direct {v1, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 1037
    aget-object v1, v0, v3

    iget-object v3, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v1, v3, v2}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 1038
    new-instance v1, Lorg/h2/table/Column;

    const-string v3, "CTID"

    invoke-direct {v1, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 1039
    aget-object v1, v0, v3

    iget-object v3, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v1, v3, v2}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    return-object v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getTableAlias()Ljava/lang/String;
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/h2/table/TableFilter;->alias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/h2/table/TableFilter;->alias:Ljava/lang/String;

    return-object v0

    .line 621
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableFilter()Lorg/h2/table/TableFilter;
    .locals 0

    return-object p0
.end method

.method public getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;
    .locals 2

    .line 1053
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    iget v1, p0, Lorg/h2/table/TableFilter;->joinFilterId:I

    invoke-virtual {v0, v1, p1}, Lorg/h2/table/JoinBatch;->getValue(ILorg/h2/table/Column;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 1056
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->currentSearchRow:Lorg/h2/result/SearchRow;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1059
    :cond_1
    invoke-virtual {p1}, Lorg/h2/table/Column;->getColumnId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1061
    iget-object p1, p0, Lorg/h2/table/TableFilter;->currentSearchRow:Lorg/h2/result/SearchRow;

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    .line 1063
    :cond_2
    iget-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    if-nez v0, :cond_4

    .line 1064
    iget-object v0, p0, Lorg/h2/table/TableFilter;->currentSearchRow:Lorg/h2/result/SearchRow;

    invoke-interface {v0, p1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 1068
    :cond_3
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    .line 1069
    iget-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    if-nez v0, :cond_4

    .line 1070
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 1073
    :cond_4
    iget-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    invoke-virtual {v0, p1}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public hasInComparisons()Z
    .locals 3

    .line 1128
    iget-object v0, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/IndexCondition;

    .line 1129
    invoke-virtual {v1}, Lorg/h2/index/IndexCondition;->getCompareType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1119
    iget v0, p0, Lorg/h2/table/TableFilter;->hashCode:I

    return v0
.end method

.method public isEvaluatable()Z
    .locals 1

    .line 1185
    iget-boolean v0, p0, Lorg/h2/table/TableFilter;->evaluatable:Z

    return v0
.end method

.method public isJoinOuter()Z
    .locals 1

    .line 762
    iget-boolean v0, p0, Lorg/h2/table/TableFilter;->joinOuter:Z

    return v0
.end method

.method public isJoinOuterIndirect()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Lorg/h2/table/TableFilter;->joinOuterIndirect:Z

    return v0
.end method

.method public isNaturalJoinColumn(Lorg/h2/table/Column;)Z
    .locals 1

    .line 1114
    iget-object v0, p0, Lorg/h2/table/TableFilter;->naturalJoinColumns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/TableFilter;->naturalJoinColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isOk(Lorg/h2/expression/Expression;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 583
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1}, Lorg/h2/expression/Expression;->getBooleanValue(Lorg/h2/engine/Session;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isUsed()Z
    .locals 1

    .line 913
    iget-boolean v0, p0, Lorg/h2/table/TableFilter;->used:Z

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)V
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 177
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/table/TableFilter;->lock(Lorg/h2/engine/Session;ZZ)V

    :cond_0
    return-void
.end method

.method public lockRowAdd(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;)V"
        }
    .end annotation

    .line 1143
    iget v0, p0, Lorg/h2/table/TableFilter;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1144
    invoke-virtual {p0}, Lorg/h2/table/TableFilter;->get()Lorg/h2/result/Row;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public lockRows(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;)V"
        }
    .end annotation

    .line 1154
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    .line 1155
    invoke-virtual {v0}, Lorg/h2/result/Row;->getCopy()Lorg/h2/result/Row;

    move-result-object v1

    .line 1156
    iget-object v2, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, v0}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 1157
    iget-object v2, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 1158
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 1159
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mapAndAddFilter(Lorg/h2/expression/Expression;)V
    .locals 2

    const/4 v0, 0x0

    .line 740
    invoke-virtual {p1, p0, v0}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    const/4 v1, 0x1

    .line 741
    invoke-virtual {p0, p1, v1}, Lorg/h2/table/TableFilter;->addFilterCondition(Lorg/h2/expression/Expression;Z)V

    .line 742
    iget-object v1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1, p0}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    .line 743
    iget-object v1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {p1, v1, v0}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 745
    iget-object v0, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {p1, v0, v1}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    .line 747
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1}, Lorg/h2/table/TableFilter;->mapAndAddFilter(Lorg/h2/expression/Expression;)V

    :cond_1
    return-void
.end method

.method public next()Z
    .locals 6

    .line 458
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    invoke-virtual {v0}, Lorg/h2/table/JoinBatch;->next()Z

    move-result v0

    return v0

    .line 463
    :cond_0
    iget v0, p0, Lorg/h2/table/TableFilter;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 465
    :cond_1
    iget v0, p0, Lorg/h2/table/TableFilter;->state:I

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 466
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    iget-object v4, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    iget-object v5, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Lorg/h2/index/IndexCursor;->find(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V

    .line 467
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->isAlwaysFalse()Z

    move-result v0

    if-nez v0, :cond_4

    .line 468
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->reset()V

    .line 471
    :cond_2
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_4

    .line 472
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->reset()V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 484
    :cond_4
    :goto_0
    iget v0, p0, Lorg/h2/table/TableFilter;->state:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    goto :goto_2

    .line 487
    :cond_5
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->isAlwaysFalse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    iput v2, p0, Lorg/h2/table/TableFilter;->state:I

    goto :goto_1

    .line 489
    :cond_6
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_7

    .line 490
    iget v0, p0, Lorg/h2/table/TableFilter;->state:I

    if-nez v0, :cond_a

    .line 491
    iput v3, p0, Lorg/h2/table/TableFilter;->state:I

    goto :goto_1

    .line 494
    :cond_7
    iget v0, p0, Lorg/h2/table/TableFilter;->scanCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/h2/table/TableFilter;->scanCount:I

    and-int/lit16 v0, v0, 0xfff

    if-nez v0, :cond_8

    .line 495
    invoke-direct {p0}, Lorg/h2/table/TableFilter;->checkTimeout()V

    .line 497
    :cond_8
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 498
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->currentSearchRow:Lorg/h2/result/SearchRow;

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    .line 500
    iput v3, p0, Lorg/h2/table/TableFilter;->state:I

    goto :goto_1

    .line 502
    :cond_9
    iput v2, p0, Lorg/h2/table/TableFilter;->state:I

    .line 505
    :cond_a
    :goto_1
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/h2/table/TableFilter;->state:I

    if-ne v0, v3, :cond_b

    .line 506
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->next()Z

    move-result v0

    if-nez v0, :cond_b

    .line 507
    iput v2, p0, Lorg/h2/table/TableFilter;->state:I

    .line 508
    iget-boolean v0, p0, Lorg/h2/table/TableFilter;->joinOuter:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/h2/table/TableFilter;->foundOne:Z

    if-nez v0, :cond_4

    .line 516
    :cond_b
    iget v0, p0, Lorg/h2/table/TableFilter;->state:I

    if-ne v0, v2, :cond_d

    .line 517
    iget-boolean v0, p0, Lorg/h2/table/TableFilter;->joinOuter:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/h2/table/TableFilter;->foundOne:Z

    if-nez v0, :cond_c

    .line 518
    invoke-virtual {p0}, Lorg/h2/table/TableFilter;->setNullRow()V

    goto :goto_3

    .line 545
    :cond_c
    :goto_2
    iput v2, p0, Lorg/h2/table/TableFilter;->state:I

    return v1

    .line 523
    :cond_d
    :goto_3
    iget-object v0, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    invoke-virtual {p0, v0}, Lorg/h2/table/TableFilter;->isOk(Lorg/h2/expression/Expression;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    .line 526
    :cond_e
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    invoke-virtual {p0, v0}, Lorg/h2/table/TableFilter;->isOk(Lorg/h2/expression/Expression;)Z

    move-result v0

    .line 527
    iget v5, p0, Lorg/h2/table/TableFilter;->state:I

    if-ne v5, v3, :cond_f

    if-eqz v0, :cond_4

    .line 529
    iput-boolean v3, p0, Lorg/h2/table/TableFilter;->foundOne:Z

    .line 534
    :cond_f
    iget-object v5, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v5, :cond_10

    .line 535
    iget-object v5, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v5}, Lorg/h2/table/TableFilter;->reset()V

    .line 536
    iget-object v5, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v5}, Lorg/h2/table/TableFilter;->next()Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_0

    .line 541
    :cond_10
    iget v5, p0, Lorg/h2/table/TableFilter;->state:I

    if-eq v5, v4, :cond_11

    if-eqz v0, :cond_4

    :cond_11
    return v3
.end method

.method public optimize(Lorg/h2/expression/ExpressionColumn;Lorg/h2/table/Column;)Lorg/h2/expression/Expression;
    .locals 0

    return-object p1
.end method

.method optimizeFullCondition(Z)V
    .locals 4

    .line 968
    iget-object v0, p0, Lorg/h2/table/TableFilter;->fullCondition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_7

    .line 969
    iget-object v0, p0, Lorg/h2/table/TableFilter;->fullCondition:Lorg/h2/expression/Expression;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lorg/h2/table/TableFilter;->joinOuter:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, p0, v3}, Lorg/h2/expression/Expression;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    .line 970
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_4

    .line 971
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lorg/h2/table/TableFilter;->joinOuter:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v0, v3}, Lorg/h2/table/TableFilter;->optimizeFullCondition(Z)V

    .line 973
    :cond_4
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_7

    .line 974
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lorg/h2/table/TableFilter;->joinOuter:Z

    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->optimizeFullCondition(Z)V

    :cond_7
    return-void
.end method

.method public prepare()V
    .locals 3

    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-object v1, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 303
    iget-object v1, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/IndexCondition;

    .line 304
    invoke-virtual {v1}, Lorg/h2/index/IndexCondition;->isAlwaysFalse()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    invoke-virtual {v1}, Lorg/h2/index/IndexCondition;->getColumn()Lorg/h2/table/Column;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Lorg/h2/table/Column;->getColumnId()I

    move-result v2

    if-ltz v2, :cond_0

    .line 307
    iget-object v2, p0, Lorg/h2/table/TableFilter;->index:Lorg/h2/index/Index;

    invoke-interface {v2, v1}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v1

    if-gez v1, :cond_0

    .line 308
    iget-object v1, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_3

    .line 315
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-ne v0, p0, :cond_2

    const-string v0, "self join"

    .line 316
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 318
    :cond_2
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->prepare()V

    .line 320
    :cond_3
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_5

    .line 321
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-ne v0, p0, :cond_4

    const-string v0, "self join"

    .line 322
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 324
    :cond_4
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->prepare()V

    .line 326
    :cond_5
    iget-object v0, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_6

    .line 327
    iget-object v0, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    .line 329
    :cond_6
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_7

    .line 330
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    :cond_7
    return-void
.end method

.method public prepareJoinBatch(Lorg/h2/table/JoinBatch;[Lorg/h2/table/TableFilter;I)Lorg/h2/table/JoinBatch;
    .locals 4

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    const/4 v1, -0x1

    .line 397
    iput v1, p0, Lorg/h2/table/TableFilter;->joinFilterId:I

    .line 398
    invoke-virtual {p0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/Table;->isView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/table/TableFilter;->masks:[I

    iget-object v3, p0, Lorg/h2/table/TableFilter;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v3}, Lorg/h2/command/dml/Select;->getSortOrder()Lorg/h2/result/SortOrder;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Lorg/h2/engine/Session;->pushSubQueryInfo([I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V

    .line 401
    :try_start_0
    iget-object p2, p0, Lorg/h2/table/TableFilter;->index:Lorg/h2/index/Index;

    check-cast p2, Lorg/h2/index/ViewIndex;

    invoke-virtual {p2}, Lorg/h2/index/ViewIndex;->getQuery()Lorg/h2/command/dml/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/command/dml/Query;->prepareJoinBatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object p2, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2}, Lorg/h2/engine/Session;->popSubQueryInfo()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2}, Lorg/h2/engine/Session;->popSubQueryInfo()V

    throw p1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 416
    iget-object p2, p0, Lorg/h2/table/TableFilter;->select:Lorg/h2/command/dml/Select;

    if-eqz p2, :cond_1

    invoke-direct {p0, p3}, Lorg/h2/table/TableFilter;->isAlwaysTopTableFilter(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 417
    iget-object p2, p0, Lorg/h2/table/TableFilter;->index:Lorg/h2/index/Index;

    invoke-interface {p2, p0}, Lorg/h2/index/Index;->createLookupBatch(Lorg/h2/table/TableFilter;)Lorg/h2/index/IndexLookupBatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    new-instance p1, Lorg/h2/table/JoinBatch;

    add-int/lit8 p2, p3, 0x1

    iget-object v1, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-direct {p1, p2, v1}, Lorg/h2/table/JoinBatch;-><init>(ILorg/h2/table/TableFilter;)V

    :cond_1
    if-eqz p1, :cond_4

    .line 423
    iget-object p2, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-nez p2, :cond_3

    .line 426
    iput-object p1, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    .line 427
    iput p3, p0, Lorg/h2/table/TableFilter;->joinFilterId:I

    if-nez v0, :cond_2

    .line 428
    invoke-direct {p0, p3}, Lorg/h2/table/TableFilter;->isAlwaysTopTableFilter(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 432
    iget-object p2, p0, Lorg/h2/table/TableFilter;->index:Lorg/h2/index/Index;

    invoke-interface {p2, p0}, Lorg/h2/index/Index;->createLookupBatch(Lorg/h2/table/TableFilter;)Lorg/h2/index/IndexLookupBatch;

    move-result-object v0

    if-nez v0, :cond_2

    .line 436
    invoke-static {p0}, Lorg/h2/table/JoinBatch;->createFakeIndexLookupBatch(Lorg/h2/table/TableFilter;)Lorg/h2/index/IndexLookupBatch;

    move-result-object v0

    .line 439
    :cond_2
    invoke-virtual {p1, p0, v0}, Lorg/h2/table/JoinBatch;->register(Lorg/h2/table/TableFilter;Lorg/h2/index/IndexLookupBatch;)V

    goto :goto_1

    .line 424
    :cond_3
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public removeFilterCondition()V
    .locals 1

    const/4 v0, 0x0

    .line 951
    iput-object v0, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    return-void
.end method

.method public removeJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 929
    iput-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    return-void
.end method

.method public removeJoinCondition()V
    .locals 1

    const/4 v0, 0x0

    .line 940
    iput-object v0, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    return-void
.end method

.method removeUnusableIndexConditions()V
    .locals 3

    const/4 v0, 0x0

    .line 883
    :goto_0
    iget-object v1, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 884
    iget-object v1, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/IndexCondition;

    .line 885
    invoke-virtual {v1}, Lorg/h2/index/IndexCondition;->isEvaluatable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 886
    iget-object v1, p0, Lorg/h2/table/TableFilter;->indexConditions:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/table/TableFilter;->joinFilterId:I

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinBatch:Lorg/h2/table/JoinBatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/table/JoinBatch;->reset(Z)V

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->reset()V

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->reset()V

    :cond_2
    const/4 v0, 0x0

    .line 365
    iput v0, p0, Lorg/h2/table/TableFilter;->state:I

    .line 366
    iput-boolean v0, p0, Lorg/h2/table/TableFilter;->foundOne:Z

    return-void
.end method

.method public set(Lorg/h2/result/Row;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    .line 607
    iput-object p1, p0, Lorg/h2/table/TableFilter;->currentSearchRow:Lorg/h2/result/SearchRow;

    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lorg/h2/table/TableFilter;->alias:Ljava/lang/String;

    return-void
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 2

    .line 988
    invoke-virtual {p1, p2}, Lorg/h2/table/TableFilter;->setEvaluatable(Z)V

    .line 989
    iget-object v0, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lorg/h2/table/TableFilter;->filterCondition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 992
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lorg/h2/table/TableFilter;->joinCondition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 995
    :cond_1
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_2

    .line 999
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1, p2}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 1002
    :cond_2
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_3

    .line 1003
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1, p2}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_3
    return-void
.end method

.method public setEvaluatable(Z)V
    .locals 0

    .line 1008
    iput-boolean p1, p0, Lorg/h2/table/TableFilter;->evaluatable:Z

    return-void
.end method

.method public setFullCondition(Lorg/h2/expression/Expression;)V
    .locals 1

    .line 955
    iput-object p1, p0, Lorg/h2/table/TableFilter;->fullCondition:Lorg/h2/expression/Expression;

    .line 956
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1}, Lorg/h2/table/TableFilter;->setFullCondition(Lorg/h2/expression/Expression;)V

    :cond_0
    return-void
.end method

.method public setIndex(Lorg/h2/index/Index;)V
    .locals 1

    .line 904
    iput-object p1, p0, Lorg/h2/table/TableFilter;->index:Lorg/h2/index/Index;

    .line 905
    iget-object v0, p0, Lorg/h2/table/TableFilter;->cursor:Lorg/h2/index/IndexCursor;

    invoke-virtual {v0, p1}, Lorg/h2/index/IndexCursor;->setIndex(Lorg/h2/index/Index;)V

    return-void
.end method

.method protected setNullRow()V
    .locals 2

    const/4 v0, 0x3

    .line 553
    iput v0, p0, Lorg/h2/table/TableFilter;->state:I

    .line 554
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getNullRow()Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    .line 555
    iget-object v0, p0, Lorg/h2/table/TableFilter;->current:Lorg/h2/result/Row;

    iput-object v0, p0, Lorg/h2/table/TableFilter;->currentSearchRow:Lorg/h2/result/SearchRow;

    .line 556
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    new-instance v1, Lorg/h2/table/TableFilter$1;

    invoke-direct {v1, p0}, Lorg/h2/table/TableFilter$1;-><init>(Lorg/h2/table/TableFilter;)V

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    :cond_0
    return-void
.end method

.method public setPlanItem(Lorg/h2/table/PlanItem;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p1}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    .line 282
    invoke-virtual {p1}, Lorg/h2/table/PlanItem;->getMasks()[I

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableFilter;->masks:[I

    .line 283
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p1}, Lorg/h2/table/PlanItem;->getNestedJoinPlan()Lorg/h2/table/PlanItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {p1}, Lorg/h2/table/PlanItem;->getNestedJoinPlan()Lorg/h2/table/PlanItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->setPlanItem(Lorg/h2/table/PlanItem;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p1}, Lorg/h2/table/PlanItem;->getJoinPlan()Lorg/h2/table/PlanItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {p1}, Lorg/h2/table/PlanItem;->getJoinPlan()Lorg/h2/table/PlanItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/table/TableFilter;->setPlanItem(Lorg/h2/table/PlanItem;)V

    :cond_2
    return-void
.end method

.method setSession(Lorg/h2/engine/Session;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    return-void
.end method

.method public setUsed(Z)V
    .locals 0

    .line 909
    iput-boolean p1, p0, Lorg/h2/table/TableFilter;->used:Z

    return-void
.end method

.method public startQuery(Lorg/h2/engine/Session;)V
    .locals 1

    .line 340
    iput-object p1, p0, Lorg/h2/table/TableFilter;->session:Lorg/h2/engine/Session;

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lorg/h2/table/TableFilter;->scanCount:I

    .line 342
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1}, Lorg/h2/table/TableFilter;->startQuery(Lorg/h2/engine/Session;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1}, Lorg/h2/table/TableFilter;->startQuery(Lorg/h2/engine/Session;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1092
    iget-object v0, p0, Lorg/h2/table/TableFilter;->alias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/TableFilter;->alias:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableFilter;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V
    .locals 2

    move-object v0, p0

    .line 1175
    :cond_0
    invoke-interface {p1, v0}, Lorg/h2/table/TableFilter$TableFilterVisitor;->accept(Lorg/h2/table/TableFilter;)V

    .line 1176
    iget-object v1, v0, Lorg/h2/table/TableFilter;->nestedJoin:Lorg/h2/table/TableFilter;

    if-eqz v1, :cond_1

    .line 1178
    invoke-virtual {v1, p1}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    .line 1180
    :cond_1
    iget-object v0, v0, Lorg/h2/table/TableFilter;->join:Lorg/h2/table/TableFilter;

    if-nez v0, :cond_0

    return-void
.end method
