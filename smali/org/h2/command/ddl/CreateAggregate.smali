.class public Lorg/h2/command/ddl/CreateAggregate;
.super Lorg/h2/command/ddl/DefineCommand;
.source "CreateAggregate.java"


# instance fields
.field private force:Z

.field private ifNotExists:Z

.field private javaClassMethod:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private schema:Lorg/h2/schema/Schema;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public setForce(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateAggregate;->force:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateAggregate;->ifNotExists:Z

    return-void
.end method

.method public setJavaClassMethod(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/h2/command/ddl/CreateAggregate;->javaClassMethod:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/h2/command/ddl/CreateAggregate;->name:Ljava/lang/String;

    return-void
.end method

.method public setSchema(Lorg/h2/schema/Schema;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/h2/command/ddl/CreateAggregate;->schema:Lorg/h2/schema/Schema;

    return-void
.end method

.method public update()I
    .locals 8

    .line 34
    iget-object v0, p0, Lorg/h2/command/ddl/CreateAggregate;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 35
    iget-object v0, p0, Lorg/h2/command/ddl/CreateAggregate;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 36
    iget-object v0, p0, Lorg/h2/command/ddl/CreateAggregate;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lorg/h2/command/ddl/CreateAggregate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findAggregate(Ljava/lang/String;)Lorg/h2/engine/UserAggregate;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/h2/command/ddl/CreateAggregate;->schema:Lorg/h2/schema/Schema;

    iget-object v2, p0, Lorg/h2/command/ddl/CreateAggregate;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateAggregate;->getObjectId()I

    move-result v3

    .line 44
    new-instance v7, Lorg/h2/engine/UserAggregate;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateAggregate;->name:Ljava/lang/String;

    iget-object v5, p0, Lorg/h2/command/ddl/CreateAggregate;->javaClassMethod:Ljava/lang/String;

    iget-boolean v6, p0, Lorg/h2/command/ddl/CreateAggregate;->force:Z

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lorg/h2/engine/UserAggregate;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 46
    iget-object v1, p0, Lorg/h2/command/ddl/CreateAggregate;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v7}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateAggregate;->ifNotExists:Z

    if-eqz v0, :cond_2

    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const v0, 0x15fdc

    .line 39
    iget-object v1, p0, Lorg/h2/command/ddl/CreateAggregate;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
