.class public Lorg/h2/result/SortOrder;
.super Ljava/lang/Object;
.source "SortOrder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[",
        "Lorg/h2/value/Value;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASCENDING:I = 0x0

.field private static final DEFAULT_NULL_SORT:I

.field public static final DESCENDING:I = 0x1

.field public static final NULLS_FIRST:I = 0x2

.field public static final NULLS_LAST:I = 0x4


# instance fields
.field private final database:Lorg/h2/engine/Database;

.field private final orderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private final queryColumnIndexes:[I

.field private final sortTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_NULLS_HIGH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lorg/h2/result/SortOrder;->DEFAULT_NULL_SORT:I

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;[I[ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Database;",
            "[I[I",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/h2/result/SortOrder;->database:Lorg/h2/engine/Database;

    .line 86
    iput-object p2, p0, Lorg/h2/result/SortOrder;->queryColumnIndexes:[I

    .line 87
    iput-object p3, p0, Lorg/h2/result/SortOrder;->sortTypes:[I

    .line 88
    iput-object p4, p0, Lorg/h2/result/SortOrder;->orderList:Ljava/util/ArrayList;

    return-void
.end method

.method public static compareNull(ZI)I
    .locals 3

    and-int/lit8 v0, p1, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    if-eqz p0, :cond_4

    .line 137
    sget p0, Lorg/h2/result/SortOrder;->DEFAULT_NULL_SORT:I

    goto :goto_1

    :cond_4
    sget p0, Lorg/h2/result/SortOrder;->DEFAULT_NULL_SORT:I

    neg-int p0, p0

    :goto_1
    and-int/2addr p1, v2

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    neg-int p0, p0

    :goto_2
    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, [Lorg/h2/value/Value;

    check-cast p2, [Lorg/h2/value/Value;

    invoke-virtual {p0, p1, p2}, Lorg/h2/result/SortOrder;->compare([Lorg/h2/value/Value;[Lorg/h2/value/Value;)I

    move-result p1

    return p1
.end method

.method public compare([Lorg/h2/value/Value;[Lorg/h2/value/Value;)I
    .locals 9

    .line 151
    iget-object v0, p0, Lorg/h2/result/SortOrder;->queryColumnIndexes:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    .line 152
    iget-object v3, p0, Lorg/h2/result/SortOrder;->queryColumnIndexes:[I

    aget v3, v3, v2

    .line 153
    iget-object v4, p0, Lorg/h2/result/SortOrder;->sortTypes:[I

    aget v4, v4, v2

    .line 154
    aget-object v5, p1, v3

    .line 155
    aget-object v3, p2, v3

    .line 156
    sget-object v6, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    sget-object v8, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v3, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-nez v6, :cond_4

    if-eqz v8, :cond_2

    goto :goto_4

    .line 163
    :cond_2
    iget-object v6, p0, Lorg/h2/result/SortOrder;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6, v5, v3}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result v3

    if-eqz v3, :cond_5

    and-int/lit8 p1, v4, 0x1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    neg-int v3, v3

    :goto_3
    return v3

    :cond_4
    :goto_4
    if-ne v6, v8, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_6
    invoke-static {v6, v4}, Lorg/h2/result/SortOrder;->compareNull(ZI)I

    move-result p1

    return p1

    :cond_7
    return v1
.end method

.method public getColumn(ILorg/h2/table/TableFilter;)Lorg/h2/table/Column;
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/h2/result/SortOrder;->orderList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/h2/result/SortOrder;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/command/dml/SelectOrderBy;

    .line 237
    iget-object p1, p1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    if-nez p1, :cond_1

    return-object v1

    .line 241
    :cond_1
    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 245
    :cond_2
    instance-of v0, p1, Lorg/h2/expression/ExpressionColumn;

    if-nez v0, :cond_3

    return-object v1

    .line 248
    :cond_3
    check-cast p1, Lorg/h2/expression/ExpressionColumn;

    .line 249
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-eq v0, p2, :cond_4

    return-object v1

    .line 252
    :cond_4
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object p1

    return-object p1
.end method

.method public getQueryColumnIndexes()[I
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/h2/result/SortOrder;->queryColumnIndexes:[I

    return-object v0
.end method

.method public getSQL([Lorg/h2/expression/Expression;I)Ljava/lang/String;
    .locals 7

    .line 100
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 102
    iget-object v1, p0, Lorg/h2/result/SortOrder;->queryColumnIndexes:[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v5, v1, v3

    const-string v6, ", "

    .line 103
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-ge v5, p2, :cond_0

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    .line 105
    invoke-virtual {v0, v5, v6}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const/16 v6, 0x3d

    .line 107
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 109
    :goto_1
    iget-object v5, p0, Lorg/h2/result/SortOrder;->sortTypes:[I

    add-int/lit8 v6, v4, 0x1

    aget v4, v5, v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1

    const-string v5, " DESC"

    .line 111
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_2

    const-string v4, " NULLS FIRST"

    .line 114
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_2

    :cond_2
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    const-string v4, " NULLS LAST"

    .line 116
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSortTypes()[I
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/h2/result/SortOrder;->sortTypes:[I

    return-object v0
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public sort(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;II)V"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-ge p2, v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    add-int v2, p2, p3

    if-le v2, v0, :cond_2

    sub-int p3, v0, p2

    :cond_2
    const/4 v2, 0x1

    if-ne p3, v2, :cond_3

    if-nez p2, :cond_3

    .line 199
    invoke-static {p1, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 202
    :cond_3
    new-array v2, v0, [[Lorg/h2/value/Value;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/h2/value/Value;

    .line 203
    invoke-static {v2, p2, p3, p0}, Lorg/h2/util/Utils;->sortTopN([Ljava/lang/Object;IILjava/util/Comparator;)V

    add-int/2addr p2, p3

    .line 204
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_4

    .line 205
    aget-object p3, v2, v1

    invoke-virtual {p1, v1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method
