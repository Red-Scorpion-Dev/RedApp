.class public abstract Lorg/h2/table/TableBase;
.super Lorg/h2/table/Table;
.source "TableBase.java"


# instance fields
.field private final globalTemporary:Z

.field private final tableEngine:Ljava/lang/String;

.field private tableEngineParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/command/ddl/CreateTableData;)V
    .locals 6

    .line 35
    iget-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->schema:Lorg/h2/schema/Schema;

    iget v2, p1, Lorg/h2/command/ddl/CreateTableData;->id:I

    iget-object v3, p1, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    iget-boolean v4, p1, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    iget-boolean v5, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/h2/table/TableBase;->tableEngineParams:Ljava/util/List;

    .line 37
    iget-object v0, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/TableBase;->tableEngine:Ljava/lang/String;

    .line 38
    iget-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->globalTemporary:Z

    iput-boolean v0, p0, Lorg/h2/table/TableBase;->globalTemporary:Z

    .line 39
    iget-object v0, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngineParams:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngineParams:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/h2/table/TableBase;->tableEngineParams:Ljava/util/List;

    .line 42
    :cond_0
    iget-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    invoke-virtual {p0, v0}, Lorg/h2/table/TableBase;->setTemporary(Z)V

    .line 43
    iget-object v0, p1, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/table/Column;

    .line 44
    iget-object p1, p1, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, v0}, Lorg/h2/table/TableBase;->setColumns([Lorg/h2/table/Column;)V

    return-void
.end method


# virtual methods
.method public getCreateSQL()Ljava/lang/String;
    .locals 7

    .line 55
    invoke-virtual {p0}, Lorg/h2/table/TableBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    new-instance v1, Lorg/h2/util/StatementBuilder;

    const-string v2, "CREATE "

    invoke-direct {v1, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lorg/h2/table/TableBase;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {p0}, Lorg/h2/table/TableBase;->isGlobalTemporary()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "GLOBAL "

    .line 63
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "LOCAL "

    .line 65
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_0
    const-string v2, "TEMPORARY "

    .line 67
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0}, Lorg/h2/table/TableBase;->isPersistIndexes()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CACHED "

    .line 69
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "MEMORY "

    .line 71
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_1
    const-string v2, "TABLE "

    .line 73
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 74
    iget-boolean v2, p0, Lorg/h2/table/TableBase;->isHidden:Z

    if-eqz v2, :cond_4

    const-string v2, "IF NOT EXISTS "

    .line 75
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 77
    :cond_4
    invoke-virtual {p0}, Lorg/h2/table/TableBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 78
    iget-object v2, p0, Lorg/h2/table/TableBase;->comment:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, " COMMENT "

    .line 79
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/table/TableBase;->comment:Ljava/lang/String;

    invoke-static {v3}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_5
    const-string v2, "(\n    "

    .line 81
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 82
    iget-object v2, p0, Lorg/h2/table/TableBase;->columns:[Lorg/h2/table/Column;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    const-string v6, ",\n    "

    .line 83
    invoke-virtual {v1, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const-string v2, "\n)"

    .line 86
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 87
    iget-object v2, p0, Lorg/h2/table/TableBase;->tableEngine:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 88
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    .line 89
    iget-object v2, v0, Lorg/h2/engine/DbSettings;->defaultTableEngine:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 90
    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v0, :cond_7

    .line 91
    const-class v0, Lorg/h2/mvstore/db/MVTableEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    .line 93
    iget-object v0, p0, Lorg/h2/table/TableBase;->tableEngine:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, "\nENGINE "

    .line 94
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 95
    iget-object v0, p0, Lorg/h2/table/TableBase;->tableEngine:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 98
    :cond_9
    iget-object v0, p0, Lorg/h2/table/TableBase;->tableEngineParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "\nWITH "

    .line 99
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 100
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 101
    iget-object v0, p0, Lorg/h2/table/TableBase;->tableEngineParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ", "

    .line 102
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 103
    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    .line 106
    :cond_a
    invoke-virtual {p0}, Lorg/h2/table/TableBase;->isPersistIndexes()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/h2/table/TableBase;->isPersistData()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\nNOT PERSISTENT"

    .line 107
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 109
    :cond_b
    iget-boolean v0, p0, Lorg/h2/table/TableBase;->isHidden:Z

    if-eqz v0, :cond_c

    const-string v0, "\nHIDDEN"

    .line 110
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 112
    :cond_c
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/table/TableBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CASCADE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGlobalTemporary()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/h2/table/TableBase;->globalTemporary:Z

    return v0
.end method
