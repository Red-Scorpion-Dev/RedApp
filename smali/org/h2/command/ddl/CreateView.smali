.class public Lorg/h2/command/ddl/CreateView;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "CreateView.java"


# instance fields
.field private columnNames:[Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private force:Z

.field private ifNotExists:Z

.field private orReplace:Z

.field private select:Lorg/h2/command/dml/Query;

.field private selectSQL:Ljava/lang/String;

.field private viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public setColumnNames([Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->comment:Ljava/lang/String;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateView;->force:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateView;->ifNotExists:Z

    return-void
.end method

.method public setOrReplace(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateView;->orReplace:Z

    return-void
.end method

.method public setSelect(Lorg/h2/command/dml/Query;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->select:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setSelectSQL(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->selectSQL:Ljava/lang/String;

    return-void
.end method

.method public setViewName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/h2/command/ddl/CreateView;->viewName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 21

    move-object/from16 v1, p0

    .line 77
    iget-object v0, v1, Lorg/h2/command/ddl/CreateView;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->commit(Z)V

    .line 78
    iget-object v0, v1, Lorg/h2/command/ddl/CreateView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 79
    iget-object v0, v1, Lorg/h2/command/ddl/CreateView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    .line 81
    invoke-virtual/range {p0 .. p0}, Lorg/h2/command/ddl/CreateView;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v3, v1, Lorg/h2/command/ddl/CreateView;->session:Lorg/h2/engine/Session;

    iget-object v4, v1, Lorg/h2/command/ddl/CreateView;->viewName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 83
    iget-boolean v5, v1, Lorg/h2/command/ddl/CreateView;->ifNotExists:Z

    if-eqz v5, :cond_0

    return v4

    .line 86
    :cond_0
    iget-boolean v5, v1, Lorg/h2/command/ddl/CreateView;->orReplace:Z

    if-eqz v5, :cond_1

    const-string v5, "VIEW"

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    move-object v5, v0

    check-cast v5, Lorg/h2/table/TableView;

    move-object v11, v5

    goto :goto_0

    :cond_1
    const v0, 0x15fb6

    .line 87
    iget-object v2, v1, Lorg/h2/command/ddl/CreateView;->viewName:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v11, v3

    .line 91
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/h2/command/ddl/CreateView;->getObjectId()I

    move-result v14

    .line 93
    iget-object v5, v1, Lorg/h2/command/ddl/CreateView;->select:Lorg/h2/command/dml/Query;

    if-nez v5, :cond_3

    .line 94
    iget-object v5, v1, Lorg/h2/command/ddl/CreateView;->selectSQL:Ljava/lang/String;

    :goto_1
    move-object/from16 v16, v5

    goto :goto_3

    .line 96
    :cond_3
    iget-object v5, v1, Lorg/h2/command/ddl/CreateView;->select:Lorg/h2/command/dml/Query;

    invoke-virtual {v5}, Lorg/h2/command/dml/Query;->getParameters()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 97
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "parameters in views"

    .line 98
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 100
    :cond_5
    :goto_2
    iget-object v5, v1, Lorg/h2/command/ddl/CreateView;->select:Lorg/h2/command/dml/Query;

    invoke-virtual {v5}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 104
    :goto_3
    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v10

    if-nez v11, :cond_7

    .line 107
    :try_start_0
    iget-object v5, v1, Lorg/h2/command/ddl/CreateView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v5

    iget-object v6, v1, Lorg/h2/command/ddl/CreateView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v5

    .line 108
    invoke-virtual {v10, v5}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    .line 110
    iget-object v5, v1, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 111
    iget-object v3, v1, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Lorg/h2/table/Column;

    const/4 v5, 0x0

    .line 112
    :goto_4
    iget-object v6, v1, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_6

    .line 113
    new-instance v6, Lorg/h2/table/Column;

    iget-object v7, v1, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    aget-object v7, v7, v5

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v18, v3

    .line 116
    new-instance v3, Lorg/h2/table/TableView;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/command/ddl/CreateView;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v13

    iget-object v15, v1, Lorg/h2/command/ddl/CreateView;->viewName:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move-object/from16 v19, v10

    invoke-direct/range {v12 .. v20}, Lorg/h2/table/TableView;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    move-object v12, v10

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v12, v10

    goto :goto_7

    .line 119
    :cond_7
    iget-object v7, v1, Lorg/h2/command/ddl/CreateView;->columnNames:[Ljava/lang/String;

    const/4 v9, 0x0

    iget-boolean v3, v1, Lorg/h2/command/ddl/CreateView;->force:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v11

    move-object/from16 v6, v16

    move-object v8, v10

    move-object v12, v10

    move v10, v3

    :try_start_1
    invoke-virtual/range {v5 .. v10}, Lorg/h2/table/TableView;->replace(Ljava/lang/String;[Ljava/lang/String;Lorg/h2/engine/Session;ZZ)V

    .line 120
    invoke-virtual {v11}, Lorg/h2/table/TableView;->setModified()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v11

    :goto_5
    const-string v5, "PUBLIC"

    .line 123
    invoke-virtual {v2, v5}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-virtual {v12, v5}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    .line 125
    iget-object v5, v1, Lorg/h2/command/ddl/CreateView;->comment:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 126
    iget-object v5, v1, Lorg/h2/command/ddl/CreateView;->comment:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/h2/table/TableView;->setComment(Ljava/lang/String;)V

    :cond_8
    if-nez v0, :cond_9

    .line 129
    iget-object v0, v1, Lorg/h2/command/ddl/CreateView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v0, v3}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_6

    .line 131
    :cond_9
    iget-object v0, v1, Lorg/h2/command/ddl/CreateView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v0, v3}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_6
    return v4

    :catchall_1
    move-exception v0

    :goto_7
    const-string v3, "PUBLIC"

    .line 123
    invoke-virtual {v2, v3}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    throw v0
.end method
