.class public Lorg/h2/command/ddl/DropConstant;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "DropConstant.java"


# instance fields
.field private constantName:Ljava/lang/String;

.field private ifExists:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public setConstantName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/h2/command/ddl/DropConstant;->constantName:Ljava/lang/String;

    return-void
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lorg/h2/command/ddl/DropConstant;->ifExists:Z

    return-void
.end method

.method public update()I
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/h2/command/ddl/DropConstant;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 40
    iget-object v0, p0, Lorg/h2/command/ddl/DropConstant;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 41
    iget-object v0, p0, Lorg/h2/command/ddl/DropConstant;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lorg/h2/command/ddl/DropConstant;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/DropConstant;->constantName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->findConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;

    move-result-object v1

    if-nez v1, :cond_1

    .line 44
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropConstant;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x16003

    .line 45
    iget-object v1, p0, Lorg/h2/command/ddl/DropConstant;->constantName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 48
    :cond_1
    iget-object v2, p0, Lorg/h2/command/ddl/DropConstant;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
