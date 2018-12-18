.class public Lorg/h2/command/ddl/DropTrigger;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "DropTrigger.java"


# instance fields
.field private ifExists:Z

.field private triggerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropTrigger;->ifExists:Z

    return-void
.end method

.method public setTriggerName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/h2/command/ddl/DropTrigger;->triggerName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 5

    .line 41
    iget-object v0, p0, Lorg/h2/command/ddl/DropTrigger;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 42
    iget-object v0, p0, Lorg/h2/command/ddl/DropTrigger;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lorg/h2/command/ddl/DropTrigger;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/DropTrigger;->triggerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->findTrigger(Ljava/lang/String;)Lorg/h2/schema/TriggerObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 45
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropTrigger;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fba

    .line 46
    iget-object v1, p0, Lorg/h2/command/ddl/DropTrigger;->triggerName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 49
    :cond_1
    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lorg/h2/command/ddl/DropTrigger;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v2, v4}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 51
    iget-object v2, p0, Lorg/h2/command/ddl/DropTrigger;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
