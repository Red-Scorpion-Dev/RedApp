.class public Lorg/h2/command/ddl/CreateLinkedTable;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "CreateLinkedTable.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private driver:Ljava/lang/String;

.field private emitUpdates:Z

.field private force:Z

.field private globalTemporary:Z

.field private ifNotExists:Z

.field private originalSchema:Ljava/lang/String;

.field private originalTable:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private readOnly:Z

.field private tableName:Ljava/lang/String;

.field private temporary:Z

.field private url:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->comment:Ljava/lang/String;

    return-void
.end method

.method public setDriver(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->driver:Ljava/lang/String;

    return-void
.end method

.method public setEmitUpdates(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->emitUpdates:Z

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->force:Z

    return-void
.end method

.method public setGlobalTemporary(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->globalTemporary:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->ifNotExists:Z

    return-void
.end method

.method public setOriginalSchema(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->originalSchema:Ljava/lang/String;

    return-void
.end method

.method public setOriginalTable(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->originalTable:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->password:Ljava/lang/String;

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->readOnly:Z

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setTemporary(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->temporary:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->url:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->user:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 14

    .line 66
    iget-object v0, p0, Lorg/h2/command/ddl/CreateLinkedTable;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 67
    iget-object v0, p0, Lorg/h2/command/ddl/CreateLinkedTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 69
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateLinkedTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/CreateLinkedTable;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/CreateLinkedTable;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 70
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateLinkedTable;->ifNotExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0xa475

    .line 73
    iget-object v1, p0, Lorg/h2/command/ddl/CreateLinkedTable;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateLinkedTable;->getObjectId()I

    move-result v4

    .line 77
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateLinkedTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    iget-object v5, p0, Lorg/h2/command/ddl/CreateLinkedTable;->tableName:Ljava/lang/String;

    iget-object v6, p0, Lorg/h2/command/ddl/CreateLinkedTable;->driver:Ljava/lang/String;

    iget-object v7, p0, Lorg/h2/command/ddl/CreateLinkedTable;->url:Ljava/lang/String;

    iget-object v8, p0, Lorg/h2/command/ddl/CreateLinkedTable;->user:Ljava/lang/String;

    iget-object v9, p0, Lorg/h2/command/ddl/CreateLinkedTable;->password:Ljava/lang/String;

    iget-object v10, p0, Lorg/h2/command/ddl/CreateLinkedTable;->originalSchema:Ljava/lang/String;

    iget-object v11, p0, Lorg/h2/command/ddl/CreateLinkedTable;->originalTable:Ljava/lang/String;

    iget-boolean v12, p0, Lorg/h2/command/ddl/CreateLinkedTable;->emitUpdates:Z

    iget-boolean v13, p0, Lorg/h2/command/ddl/CreateLinkedTable;->force:Z

    invoke-virtual/range {v3 .. v13}, Lorg/h2/schema/Schema;->createTableLink(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/h2/table/TableLink;

    move-result-object v1

    .line 79
    iget-boolean v3, p0, Lorg/h2/command/ddl/CreateLinkedTable;->temporary:Z

    invoke-virtual {v1, v3}, Lorg/h2/table/TableLink;->setTemporary(Z)V

    .line 80
    iget-boolean v3, p0, Lorg/h2/command/ddl/CreateLinkedTable;->globalTemporary:Z

    invoke-virtual {v1, v3}, Lorg/h2/table/TableLink;->setGlobalTemporary(Z)V

    .line 81
    iget-object v3, p0, Lorg/h2/command/ddl/CreateLinkedTable;->comment:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/h2/table/TableLink;->setComment(Ljava/lang/String;)V

    .line 82
    iget-boolean v3, p0, Lorg/h2/command/ddl/CreateLinkedTable;->readOnly:Z

    invoke-virtual {v1, v3}, Lorg/h2/table/TableLink;->setReadOnly(Z)V

    .line 83
    iget-boolean v3, p0, Lorg/h2/command/ddl/CreateLinkedTable;->temporary:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/h2/command/ddl/CreateLinkedTable;->globalTemporary:Z

    if-nez v3, :cond_2

    .line 84
    iget-object v0, p0, Lorg/h2/command/ddl/CreateLinkedTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->addLocalTempTable(Lorg/h2/table/Table;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v3, p0, Lorg/h2/command/ddl/CreateLinkedTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v1}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_0
    return v2
.end method
