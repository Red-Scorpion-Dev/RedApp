.class public Lorg/h2/command/ddl/AlterIndexRename;
.super Lorg/h2/command/ddl/DefineCommand;
.source "AlterIndexRename.java"


# instance fields
.field private ifExists:Z

.field private newIndexName:Ljava/lang/String;

.field private oldIndex:Lorg/h2/index/Index;

.field private oldIndexName:Ljava/lang/String;

.field private oldSchema:Lorg/h2/schema/Schema;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterIndexRename;->ifExists:Z

    return-void
.end method

.method public setNewName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/h2/command/ddl/AlterIndexRename;->newIndexName:Ljava/lang/String;

    return-void
.end method

.method public setOldName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldIndexName:Ljava/lang/String;

    return-void
.end method

.method public setOldSchema(Lorg/h2/schema/Schema;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldSchema:Lorg/h2/schema/Schema;

    return-void
.end method

.method public update()I
    .locals 5

    .line 51
    iget-object v0, p0, Lorg/h2/command/ddl/AlterIndexRename;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 52
    iget-object v0, p0, Lorg/h2/command/ddl/AlterIndexRename;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldSchema:Lorg/h2/schema/Schema;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterIndexRename;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldIndexName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldIndex:Lorg/h2/index/Index;

    .line 54
    iget-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldIndex:Lorg/h2/index/Index;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 55
    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterIndexRename;->ifExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0xa480

    .line 56
    iget-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->newIndexName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 62
    :cond_1
    iget-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldSchema:Lorg/h2/schema/Schema;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterIndexRename;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterIndexRename;->newIndexName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->newIndexName:Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldIndexName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    iget-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldIndex:Lorg/h2/index/Index;

    invoke-interface {v3}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 68
    iget-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterIndexRename;->oldIndex:Lorg/h2/index/Index;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterIndexRename;->newIndexName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    return v2

    :cond_2
    const v0, 0xa47f

    .line 64
    iget-object v1, p0, Lorg/h2/command/ddl/AlterIndexRename;->newIndexName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
