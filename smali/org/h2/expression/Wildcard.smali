.class public Lorg/h2/expression/Wildcard;
.super Lorg/h2/expression/Expression;
.source "Wildcard.java"


# instance fields
.field private final schema:Ljava/lang/String;

.field private final table:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/h2/expression/Wildcard;->schema:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lorg/h2/expression/Wildcard;->table:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 1

    .line 108
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 72
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getPrecision()J
    .locals 1

    .line 67
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/h2/expression/Wildcard;->table:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "*"

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/Wildcard;->table:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 62
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/h2/expression/Wildcard;->schema:Ljava/lang/String;

    return-object v0
.end method

.method public getTableAlias()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/h2/expression/Wildcard;->table:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 42
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 0

    .line 37
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 100
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 103
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isWildcard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 0

    .line 47
    iget-object p1, p0, Lorg/h2/expression/Wildcard;->table:Ljava/lang/String;

    const p2, 0xa410

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 1

    .line 52
    iget-object p1, p0, Lorg/h2/expression/Wildcard;->table:Ljava/lang/String;

    const v0, 0xa410

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 0

    .line 57
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 0

    .line 95
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    return-void
.end method
