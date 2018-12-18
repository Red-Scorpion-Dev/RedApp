.class public Lorg/h2/constraint/ConstraintCheck;
.super Lorg/h2/constraint/Constraint;
.source "ConstraintCheck.java"


# instance fields
.field private expr:Lorg/h2/expression/Expression;

.field private filter:Lorg/h2/table/TableFilter;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/constraint/Constraint;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    return-void
.end method

.method private getShortDescription()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintCheck;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkExistingData(Lorg/h2/engine/Session;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT 1 FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintCheck;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE NOT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    .line 151
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x5bd9

    .line 152
    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintCheck;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public checkRow(Lorg/h2/engine/Session;Lorg/h2/table/Table;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object p2, p0, Lorg/h2/constraint/ConstraintCheck;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {p2, p4}, Lorg/h2/table/TableFilter;->set(Lorg/h2/result/Row;)V

    .line 99
    :try_start_0
    iget-object p2, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x5bd9

    .line 106
    invoke-direct {p0}, Lorg/h2/constraint/ConstraintCheck;->getShortDescription()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    const/16 p2, 0x5bda

    const/4 p3, 0x1

    .line 101
    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    invoke-direct {p0}, Lorg/h2/constraint/ConstraintCheck;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    invoke-static {p2, p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getConstraintType()Ljava/lang/String;
    .locals 1

    const-string v0, "CHECK"

    return-object v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/h2/constraint/ConstraintCheck;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintCheck;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/constraint/ConstraintCheck;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD CONSTRAINT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p1, p0, Lorg/h2/constraint/ConstraintCheck;->comment:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, " COMMENT "

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/constraint/ConstraintCheck;->comment:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, " CHECK"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->enclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " NOCHECK"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLWithoutIndexes()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintCheck;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/h2/expression/Expression;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getReferencedColumns(Lorg/h2/table/Table;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/table/Table;",
            ")",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    invoke-static {v0}, Lorg/h2/expression/ExpressionVisitor;->getColumnsVisitor(Ljava/util/HashSet;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    .line 125
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Column;

    invoke-virtual {v2}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isBefore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    return p1
.end method

.method public rebuild()V
    .locals 0

    return-void
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/h2/constraint/ConstraintCheck;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeConstraint(Lorg/h2/constraint/Constraint;)V

    .line 84
    iget-object v0, p0, Lorg/h2/constraint/ConstraintCheck;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintCheck;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lorg/h2/constraint/ConstraintCheck;->filter:Lorg/h2/table/TableFilter;

    .line 86
    iput-object p1, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    .line 87
    iput-object p1, p0, Lorg/h2/constraint/ConstraintCheck;->table:Lorg/h2/table/Table;

    .line 88
    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintCheck;->invalidate()V

    return-void
.end method

.method public setExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/h2/constraint/ConstraintCheck;->expr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setIndexOwner(Lorg/h2/index/Index;)V
    .locals 0

    .line 118
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    return-void
.end method

.method public setTableFilter(Lorg/h2/table/TableFilter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/h2/constraint/ConstraintCheck;->filter:Lorg/h2/table/TableFilter;

    return-void
.end method

.method public usesIndex(Lorg/h2/index/Index;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
