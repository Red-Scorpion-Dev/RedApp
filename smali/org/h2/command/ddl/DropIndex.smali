.class public Lorg/h2/command/ddl/DropIndex;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "DropIndex.java"


# instance fields
.field private ifExists:Z

.field private indexName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropIndex;->ifExists:Z

    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/h2/command/ddl/DropIndex;->indexName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 9

    .line 44
    iget-object v0, p0, Lorg/h2/command/ddl/DropIndex;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 45
    iget-object v0, p0, Lorg/h2/command/ddl/DropIndex;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lorg/h2/command/ddl/DropIndex;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/DropIndex;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/DropIndex;->indexName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 48
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropIndex;->ifExists:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const v0, 0xa480

    .line 49
    iget-object v1, p0, Lorg/h2/command/ddl/DropIndex;->indexName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 52
    :cond_1
    invoke-interface {v2}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v4

    .line 53
    iget-object v5, p0, Lorg/h2/command/ddl/DropIndex;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v5

    invoke-interface {v2}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v5, v6, v7}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    const/4 v5, 0x0

    .line 55
    invoke-virtual {v4}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v4

    move-object v6, v5

    const/4 v5, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 56
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 57
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/constraint/Constraint;

    .line 58
    invoke-virtual {v7, v2}, Lorg/h2/constraint/Constraint;->usesIndex(Lorg/h2/index/Index;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v6, "PRIMARY KEY"

    .line 60
    invoke-virtual {v7}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v7

    goto :goto_1

    :cond_2
    const v0, 0x15fe5

    const/4 v2, 0x2

    .line 63
    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/command/ddl/DropIndex;->indexName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v7}, Lorg/h2/constraint/Constraint;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    :cond_4
    invoke-interface {v2}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/Table;->setModified()V

    if-eqz v6, :cond_5

    .line 71
    iget-object v1, p0, Lorg/h2/command/ddl/DropIndex;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v6}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_2

    .line 73
    :cond_5
    iget-object v1, p0, Lorg/h2/command/ddl/DropIndex;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_2
    return v3
.end method
