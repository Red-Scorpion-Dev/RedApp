.class public Lorg/h2/command/ddl/CreateUser;
.super Lorg/h2/command/ddl/DefineCommand;
.source "CreateUser.java"


# instance fields
.field private admin:Z

.field private comment:Ljava/lang/String;

.field private hash:Lorg/h2/expression/Expression;

.field private ifNotExists:Z

.field private password:Lorg/h2/expression/Expression;

.field private salt:Lorg/h2/expression/Expression;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private static getByteArray(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)[B
    .locals 0

    .line 61
    invoke-virtual {p1, p0}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 62
    new-array p0, p0, [B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static setPassword(Lorg/h2/engine/User;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V
    .locals 2

    .line 73
    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 74
    new-array p1, p2, [C

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 76
    :goto_0
    invoke-virtual {p0}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_1

    .line 78
    new-array p1, p2, [B

    goto :goto_1

    .line 80
    :cond_1
    invoke-static {v0, p1}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object p1

    .line 82
    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/engine/User;->setUserPasswordHash([B)V

    return-void
.end method

.method static setSaltAndHash(Lorg/h2/engine/User;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V
    .locals 0

    .line 57
    invoke-static {p1, p2}, Lorg/h2/command/ddl/CreateUser;->getByteArray(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)[B

    move-result-object p2

    invoke-static {p1, p3}, Lorg/h2/command/ddl/CreateUser;->getByteArray(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/h2/engine/User;->setSaltAndHash([B[B)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public setAdmin(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateUser;->admin:Z

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/h2/command/ddl/CreateUser;->comment:Ljava/lang/String;

    return-void
.end method

.method public setHash(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/h2/command/ddl/CreateUser;->hash:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateUser;->ifNotExists:Z

    return-void
.end method

.method public setPassword(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/h2/command/ddl/CreateUser;->password:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setSalt(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/h2/command/ddl/CreateUser;->salt:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/h2/command/ddl/CreateUser;->userName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 6

    .line 87
    iget-object v0, p0, Lorg/h2/command/ddl/CreateUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 88
    iget-object v0, p0, Lorg/h2/command/ddl/CreateUser;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 89
    iget-object v0, p0, Lorg/h2/command/ddl/CreateUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findRole(Ljava/lang/String;)Lorg/h2/engine/Role;

    move-result-object v1

    if-nez v1, :cond_4

    .line 93
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 94
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateUser;->ifNotExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0x15fb1

    .line 97
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateUser;->getObjectId()I

    move-result v1

    .line 100
    new-instance v3, Lorg/h2/engine/User;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateUser;->userName:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v4, v2}, Lorg/h2/engine/User;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V

    .line 101
    iget-boolean v1, p0, Lorg/h2/command/ddl/CreateUser;->admin:Z

    invoke-virtual {v3, v1}, Lorg/h2/engine/User;->setAdmin(Z)V

    .line 102
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->comment:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/h2/engine/User;->setComment(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->hash:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->salt:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateUser;->salt:Lorg/h2/expression/Expression;

    iget-object v5, p0, Lorg/h2/command/ddl/CreateUser;->hash:Lorg/h2/expression/Expression;

    invoke-static {v3, v1, v4, v5}, Lorg/h2/command/ddl/CreateUser;->setSaltAndHash(Lorg/h2/engine/User;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->password:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateUser;->password:Lorg/h2/expression/Expression;

    invoke-static {v3, v1, v4}, Lorg/h2/command/ddl/CreateUser;->setPassword(Lorg/h2/engine/User;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    .line 110
    :goto_0
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    return v2

    .line 108
    :cond_3
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    const v0, 0x15fd5

    .line 91
    iget-object v1, p0, Lorg/h2/command/ddl/CreateUser;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
