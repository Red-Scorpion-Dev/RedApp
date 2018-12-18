.class public Lorg/h2/command/ddl/CreateRole;
.super Lorg/h2/command/ddl/DefineCommand;
.source "CreateRole.java"


# instance fields
.field private ifNotExists:Z

.field private roleName:Ljava/lang/String;


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

    const/16 v0, 0x1b

    return v0
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateRole;->ifNotExists:Z

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/h2/command/ddl/CreateRole;->roleName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 5

    .line 38
    iget-object v0, p0, Lorg/h2/command/ddl/CreateRole;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 39
    iget-object v0, p0, Lorg/h2/command/ddl/CreateRole;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 40
    iget-object v0, p0, Lorg/h2/command/ddl/CreateRole;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/h2/command/ddl/CreateRole;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v1

    if-nez v1, :cond_2

    .line 44
    iget-object v1, p0, Lorg/h2/command/ddl/CreateRole;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findRole(Ljava/lang/String;)Lorg/h2/engine/Role;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 45
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateRole;->ifNotExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0x15fd5

    .line 48
    iget-object v1, p0, Lorg/h2/command/ddl/CreateRole;->roleName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateRole;->getObjectId()I

    move-result v1

    .line 51
    new-instance v3, Lorg/h2/engine/Role;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateRole;->roleName:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v4, v2}, Lorg/h2/engine/Role;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V

    .line 52
    iget-object v1, p0, Lorg/h2/command/ddl/CreateRole;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    return v2

    :cond_2
    const v0, 0x15fb1

    .line 42
    iget-object v1, p0, Lorg/h2/command/ddl/CreateRole;->roleName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
