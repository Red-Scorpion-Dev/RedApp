.class public Lorg/h2/command/ddl/AlterUser;
.super Lorg/h2/command/ddl/DefineCommand;
.source "AlterUser.java"


# instance fields
.field private admin:Z

.field private hash:Lorg/h2/expression/Expression;

.field private newName:Ljava/lang/String;

.field private password:Lorg/h2/expression/Expression;

.field private salt:Lorg/h2/expression/Expression;

.field private type:I

.field private user:Lorg/h2/engine/User;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/h2/command/ddl/AlterUser;->type:I

    return v0
.end method

.method public setAdmin(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterUser;->admin:Z

    return-void
.end method

.method public setHash(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->hash:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setNewName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->password:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setSalt(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->salt:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 37
    iput p1, p0, Lorg/h2/command/ddl/AlterUser;->type:I

    return-void
.end method

.method public setUser(Lorg/h2/engine/User;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    return-void
.end method

.method public update()I
    .locals 5

    .line 66
    iget-object v0, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 67
    iget-object v0, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 68
    iget v1, p0, Lorg/h2/command/ddl/AlterUser;->type:I

    packed-switch v1, :pswitch_data_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/command/ddl/AlterUser;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_0

    .line 70
    :pswitch_0
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->hash:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->salt:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterUser;->salt:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/ddl/AlterUser;->hash:Lorg/h2/expression/Expression;

    invoke-static {v1, v2, v3, v4}, Lorg/h2/command/ddl/CreateUser;->setSaltAndHash(Lorg/h2/engine/User;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterUser;->password:Lorg/h2/expression/Expression;

    invoke-static {v1, v2, v3}, Lorg/h2/command/ddl/CreateUser;->setPassword(Lorg/h2/engine/User;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 81
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    invoke-virtual {v2}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/engine/Database;->renameDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, 0x15fb1

    .line 82
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 87
    :pswitch_2
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 88
    iget-boolean v1, p0, Lorg/h2/command/ddl/AlterUser;->admin:Z

    if-nez v1, :cond_3

    .line 89
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkOwnsNoSchemas()V

    .line 91
    :cond_3
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    iget-boolean v2, p0, Lorg/h2/command/ddl/AlterUser;->admin:Z

    invoke-virtual {v1, v2}, Lorg/h2/engine/User;->setAdmin(Z)V

    .line 96
    :goto_0
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
