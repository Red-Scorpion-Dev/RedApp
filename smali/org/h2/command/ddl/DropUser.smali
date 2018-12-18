.class public Lorg/h2/command/ddl/DropUser;
.super Lorg/h2/command/ddl/DefineCommand;
.source "DropUser.java"


# instance fields
.field private ifExists:Z

.field private userName:Ljava/lang/String;


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

    const/16 v0, 0x2e

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropUser;->ifExists:Z

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/h2/command/ddl/DropUser;->userName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 7

    .line 38
    iget-object v0, p0, Lorg/h2/command/ddl/DropUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 39
    iget-object v0, p0, Lorg/h2/command/ddl/DropUser;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 40
    iget-object v0, p0, Lorg/h2/command/ddl/DropUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 41
    iget-object v2, p0, Lorg/h2/command/ddl/DropUser;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 43
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropUser;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const v0, 0x15fb0

    .line 44
    iget-object v1, p0, Lorg/h2/command/ddl/DropUser;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 47
    :cond_1
    iget-object v4, p0, Lorg/h2/command/ddl/DropUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    if-ne v2, v4, :cond_5

    .line 49
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/engine/User;

    .line 50
    invoke-virtual {v6}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eq v5, v1, :cond_4

    goto :goto_1

    :cond_4
    const v0, 0x15fa3

    .line 55
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 58
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lorg/h2/engine/User;->checkOwnsNoSchemas()V

    .line 59
    iget-object v1, p0, Lorg/h2/command/ddl/DropUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_2
    return v3
.end method
