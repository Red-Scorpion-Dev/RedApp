.class public Lorg/h2/command/ddl/DropSchema;
.super Lorg/h2/command/ddl/DefineCommand;
.source "DropSchema.java"


# instance fields
.field private ifExists:Z

.field private schemaName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropSchema;->ifExists:Z

    return-void
.end method

.method public setSchemaName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/h2/command/ddl/DropSchema;->schemaName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 3

    .line 34
    iget-object v0, p0, Lorg/h2/command/ddl/DropSchema;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkSchemaAdmin()V

    .line 35
    iget-object v0, p0, Lorg/h2/command/ddl/DropSchema;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 36
    iget-object v0, p0, Lorg/h2/command/ddl/DropSchema;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lorg/h2/command/ddl/DropSchema;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    if-nez v1, :cond_1

    .line 39
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropSchema;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fdf

    .line 40
    iget-object v1, p0, Lorg/h2/command/ddl/DropSchema;->schemaName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 43
    :cond_1
    invoke-virtual {v1}, Lorg/h2/schema/Schema;->canDrop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lorg/h2/command/ddl/DropSchema;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    const v0, 0x15fea

    .line 44
    iget-object v1, p0, Lorg/h2/command/ddl/DropSchema;->schemaName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
