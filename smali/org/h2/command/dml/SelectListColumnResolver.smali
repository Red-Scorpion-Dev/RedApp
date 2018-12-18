.class public Lorg/h2/command/dml/SelectListColumnResolver;
.super Ljava/lang/Object;
.source "SelectListColumnResolver.java"

# interfaces
.implements Lorg/h2/table/ColumnResolver;


# instance fields
.field private final columns:[Lorg/h2/table/Column;

.field private final expressions:[Lorg/h2/expression/Expression;

.field private final select:Lorg/h2/command/dml/Select;


# direct methods
.method constructor <init>(Lorg/h2/command/dml/Select;)V
    .locals 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/h2/command/dml/SelectListColumnResolver;->select:Lorg/h2/command/dml/Select;

    .line 34
    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->getColumnCount()I

    move-result v0

    .line 35
    new-array v1, v0, [Lorg/h2/table/Column;

    iput-object v1, p0, Lorg/h2/command/dml/SelectListColumnResolver;->columns:[Lorg/h2/table/Column;

    .line 36
    new-array v1, v0, [Lorg/h2/expression/Expression;

    iput-object v1, p0, Lorg/h2/command/dml/SelectListColumnResolver;->expressions:[Lorg/h2/expression/Expression;

    .line 37
    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->getExpressions()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 39
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    .line 40
    new-instance v4, Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x0

    .line 41
    invoke-virtual {v4, v5, v2}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 42
    iget-object v5, p0, Lorg/h2/command/dml/SelectListColumnResolver;->columns:[Lorg/h2/table/Column;

    aput-object v4, v5, v2

    .line 43
    iget-object v4, p0, Lorg/h2/command/dml/SelectListColumnResolver;->expressions:[Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getColumns()[Lorg/h2/table/Column;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/h2/command/dml/SelectListColumnResolver;->columns:[Lorg/h2/table/Column;

    return-object v0
.end method

.method public getRowIdColumn()Lorg/h2/table/Column;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelect()Lorg/h2/command/dml/Select;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/h2/command/dml/SelectListColumnResolver;->select:Lorg/h2/command/dml/Select;

    return-object v0
.end method

.method public getSystemColumns()[Lorg/h2/table/Column;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableAlias()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableFilter()Lorg/h2/table/TableFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public optimize(Lorg/h2/expression/ExpressionColumn;Lorg/h2/table/Column;)Lorg/h2/expression/Expression;
    .locals 0

    .line 89
    iget-object p1, p0, Lorg/h2/command/dml/SelectListColumnResolver;->expressions:[Lorg/h2/expression/Expression;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getColumnId()I

    move-result p2

    aget-object p1, p1, p2

    return-object p1
.end method
