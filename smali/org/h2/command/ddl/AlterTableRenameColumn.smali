.class public Lorg/h2/command/ddl/AlterTableRenameColumn;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "AlterTableRenameColumn.java"


# instance fields
.field private ifTableExists:Z

.field private newName:Ljava/lang/String;

.field private oldName:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public setIfTableExists(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->ifTableExists:Z

    return-void
.end method

.method public setNewColumnName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->newName:Ljava/lang/String;

    return-void
.end method

.method public setOldColumnName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->oldName:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->tableName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 6

    .line 53
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 54
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 57
    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->ifTableExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0xa476

    .line 60
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 62
    :cond_1
    iget-object v3, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v1, v5}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 64
    invoke-virtual {v1}, Lorg/h2/table/Table;->checkSupportAlter()V

    .line 67
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->session:Lorg/h2/engine/Session;

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->newName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/h2/table/Column;->getCheckConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v4

    .line 68
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->newName:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lorg/h2/table/Table;->renameColumn(Lorg/h2/table/Column;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3}, Lorg/h2/table/Column;->removeCheckConstraint()V

    .line 70
    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v5, v4}, Lorg/h2/table/Column;->addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    .line 71
    invoke-virtual {v1}, Lorg/h2/table/Table;->setModified()V

    .line 72
    iget-object v3, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 73
    invoke-virtual {v1}, Lorg/h2/table/Table;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/DbObject;

    .line 74
    invoke-interface {v3}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 75
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableRenameColumn;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4, v3}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_3
    return v2
.end method
