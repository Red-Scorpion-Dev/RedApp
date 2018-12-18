.class public Lorg/h2/expression/ExpressionVisitor;
.super Ljava/lang/Object;
.source "ExpressionVisitor.java"


# static fields
.field public static final DETERMINISTIC:I = 0x2

.field public static final DETERMINISTIC_VISITOR:Lorg/h2/expression/ExpressionVisitor;

.field public static final EVALUATABLE:I = 0x3

.field public static final EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

.field public static final GET_COLUMNS:I = 0x9

.field public static final GET_DEPENDENCIES:I = 0x7

.field public static final INDEPENDENT:I = 0x0

.field public static final INDEPENDENT_VISITOR:Lorg/h2/expression/ExpressionVisitor;

.field public static final NOT_FROM_RESOLVER:I = 0x6

.field public static final OPTIMIZABLE_MIN_MAX_COUNT_ALL:I = 0x1

.field public static final QUERY_COMPARABLE:I = 0x8

.field public static final QUERY_COMPARABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

.field public static final READONLY:I = 0x5

.field public static final READONLY_VISITOR:Lorg/h2/expression/ExpressionVisitor;

.field public static final SET_MAX_DATA_MODIFICATION_ID:I = 0x4


# instance fields
.field private final columns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field private final dependencies:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation
.end field

.field private final maxDataModificationId:[J

.field private final queryLevel:I

.field private final resolver:Lorg/h2/table/ColumnResolver;

.field private final table:Lorg/h2/table/Table;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lorg/h2/expression/ExpressionVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/h2/expression/ExpressionVisitor;-><init>(I)V

    sput-object v0, Lorg/h2/expression/ExpressionVisitor;->INDEPENDENT_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    .line 49
    new-instance v0, Lorg/h2/expression/ExpressionVisitor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/h2/expression/ExpressionVisitor;-><init>(I)V

    sput-object v0, Lorg/h2/expression/ExpressionVisitor;->DETERMINISTIC_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    .line 61
    new-instance v0, Lorg/h2/expression/ExpressionVisitor;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/h2/expression/ExpressionVisitor;-><init>(I)V

    sput-object v0, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    .line 77
    new-instance v0, Lorg/h2/expression/ExpressionVisitor;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/h2/expression/ExpressionVisitor;-><init>(I)V

    sput-object v0, Lorg/h2/expression/ExpressionVisitor;->READONLY_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    .line 107
    new-instance v0, Lorg/h2/expression/ExpressionVisitor;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/h2/expression/ExpressionVisitor;-><init>(I)V

    sput-object v0, Lorg/h2/expression/ExpressionVisitor;->QUERY_COMPARABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lorg/h2/expression/ExpressionVisitor;->type:I

    const/4 p1, 0x0

    .line 135
    iput p1, p0, Lorg/h2/expression/ExpressionVisitor;->queryLevel:I

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lorg/h2/expression/ExpressionVisitor;->dependencies:Ljava/util/HashSet;

    .line 137
    iput-object p1, p0, Lorg/h2/expression/ExpressionVisitor;->columns:Ljava/util/HashSet;

    .line 138
    iput-object p1, p0, Lorg/h2/expression/ExpressionVisitor;->table:Lorg/h2/table/Table;

    .line 139
    iput-object p1, p0, Lorg/h2/expression/ExpressionVisitor;->resolver:Lorg/h2/table/ColumnResolver;

    .line 140
    iput-object p1, p0, Lorg/h2/expression/ExpressionVisitor;->maxDataModificationId:[J

    return-void
.end method

.method private constructor <init>(IILjava/util/HashSet;Ljava/util/HashSet;Lorg/h2/table/Table;Lorg/h2/table/ColumnResolver;[J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/DbObject;",
            ">;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;",
            "Lorg/h2/table/Table;",
            "Lorg/h2/table/ColumnResolver;",
            "[J)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lorg/h2/expression/ExpressionVisitor;->type:I

    .line 125
    iput p2, p0, Lorg/h2/expression/ExpressionVisitor;->queryLevel:I

    .line 126
    iput-object p3, p0, Lorg/h2/expression/ExpressionVisitor;->dependencies:Ljava/util/HashSet;

    .line 127
    iput-object p4, p0, Lorg/h2/expression/ExpressionVisitor;->columns:Ljava/util/HashSet;

    .line 128
    iput-object p5, p0, Lorg/h2/expression/ExpressionVisitor;->table:Lorg/h2/table/Table;

    .line 129
    iput-object p6, p0, Lorg/h2/expression/ExpressionVisitor;->resolver:Lorg/h2/table/ColumnResolver;

    .line 130
    iput-object p7, p0, Lorg/h2/expression/ExpressionVisitor;->maxDataModificationId:[J

    return-void
.end method

.method public static allColumnsForTableFilters([Lorg/h2/table/TableFilter;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/h2/table/TableFilter;",
            ")",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation

    .line 298
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 299
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 300
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getSelect()Lorg/h2/command/dml/Select;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 301
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getSelect()Lorg/h2/command/dml/Select;

    move-result-object v2

    invoke-static {v0}, Lorg/h2/expression/ExpressionVisitor;->getColumnsVisitor(Ljava/util/HashSet;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/command/dml/Select;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getColumnsVisitor(Ljava/util/HashSet;)Lorg/h2/expression/ExpressionVisitor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/expression/ExpressionVisitor;"
        }
    .end annotation

    .line 185
    new-instance v8, Lorg/h2/expression/ExpressionVisitor;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lorg/h2/expression/ExpressionVisitor;-><init>(IILjava/util/HashSet;Ljava/util/HashSet;Lorg/h2/table/Table;Lorg/h2/table/ColumnResolver;[J)V

    return-object v8
.end method

.method public static getDependenciesVisitor(Ljava/util/HashSet;)Lorg/h2/expression/ExpressionVisitor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/DbObject;",
            ">;)",
            "Lorg/h2/expression/ExpressionVisitor;"
        }
    .end annotation

    .line 151
    new-instance v8, Lorg/h2/expression/ExpressionVisitor;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lorg/h2/expression/ExpressionVisitor;-><init>(IILjava/util/HashSet;Ljava/util/HashSet;Lorg/h2/table/Table;Lorg/h2/table/ColumnResolver;[J)V

    return-object v8
.end method

.method public static getMaxModificationIdVisitor()Lorg/h2/expression/ExpressionVisitor;
    .locals 9

    .line 189
    new-instance v8, Lorg/h2/expression/ExpressionVisitor;

    const/4 v0, 0x1

    new-array v7, v0, [J

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/h2/expression/ExpressionVisitor;-><init>(IILjava/util/HashSet;Ljava/util/HashSet;Lorg/h2/table/Table;Lorg/h2/table/ColumnResolver;[J)V

    return-object v8
.end method

.method static getNotFromResolverVisitor(Lorg/h2/table/ColumnResolver;)Lorg/h2/expression/ExpressionVisitor;
    .locals 9

    .line 174
    new-instance v8, Lorg/h2/expression/ExpressionVisitor;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lorg/h2/expression/ExpressionVisitor;-><init>(IILjava/util/HashSet;Ljava/util/HashSet;Lorg/h2/table/Table;Lorg/h2/table/ColumnResolver;[J)V

    return-object v8
.end method

.method public static getOptimizableVisitor(Lorg/h2/table/Table;)Lorg/h2/expression/ExpressionVisitor;
    .locals 9

    .line 162
    new-instance v8, Lorg/h2/expression/ExpressionVisitor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lorg/h2/expression/ExpressionVisitor;-><init>(IILjava/util/HashSet;Ljava/util/HashSet;Lorg/h2/table/Table;Lorg/h2/table/ColumnResolver;[J)V

    return-object v8
.end method


# virtual methods
.method addColumn(Lorg/h2/table/Column;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/h2/expression/ExpressionVisitor;->columns:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDataModificationId(J)V
    .locals 4

    .line 252
    iget-object v0, p0, Lorg/h2/expression/ExpressionVisitor;->maxDataModificationId:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/h2/expression/ExpressionVisitor;->maxDataModificationId:[J

    aput-wide p1, v0, v1

    :cond_0
    return-void
.end method

.method public addDependency(Lorg/h2/engine/DbObject;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/h2/expression/ExpressionVisitor;->dependencies:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDependencies()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/h2/expression/ExpressionVisitor;->dependencies:Ljava/util/HashSet;

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 3

    .line 265
    iget-object v0, p0, Lorg/h2/expression/ExpressionVisitor;->maxDataModificationId:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getQueryLevel()I
    .locals 1

    .line 269
    iget v0, p0, Lorg/h2/expression/ExpressionVisitor;->queryLevel:I

    return v0
.end method

.method public getResolver()Lorg/h2/table/ColumnResolver;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/h2/expression/ExpressionVisitor;->resolver:Lorg/h2/table/ColumnResolver;

    return-object v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/h2/expression/ExpressionVisitor;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 288
    iget v0, p0, Lorg/h2/expression/ExpressionVisitor;->type:I

    return v0
.end method

.method public incrementQueryLevel(I)Lorg/h2/expression/ExpressionVisitor;
    .locals 9

    .line 230
    new-instance v8, Lorg/h2/expression/ExpressionVisitor;

    iget v1, p0, Lorg/h2/expression/ExpressionVisitor;->type:I

    iget v0, p0, Lorg/h2/expression/ExpressionVisitor;->queryLevel:I

    add-int v2, v0, p1

    iget-object v3, p0, Lorg/h2/expression/ExpressionVisitor;->dependencies:Ljava/util/HashSet;

    iget-object v4, p0, Lorg/h2/expression/ExpressionVisitor;->columns:Ljava/util/HashSet;

    iget-object v5, p0, Lorg/h2/expression/ExpressionVisitor;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/expression/ExpressionVisitor;->resolver:Lorg/h2/table/ColumnResolver;

    iget-object v7, p0, Lorg/h2/expression/ExpressionVisitor;->maxDataModificationId:[J

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/h2/expression/ExpressionVisitor;-><init>(IILjava/util/HashSet;Ljava/util/HashSet;Lorg/h2/table/Table;Lorg/h2/table/ColumnResolver;[J)V

    return-object v8
.end method
