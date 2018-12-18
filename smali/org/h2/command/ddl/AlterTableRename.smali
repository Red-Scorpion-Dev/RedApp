.class public Lorg/h2/command/ddl/AlterTableRename;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "AlterTableRename.java"


# instance fields
.field private hidden:Z

.field private ifTableExists:Z

.field private newTableName:Ljava/lang/String;

.field private oldTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public setHidden(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableRename;->hidden:Z

    return-void
.end method

.method public setIfTableExists(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterTableRename;->ifTableExists:Z

    return-void
.end method

.method public setNewTableName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableRename;->newTableName:Ljava/lang/String;

    return-void
.end method

.method public setOldTableName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableRename;->oldTableName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 7

    .line 46
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableRename;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 47
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableRename;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableRename;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/AlterTableRename;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableRename;->oldTableName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 50
    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableRename;->ifTableExists:Z

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const v0, 0xa476

    .line 53
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRename;->oldTableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 55
    :cond_1
    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableRename;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v2, v5}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 56
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableRename;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableRename;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/ddl/AlterTableRename;->newTableName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 57
    iget-boolean v5, p0, Lorg/h2/command/ddl/AlterTableRename;->hidden:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/h2/command/ddl/AlterTableRename;->newTableName:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    invoke-virtual {v4}, Lorg/h2/table/Table;->isHidden()Z

    move-result v5

    if-nez v5, :cond_2

    .line 59
    iget-boolean v5, p0, Lorg/h2/command/ddl/AlterTableRename;->hidden:Z

    invoke-virtual {v4, v5}, Lorg/h2/table/Table;->setHidden(Z)V

    .line 60
    invoke-virtual {v2, v1}, Lorg/h2/table/Table;->setHidden(Z)V

    .line 61
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRename;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :cond_2
    return v3

    :cond_3
    if-nez v4, :cond_5

    .line 65
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRename;->newTableName:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 68
    invoke-virtual {v2}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_4

    .line 71
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRename;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterTableRename;->newTableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    return v3

    :cond_4
    const-string v0, "temp table"

    .line 69
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_5
    const v0, 0xa475

    .line 66
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRename;->newTableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
