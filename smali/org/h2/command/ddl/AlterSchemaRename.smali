.class public Lorg/h2/command/ddl/AlterSchemaRename;
.super Lorg/h2/command/ddl/DefineCommand;
.source "AlterSchemaRename.java"


# instance fields
.field private newSchemaName:Ljava/lang/String;

.field private oldSchema:Lorg/h2/schema/Schema;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setNewName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->newSchemaName:Ljava/lang/String;

    return-void
.end method

.method public setOldSchema(Lorg/h2/schema/Schema;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->oldSchema:Lorg/h2/schema/Schema;

    return-void
.end method

.method public update()I
    .locals 4

    .line 41
    iget-object v0, p0, Lorg/h2/command/ddl/AlterSchemaRename;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 42
    iget-object v0, p0, Lorg/h2/command/ddl/AlterSchemaRename;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->oldSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->canDrop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->newSchemaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->newSchemaName:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterSchemaRename;->oldSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkSchemaAdmin()V

    .line 53
    iget-object v1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterSchemaRename;->oldSchema:Lorg/h2/schema/Schema;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterSchemaRename;->newSchemaName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/engine/Database;->renameDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllSchemaObjects()Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    .line 56
    iget-object v3, p0, Lorg/h2/command/ddl/AlterSchemaRename;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const v0, 0x15fde

    .line 49
    iget-object v1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->newSchemaName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    const v0, 0x15fea

    .line 44
    iget-object v1, p0, Lorg/h2/command/ddl/AlterSchemaRename;->oldSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
