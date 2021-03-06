.class public Lorg/h2/command/ddl/DropRole;
.super Lorg/h2/command/ddl/DefineCommand;
.source "DropRole.java"


# instance fields
.field private ifExists:Z

.field private roleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropRole;->ifExists:Z

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/h2/command/ddl/DropRole;->roleName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/h2/command/ddl/DropRole;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 36
    iget-object v0, p0, Lorg/h2/command/ddl/DropRole;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 37
    iget-object v0, p0, Lorg/h2/command/ddl/DropRole;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/h2/command/ddl/DropRole;->roleName:Ljava/lang/String;

    const-string v2, "PUBLIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 41
    iget-object v1, p0, Lorg/h2/command/ddl/DropRole;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findRole(Ljava/lang/String;)Lorg/h2/engine/Role;

    move-result-object v1

    if-nez v1, :cond_1

    .line 43
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropRole;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fd6

    .line 44
    iget-object v1, p0, Lorg/h2/command/ddl/DropRole;->roleName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 47
    :cond_1
    iget-object v2, p0, Lorg/h2/command/ddl/DropRole;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    const v0, 0x15feb

    .line 39
    iget-object v1, p0, Lorg/h2/command/ddl/DropRole;->roleName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
