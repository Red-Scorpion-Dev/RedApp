.class Lorg/h2/command/dml/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field private static final MAX_BRUTE_FORCE:I = 0x7d0

.field private static final MAX_BRUTE_FORCE_FILTERS:I = 0x7

.field private static final MAX_GENETIC:I = 0x1f4


# instance fields
.field private bestPlan:Lorg/h2/table/Plan;

.field private final condition:Lorg/h2/expression/Expression;

.field private cost:D

.field private final filters:[Lorg/h2/table/TableFilter;

.field private random:Ljava/util/Random;

.field private final session:Lorg/h2/engine/Session;

.field private start:J

.field private switched:Lorg/h2/util/BitField;

.field private topFilter:Lorg/h2/table/TableFilter;


# direct methods
.method constructor <init>([Lorg/h2/table/TableFilter;Lorg/h2/expression/Expression;Lorg/h2/engine/Session;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    .line 52
    iput-object p2, p0, Lorg/h2/command/dml/Optimizer;->condition:Lorg/h2/expression/Expression;

    .line 53
    iput-object p3, p0, Lorg/h2/command/dml/Optimizer;->session:Lorg/h2/engine/Session;

    return-void
.end method

.method private calculateBestPlan()V
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 77
    iput-wide v0, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    .line 78
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->isForceJoinOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/command/dml/Optimizer;->start:J

    .line 82
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v0, v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 83
    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateBruteForceAll()V

    goto :goto_1

    .line 85
    :cond_1
    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateBruteForceSome()V

    .line 86
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/h2/command/dml/Optimizer;->random:Ljava/util/Random;

    .line 87
    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateGenetic()V

    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    invoke-direct {p0, v0}, Lorg/h2/command/dml/Optimizer;->testPlan([Lorg/h2/table/TableFilter;)Z

    :goto_1
    return-void
.end method

.method private calculateBruteForceAll()V
    .locals 4

    .line 109
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/table/TableFilter;

    .line 110
    iget-object v1, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    invoke-static {v1, v0}, Lorg/h2/util/Permutations;->create([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/h2/util/Permutations;

    move-result-object v1

    const/4 v2, 0x0

    .line 111
    :goto_0
    invoke-direct {p0, v2}, Lorg/h2/command/dml/Optimizer;->canStop(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/h2/util/Permutations;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-direct {p0, v0}, Lorg/h2/command/dml/Optimizer;->testPlan([Lorg/h2/table/TableFilter;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateBruteForceSome()V
    .locals 17

    move-object/from16 v0, p0

    .line 117
    iget-object v1, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v1, v1

    invoke-static {v1}, Lorg/h2/command/dml/Optimizer;->getMaxBruteForceFilters(I)I

    move-result v1

    .line 118
    iget-object v2, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v2, v2

    new-array v2, v2, [Lorg/h2/table/TableFilter;

    .line 119
    iget-object v3, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    invoke-static {v3, v2, v1}, Lorg/h2/util/Permutations;->create([Ljava/lang/Object;[Ljava/lang/Object;I)Lorg/h2/util/Permutations;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 120
    :goto_0
    invoke-direct {v0, v5}, Lorg/h2/command/dml/Optimizer;->canStop(I)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v3}, Lorg/h2/util/Permutations;->next()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 122
    iget-object v6, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 123
    invoke-virtual {v9, v4}, Lorg/h2/table/TableFilter;->setUsed(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    if-ge v6, v1, :cond_1

    .line 126
    aget-object v8, v2, v6

    invoke-virtual {v8, v7}, Lorg/h2/table/TableFilter;->setUsed(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v1

    .line 129
    :goto_3
    iget-object v8, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v8, v8

    if-ge v6, v8, :cond_6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const/4 v10, -0x1

    move-wide v11, v8

    const/4 v8, 0x0

    .line 132
    :goto_4
    iget-object v9, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 133
    iget-object v9, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/h2/table/TableFilter;->isUsed()Z

    move-result v9

    if-nez v9, :cond_4

    .line 134
    iget-object v9, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v9, v9

    sub-int/2addr v9, v7

    if-ne v6, v9, :cond_2

    goto :goto_5

    .line 138
    :cond_2
    iget-object v9, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    aget-object v9, v9, v8

    aput-object v9, v2, v6

    .line 139
    new-instance v9, Lorg/h2/table/Plan;

    add-int/lit8 v13, v6, 0x1

    iget-object v14, v0, Lorg/h2/command/dml/Optimizer;->condition:Lorg/h2/expression/Expression;

    invoke-direct {v9, v2, v13, v14}, Lorg/h2/table/Plan;-><init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V

    .line 140
    iget-object v13, v0, Lorg/h2/command/dml/Optimizer;->session:Lorg/h2/engine/Session;

    invoke-virtual {v9, v13}, Lorg/h2/table/Plan;->calculateCost(Lorg/h2/engine/Session;)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpg-double v9, v11, v15

    if-ltz v9, :cond_3

    cmpg-double v9, v13, v11

    if-gez v9, :cond_4

    :cond_3
    move v10, v8

    move-wide v11, v13

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move v8, v10

    .line 147
    :goto_5
    iget-object v9, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    aget-object v9, v9, v8

    invoke-virtual {v9, v7}, Lorg/h2/table/TableFilter;->setUsed(Z)V

    .line 148
    iget-object v9, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    aget-object v8, v9, v8

    aput-object v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 150
    :cond_6
    invoke-direct {v0, v2}, Lorg/h2/command/dml/Optimizer;->testPlan([Lorg/h2/table/TableFilter;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private calculateFakePlan()V
    .locals 4

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 93
    iput-wide v0, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    .line 94
    new-instance v0, Lorg/h2/table/Plan;

    iget-object v1, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    iget-object v2, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v2, v2

    iget-object v3, p0, Lorg/h2/command/dml/Optimizer;->condition:Lorg/h2/expression/Expression;

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/table/Plan;-><init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V

    iput-object v0, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    return-void
.end method

.method private calculateGenetic()V
    .locals 7

    .line 155
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/table/TableFilter;

    .line 156
    iget-object v1, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v1, v1

    new-array v1, v1, [Lorg/h2/table/TableFilter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_5

    .line 158
    invoke-direct {p0, v3}, Lorg/h2/command/dml/Optimizer;->canStop(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 v4, v3, 0x7f

    const/4 v5, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    .line 163
    iget-object v6, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v6, v6

    invoke-static {v0, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    invoke-direct {p0, v1}, Lorg/h2/command/dml/Optimizer;->shuffleTwo([Lorg/h2/table/TableFilter;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 169
    new-instance v4, Lorg/h2/util/BitField;

    invoke-direct {v4}, Lorg/h2/util/BitField;-><init>()V

    iput-object v4, p0, Lorg/h2/command/dml/Optimizer;->switched:Lorg/h2/util/BitField;

    .line 170
    iget-object v4, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    iget-object v5, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v5, v5

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    invoke-direct {p0, v0}, Lorg/h2/command/dml/Optimizer;->shuffleAll([Lorg/h2/table/TableFilter;)V

    .line 172
    iget-object v4, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v4, v4

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_3
    invoke-direct {p0, v1}, Lorg/h2/command/dml/Optimizer;->testPlan([Lorg/h2/table/TableFilter;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    new-instance v4, Lorg/h2/util/BitField;

    invoke-direct {v4}, Lorg/h2/util/BitField;-><init>()V

    iput-object v4, p0, Lorg/h2/command/dml/Optimizer;->switched:Lorg/h2/util/BitField;

    .line 176
    iget-object v4, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v4, v4

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private canStop(I)Z
    .locals 6

    and-int/lit8 p1, p1, 0x7f

    if-nez p1, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/command/dml/Optimizer;->start:J

    sub-long/2addr v0, v2

    .line 101
    iget-wide v2, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_0

    const-wide/16 v2, 0xa

    mul-long v0, v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static getMaxBruteForceFilters(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v0, p0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v2, p0, -0x1

    mul-int v2, v2, p0

    .line 68
    div-int/lit8 v2, v2, 0x2

    mul-int v2, v2, v0

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_0

    add-int/lit8 p0, p0, -0x1

    mul-int v0, v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private shuffleAll([Lorg/h2/table/TableFilter;)V
    .locals 4

    const/4 v0, 0x0

    .line 193
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 194
    iget-object v1, p0, Lorg/h2/command/dml/Optimizer;->random:Ljava/util/Random;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    if-eq v1, v0, :cond_0

    .line 196
    aget-object v2, p1, v0

    .line 197
    aget-object v3, p1, v1

    aput-object v3, p1, v0

    .line 198
    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private shuffleTwo([Lorg/h2/table/TableFilter;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x14

    if-ge v1, v4, :cond_3

    .line 206
    iget-object v2, p0, Lorg/h2/command/dml/Optimizer;->random:Ljava/util/Random;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 207
    iget-object v3, p0, Lorg/h2/command/dml/Optimizer;->random:Ljava/util/Random;

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    move v7, v3

    move v3, v2

    move v2, v7

    .line 216
    :cond_1
    array-length v5, p1

    mul-int v5, v5, v2

    add-int/2addr v5, v3

    .line 217
    iget-object v6, p0, Lorg/h2/command/dml/Optimizer;->switched:Lorg/h2/util/BitField;

    invoke-virtual {v6, v5}, Lorg/h2/util/BitField;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_2
    iget-object v6, p0, Lorg/h2/command/dml/Optimizer;->switched:Lorg/h2/util/BitField;

    invoke-virtual {v6, v5}, Lorg/h2/util/BitField;->set(I)V

    :cond_3
    if-ne v1, v4, :cond_4

    return v0

    .line 226
    :cond_4
    aget-object v0, p1, v2

    .line 227
    aget-object v1, p1, v3

    aput-object v1, p1, v2

    .line 228
    aput-object v0, p1, v3

    const/4 p1, 0x1

    return p1
.end method

.method private testPlan([Lorg/h2/table/TableFilter;)Z
    .locals 7

    .line 182
    new-instance v0, Lorg/h2/table/Plan;

    array-length v1, p1

    iget-object v2, p0, Lorg/h2/command/dml/Optimizer;->condition:Lorg/h2/expression/Expression;

    invoke-direct {v0, p1, v1, v2}, Lorg/h2/table/Plan;-><init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V

    .line 183
    iget-object p1, p0, Lorg/h2/command/dml/Optimizer;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1}, Lorg/h2/table/Plan;->calculateCost(Lorg/h2/engine/Session;)D

    move-result-wide v1

    .line 184
    iget-wide v3, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    const-wide/16 v5, 0x0

    cmpg-double p1, v3, v5

    if-ltz p1, :cond_1

    iget-wide v3, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    cmpg-double p1, v1, v3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 185
    :cond_1
    :goto_0
    iput-wide v1, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    .line 186
    iput-object v0, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method getCost()D
    .locals 2

    .line 264
    iget-wide v0, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    return-wide v0
.end method

.method public getTopFilter()Lorg/h2/table/TableFilter;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->topFilter:Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method optimize(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 240
    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateFakePlan()V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateBestPlan()V

    .line 243
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    invoke-virtual {v0}, Lorg/h2/table/Plan;->removeUnusableIndexConditions()V

    .line 245
    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    invoke-virtual {v0}, Lorg/h2/table/Plan;->getFilters()[Lorg/h2/table/TableFilter;

    move-result-object v0

    const/4 v1, 0x0

    .line 246
    aget-object v2, v0, v1

    iput-object v2, p0, Lorg/h2/command/dml/Optimizer;->topFilter:Lorg/h2/table/TableFilter;

    const/4 v2, 0x0

    .line 247
    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 248
    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v4, v0, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v1, v5}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    return-void

    .line 253
    :cond_2
    array-length p1, v0

    :goto_2
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    .line 254
    iget-object v3, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    invoke-virtual {v3, v2}, Lorg/h2/table/Plan;->getItem(Lorg/h2/table/TableFilter;)Lorg/h2/table/PlanItem;

    move-result-object v3

    .line 255
    invoke-virtual {v2, v3}, Lorg/h2/table/TableFilter;->setPlanItem(Lorg/h2/table/PlanItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
