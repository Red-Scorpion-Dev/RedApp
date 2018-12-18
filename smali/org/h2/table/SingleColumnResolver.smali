.class public Lorg/h2/table/SingleColumnResolver;
.super Ljava/lang/Object;
.source "SingleColumnResolver.java"

# interfaces
.implements Lorg/h2/table/ColumnResolver;


# instance fields
.field private final column:Lorg/h2/table/Column;

.field private value:Lorg/h2/value/Value;


# direct methods
.method constructor <init>(Lorg/h2/table/Column;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/h2/table/SingleColumnResolver;->column:Lorg/h2/table/Column;

    return-void
.end method


# virtual methods
.method public getColumns()[Lorg/h2/table/Column;
    .locals 3

    const/4 v0, 0x1

    .line 42
    new-array v0, v0, [Lorg/h2/table/Column;

    iget-object v1, p0, Lorg/h2/table/SingleColumnResolver;->column:Lorg/h2/table/Column;

    const/4 v2, 0x0

    aput-object v1, v0, v2

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

    const/4 v0, 0x0

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

    .line 37
    iget-object p1, p0, Lorg/h2/table/SingleColumnResolver;->value:Lorg/h2/value/Value;

    return-object p1
.end method

.method public optimize(Lorg/h2/expression/ExpressionColumn;Lorg/h2/table/Column;)Lorg/h2/expression/Expression;
    .locals 0

    return-object p1
.end method

.method setValue(Lorg/h2/value/Value;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/h2/table/SingleColumnResolver;->value:Lorg/h2/value/Value;

    return-void
.end method
