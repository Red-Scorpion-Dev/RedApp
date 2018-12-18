.class public Lorg/h2/command/ddl/DropView;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "DropView.java"


# instance fields
.field private dropAction:I

.field private ifExists:Z

.field private viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 31
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->dropRestrict:Z

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/command/ddl/DropView;->dropAction:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public setDropAction(I)V
    .locals 0

    .line 41
    iput p1, p0, Lorg/h2/command/ddl/DropView;->dropAction:I

    return-void
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropView;->ifExists:Z

    return-void
.end method

.method public setViewName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 6

    .line 50
    iget-object v0, p0, Lorg/h2/command/ddl/DropView;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 51
    invoke-virtual {p0}, Lorg/h2/command/ddl/DropView;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/ddl/DropView;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x15fb5

    if-nez v0, :cond_1

    .line 53
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropView;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v4, "VIEW"

    .line 57
    invoke-virtual {v0}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    iget-object v3, p0, Lorg/h2/command/ddl/DropView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v0, v4}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 62
    iget v3, p0, Lorg/h2/command/ddl/DropView;->dropAction:I

    if-nez v3, :cond_3

    .line 63
    invoke-virtual {v0}, Lorg/h2/table/Table;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/engine/DbObject;

    .line 64
    instance-of v5, v4, Lorg/h2/table/TableView;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x15ffb

    const/4 v3, 0x2

    .line 65
    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-interface {v4}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 70
    :cond_3
    iget-object v3, p0, Lorg/h2/command/ddl/DropView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 71
    iget-object v1, p0, Lorg/h2/command/ddl/DropView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/ddl/DropView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_1
    return v2

    .line 58
    :cond_4
    iget-object v0, p0, Lorg/h2/command/ddl/DropView;->viewName:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
