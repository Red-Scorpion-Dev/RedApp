.class public Lorg/h2/command/ddl/DropTable;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "DropTable.java"


# instance fields
.field private dropAction:I

.field private ifExists:Z

.field private next:Lorg/h2/command/ddl/DropTable;

.field private table:Lorg/h2/table/Table;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 36
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->dropRestrict:Z

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/command/ddl/DropTable;->dropAction:I

    return-void
.end method

.method private executeDrop()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lorg/h2/command/ddl/DropTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    .line 99
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->setModified()V

    .line 101
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 103
    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    invoke-direct {v0}, Lorg/h2/command/ddl/DropTable;->executeDrop()V

    :cond_1
    return-void
.end method

.method private prepareDrop()V
    .locals 6

    .line 66
    invoke-virtual {p0}, Lorg/h2/command/ddl/DropTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    .line 67
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    if-nez v0, :cond_1

    .line 68
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropTable;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0xa476

    .line 69
    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 72
    :cond_1
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 73
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->canDrop()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    iget v0, p0, Lorg/h2/command/ddl/DropTable;->dropAction:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 77
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 79
    new-instance v2, Lorg/h2/util/StatementBuilder;

    invoke-direct {v2}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableView;

    const-string v4, ", "

    .line 81
    invoke-virtual {v2, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Lorg/h2/table/TableView;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_2
    const v0, 0x15ffb

    const/4 v3, 0x2

    .line 84
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 87
    :cond_3
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/ddl/DropTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 89
    :goto_1
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    invoke-direct {v0}, Lorg/h2/command/ddl/DropTable;->prepareDrop()V

    :cond_4
    return-void

    :cond_5
    const v0, 0x16006

    .line 74
    iget-object v1, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public addNextDropTable(Lorg/h2/command/ddl/DropTable;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/DropTable;->addNextDropTable(Lorg/h2/command/ddl/DropTable;)V

    :goto_0
    return-void
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public setDropAction(I)V
    .locals 1

    .line 119
    iput p1, p0, Lorg/h2/command/ddl/DropTable;->dropAction:I

    .line 120
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/DropTable;->setDropAction(I)V

    :cond_0
    return-void
.end method

.method public setIfExists(Z)V
    .locals 1

    .line 55
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropTable;->ifExists:Z

    .line 56
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->next:Lorg/h2/command/ddl/DropTable;

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/DropTable;->setIfExists(Z)V

    :cond_0
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/h2/command/ddl/DropTable;->tableName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/h2/command/ddl/DropTable;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 113
    invoke-direct {p0}, Lorg/h2/command/ddl/DropTable;->prepareDrop()V

    .line 114
    invoke-direct {p0}, Lorg/h2/command/ddl/DropTable;->executeDrop()V

    const/4 v0, 0x0

    return v0
.end method
