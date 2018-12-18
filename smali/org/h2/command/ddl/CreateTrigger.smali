.class public Lorg/h2/command/ddl/CreateTrigger;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "CreateTrigger.java"


# instance fields
.field private before:Z

.field private force:Z

.field private ifNotExists:Z

.field private insteadOf:Z

.field private noWait:Z

.field private onRollback:Z

.field private queueSize:I

.field private rowBased:Z

.field private tableName:Ljava/lang/String;

.field private triggerClassName:Ljava/lang/String;

.field private triggerName:Ljava/lang/String;

.field private triggerSource:Ljava/lang/String;

.field private typeMask:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    const/16 p1, 0x400

    .line 31
    iput p1, p0, Lorg/h2/command/ddl/CreateTrigger;->queueSize:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public setBefore(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTrigger;->before:Z

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTrigger;->force:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTrigger;->ifNotExists:Z

    return-void
.end method

.method public setInsteadOf(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTrigger;->insteadOf:Z

    return-void
.end method

.method public setNoWait(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTrigger;->noWait:Z

    return-void
.end method

.method public setOnRollback(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTrigger;->onRollback:Z

    return-void
.end method

.method public setQueueSize(I)V
    .locals 0

    .line 68
    iput p1, p0, Lorg/h2/command/ddl/CreateTrigger;->queueSize:I

    return-void
.end method

.method public setRowBased(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateTrigger;->rowBased:Z

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/h2/command/ddl/CreateTrigger;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setTriggerClassName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerClassName:Ljava/lang/String;

    return-void
.end method

.method public setTriggerName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerName:Ljava/lang/String;

    return-void
.end method

.method public setTriggerSource(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerSource:Ljava/lang/String;

    return-void
.end method

.method public setTypeMask(I)V
    .locals 0

    .line 60
    iput p1, p0, Lorg/h2/command/ddl/CreateTrigger;->typeMask:I

    return-void
.end method

.method public update()I
    .locals 7

    .line 89
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTrigger;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 90
    iget-object v0, p0, Lorg/h2/command/ddl/CreateTrigger;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTrigger;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->findTrigger(Ljava/lang/String;)Lorg/h2/schema/TriggerObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 92
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateTrigger;->ifNotExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0x15fb9

    .line 95
    iget-object v1, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 99
    :cond_1
    iget v1, p0, Lorg/h2/command/ddl/CreateTrigger;->typeMask:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateTrigger;->rowBased:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x15f95

    .line 100
    iget-object v1, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 104
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTrigger;->getObjectId()I

    move-result v1

    .line 105
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTrigger;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/ddl/CreateTrigger;->session:Lorg/h2/engine/Session;

    iget-object v5, p0, Lorg/h2/command/ddl/CreateTrigger;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/h2/schema/Schema;->getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v3

    .line 106
    new-instance v4, Lorg/h2/schema/TriggerObject;

    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateTrigger;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerName:Ljava/lang/String;

    invoke-direct {v4, v5, v1, v6, v3}, Lorg/h2/schema/TriggerObject;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    .line 107
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateTrigger;->insteadOf:Z

    invoke-virtual {v4, v1}, Lorg/h2/schema/TriggerObject;->setInsteadOf(Z)V

    .line 108
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateTrigger;->before:Z

    invoke-virtual {v4, v1}, Lorg/h2/schema/TriggerObject;->setBefore(Z)V

    .line 109
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateTrigger;->noWait:Z

    invoke-virtual {v4, v1}, Lorg/h2/schema/TriggerObject;->setNoWait(Z)V

    .line 110
    iget v1, p0, Lorg/h2/command/ddl/CreateTrigger;->queueSize:I

    invoke-virtual {v4, v1}, Lorg/h2/schema/TriggerObject;->setQueueSize(I)V

    .line 111
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateTrigger;->rowBased:Z

    invoke-virtual {v4, v1}, Lorg/h2/schema/TriggerObject;->setRowBased(Z)V

    .line 112
    iget v1, p0, Lorg/h2/command/ddl/CreateTrigger;->typeMask:I

    invoke-virtual {v4, v1}, Lorg/h2/schema/TriggerObject;->setTypeMask(I)V

    .line 113
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateTrigger;->onRollback:Z

    invoke-virtual {v4, v1}, Lorg/h2/schema/TriggerObject;->setOnRollback(Z)V

    .line 114
    iget-object v1, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerClassName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 115
    iget-object v1, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerClassName:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/h2/command/ddl/CreateTrigger;->force:Z

    invoke-virtual {v4, v1, v5}, Lorg/h2/schema/TriggerObject;->setTriggerClassName(Ljava/lang/String;Z)V

    goto :goto_1

    .line 117
    :cond_4
    iget-object v1, p0, Lorg/h2/command/ddl/CreateTrigger;->triggerSource:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/h2/command/ddl/CreateTrigger;->force:Z

    invoke-virtual {v4, v1, v5}, Lorg/h2/schema/TriggerObject;->setTriggerSource(Ljava/lang/String;Z)V

    .line 119
    :goto_1
    iget-object v1, p0, Lorg/h2/command/ddl/CreateTrigger;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v4}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 120
    invoke-virtual {v3, v4}, Lorg/h2/table/Table;->addTrigger(Lorg/h2/schema/TriggerObject;)V

    return v2
.end method
