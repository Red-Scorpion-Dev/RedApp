.class public Lorg/h2/command/ddl/DropDatabase;
.super Lorg/h2/command/ddl/DefineCommand;
.source "DropDatabase.java"


# instance fields
.field private deleteFiles:Z

.field private dropAllObjects:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private dropAllObjects()V
    .locals 9

    .line 45
    iget-object v0, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 46
    iget-object v0, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 47
    iget-object v0, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_0
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 55
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Table;

    .line 57
    invoke-virtual {v6}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v7, "VIEW"

    invoke-virtual {v6}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Table;

    .line 63
    invoke-virtual {v6}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, "TABLE LINK"

    invoke-virtual {v6}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 65
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Table;

    .line 69
    invoke-virtual {v6}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v7, "TABLE"

    invoke-virtual {v6}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lorg/h2/table/Table;->isHidden()Z

    move-result v7

    if-nez v7, :cond_5

    .line 72
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Table;

    .line 76
    invoke-virtual {v5}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v6, "EXTERNAL"

    invoke-virtual {v5}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lorg/h2/table/Table;->isHidden()Z

    move-result v6

    if-nez v6, :cond_7

    .line 79
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 83
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    .line 84
    invoke-virtual {v4}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_4

    .line 86
    :cond_9
    invoke-virtual {v0, v4, v4}, Lorg/h2/engine/Database;->getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;

    move-result-object v5

    if-nez v5, :cond_a

    .line 87
    iget-object v5, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v5, v4}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_4

    :cond_a
    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    if-nez v2, :cond_0

    .line 95
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    .line 96
    invoke-virtual {v2}, Lorg/h2/schema/Schema;->canDrop()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 97
    iget-object v3, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_5

    .line 100
    :cond_d
    iget-object v1, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    .line 101
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    .line 102
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x5

    .line 105
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x4

    .line 106
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v2, 0xb

    .line 107
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v2, 0x9

    .line 108
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    .line 110
    invoke-interface {v2}, Lorg/h2/schema/SchemaObject;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6

    .line 113
    :cond_e
    iget-object v3, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_6

    .line 115
    :cond_f
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/User;

    .line 116
    iget-object v3, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    if-eq v2, v3, :cond_10

    .line 117
    iget-object v3, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_7

    .line 120
    :cond_11
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRoles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Role;

    .line 121
    invoke-virtual {v2}, Lorg/h2/engine/Role;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 124
    iget-object v3, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_8

    .line 127
    :cond_13
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllAggregates()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllUserDataTypes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/DbObject;

    .line 132
    invoke-interface {v2}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 135
    iget-object v3, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_9

    :cond_15
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public setDeleteFiles(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropDatabase;->deleteFiles:Z

    return-void
.end method

.method public setDropAllObjects(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropDatabase;->dropAllObjects:Z

    return-void
.end method

.method public update()I
    .locals 2

    .line 35
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropDatabase;->dropAllObjects:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lorg/h2/command/ddl/DropDatabase;->dropAllObjects()V

    .line 38
    :cond_0
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropDatabase;->deleteFiles:Z

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lorg/h2/command/ddl/DropDatabase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setDeleteFilesOnDisconnect(Z)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
