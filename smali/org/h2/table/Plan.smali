.class public Lorg/h2/table/Plan;
.super Ljava/lang/Object;
.source "Plan.java"


# instance fields
.field private final allConditions:[Lorg/h2/expression/Expression;

.field private final allFilters:[Lorg/h2/table/TableFilter;

.field private final filters:[Lorg/h2/table/TableFilter;

.field private final planItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/table/TableFilter;",
            "Lorg/h2/table/PlanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/Plan;->planItems:Ljava/util/HashMap;

    .line 38
    new-array v0, p2, [Lorg/h2/table/TableFilter;

    iput-object v0, p0, Lorg/h2/table/Plan;->filters:[Lorg/h2/table/TableFilter;

    .line 39
    iget-object v0, p0, Lorg/h2/table/Plan;->filters:[Lorg/h2/table/TableFilter;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_1

    .line 46
    aget-object p3, p1, v1

    .line 47
    new-instance v3, Lorg/h2/table/Plan$1;

    invoke-direct {v3, p0, v2, v0}, Lorg/h2/table/Plan$1;-><init>(Lorg/h2/table/Plan;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v3}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/expression/Expression;

    iput-object p1, p0, Lorg/h2/table/Plan;->allConditions:[Lorg/h2/expression/Expression;

    .line 58
    iget-object p1, p0, Lorg/h2/table/Plan;->allConditions:[Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/table/TableFilter;

    iput-object p1, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    .line 60
    iget-object p1, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 4

    .line 152
    invoke-virtual {p1, p1, p2}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 153
    iget-object v0, p0, Lorg/h2/table/Plan;->allConditions:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 154
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateCost(Lorg/h2/engine/Session;)D
    .locals 13

    .line 110
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Plan       : calculate cost for plan {0}"

    .line 112
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 116
    iget-object v1, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    invoke-static {v1}, Lorg/h2/expression/ExpressionVisitor;->allColumnsForTableFilters([Lorg/h2/table/TableFilter;)Ljava/util/HashSet;

    move-result-object v1

    move-wide v5, v4

    const/4 v4, 0x0

    .line 118
    :goto_0
    iget-object v7, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v7, v7

    if-ge v4, v7, :cond_4

    .line 119
    iget-object v7, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    aget-object v7, v7, v4

    .line 120
    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Plan       :   for table filter {0}"

    .line 121
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v2

    invoke-virtual {v0, v8, v9}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_1
    iget-object v8, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    invoke-virtual {v7, p1, v8, v4, v1}, Lorg/h2/table/TableFilter;->getBestPlanItem(Lorg/h2/engine/Session;[Lorg/h2/table/TableFilter;ILjava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v8

    .line 124
    iget-object v9, p0, Lorg/h2/table/Plan;->planItems:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "Plan       :   best plan item cost {0} index {1}"

    const/4 v10, 0x2

    .line 126
    new-array v10, v10, [Ljava/lang/Object;

    iget-wide v11, v8, Lorg/h2/table/PlanItem;->cost:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v8}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v11

    invoke-interface {v11}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v0, v9, v10}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_2
    iget-wide v8, v8, Lorg/h2/table/PlanItem;->cost:D

    mul-double v8, v8, v5

    add-double/2addr v5, v8

    .line 130
    invoke-direct {p0, v7, v3}, Lorg/h2/table/Plan;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 131
    invoke-virtual {v7}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 133
    sget-object v8, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v7, v8}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 142
    :cond_5
    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    const-string v0, "Plan       : plan cost {0}"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_6
    iget-object p1, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    aget-object v3, p1, v1

    .line 146
    invoke-direct {p0, v3, v2}, Lorg/h2/table/Plan;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-wide v5
.end method

.method public getFilters()[Lorg/h2/table/TableFilter;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/h2/table/Plan;->filters:[Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method public getItem(Lorg/h2/table/TableFilter;)Lorg/h2/table/PlanItem;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/h2/table/Plan;->planItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/PlanItem;

    return-object p1
.end method

.method public removeUnusableIndexConditions()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 87
    iget-object v2, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    .line 88
    invoke-direct {p0, v2, v3}, Lorg/h2/table/Plan;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 89
    iget-object v4, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v4, v4

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_0

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v3

    iget-boolean v3, v3, Lorg/h2/engine/DbSettings;->earlyFilter:Z

    if-eqz v3, :cond_1

    .line 94
    :cond_0
    invoke-virtual {v2, v0}, Lorg/h2/table/TableFilter;->optimizeFullCondition(Z)V

    .line 96
    :cond_1
    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->removeUnusableIndexConditions()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lorg/h2/table/Plan;->allFilters:[Lorg/h2/table/TableFilter;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 99
    invoke-direct {p0, v4, v0}, Lorg/h2/table/Plan;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
