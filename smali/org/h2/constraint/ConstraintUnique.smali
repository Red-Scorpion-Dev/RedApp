.class public Lorg/h2/constraint/ConstraintUnique;
.super Lorg/h2/constraint/Constraint;
.source "ConstraintUnique.java"


# instance fields
.field private columns:[Lorg/h2/table/IndexColumn;

.field private index:Lorg/h2/index/Index;

.field private indexOwner:Z

.field private final primaryKey:Z


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/constraint/Constraint;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    .line 34
    iput-boolean p5, p0, Lorg/h2/constraint/ConstraintUnique;->primaryKey:Z

    return-void
.end method

.method private getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 49
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "ALTER TABLE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " ADD CONSTRAINT "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 51
    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IF NOT EXISTS "

    .line 52
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 54
    :cond_0
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 55
    iget-object p2, p0, Lorg/h2/constraint/ConstraintUnique;->comment:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, " COMMENT "

    .line 56
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p2

    iget-object v1, p0, Lorg/h2/constraint/ConstraintUnique;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    const/16 p2, 0x20

    .line 58
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object p2

    invoke-direct {p0}, Lorg/h2/constraint/ConstraintUnique;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p2

    const/16 v1, 0x28

    invoke-virtual {p2, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 59
    iget-object p2, p0, Lorg/h2/constraint/ConstraintUnique;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    const-string v4, ", "

    .line 60
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 61
    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x29

    .line 63
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    if-eqz p3, :cond_3

    .line 64
    iget-boolean p2, p0, Lorg/h2/constraint/ConstraintUnique;->indexOwner:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/h2/constraint/ConstraintUnique;->table:Lorg/h2/table/Table;

    if-ne p1, p2, :cond_3

    const-string p1, " INDEX "

    .line 65
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/constraint/ConstraintUnique;->index:Lorg/h2/index/Index;

    invoke-interface {p2}, Lorg/h2/index/Index;->getSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 67
    :cond_3
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintUnique;->primaryKey:Z

    if-eqz v0, :cond_0

    const-string v0, "PRIMARY KEY"

    return-object v0

    :cond_0
    const-string v0, "UNIQUE"

    return-object v0
.end method


# virtual methods
.method public checkExistingData(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public checkRow(Lorg/h2/engine/Session;Lorg/h2/table/Table;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 0

    return-void
.end method

.method public getColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->columns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getConstraintType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintUnique;->primaryKey:Z

    if-eqz v0, :cond_0

    const-string v0, "PRIMARY KEY"

    goto :goto_0

    :cond_0
    const-string v0, "UNIQUE"

    :goto_0
    return-object v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintUnique;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/constraint/ConstraintUnique;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lorg/h2/constraint/ConstraintUnique;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLWithoutIndexes()Ljava/lang/String;
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintUnique;->getSQL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/h2/constraint/ConstraintUnique;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferencedColumns(Lorg/h2/table/Table;)Ljava/util/HashSet;
    .locals 4
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

    .line 137
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 139
    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->index:Lorg/h2/index/Index;

    return-object v0
.end method

.method public isBefore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public rebuild()V
    .locals 0

    return-void
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeConstraint(Lorg/h2/constraint/Constraint;)V

    .line 110
    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintUnique;->indexOwner:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintUnique;->index:Lorg/h2/index/Index;

    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->removeIndexOrTransferOwnership(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintUnique;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lorg/h2/constraint/ConstraintUnique;->index:Lorg/h2/index/Index;

    .line 115
    iput-object p1, p0, Lorg/h2/constraint/ConstraintUnique;->columns:[Lorg/h2/table/IndexColumn;

    .line 116
    iput-object p1, p0, Lorg/h2/constraint/ConstraintUnique;->table:Lorg/h2/table/Table;

    .line 117
    invoke-virtual {p0}, Lorg/h2/constraint/ConstraintUnique;->invalidate()V

    return-void
.end method

.method public setColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/h2/constraint/ConstraintUnique;->columns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setIndex(Lorg/h2/index/Index;Z)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/h2/constraint/ConstraintUnique;->index:Lorg/h2/index/Index;

    .line 104
    iput-boolean p2, p0, Lorg/h2/constraint/ConstraintUnique;->indexOwner:Z

    return-void
.end method

.method public setIndexOwner(Lorg/h2/index/Index;)V
    .locals 0

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lorg/h2/constraint/ConstraintUnique;->indexOwner:Z

    return-void
.end method

.method public usesIndex(Lorg/h2/index/Index;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/h2/constraint/ConstraintUnique;->index:Lorg/h2/index/Index;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
