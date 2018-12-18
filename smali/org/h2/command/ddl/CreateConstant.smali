.class public Lorg/h2/command/ddl/CreateConstant;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "CreateConstant.java"


# instance fields
.field private constantName:Ljava/lang/String;

.field private expression:Lorg/h2/expression/Expression;

.field private ifNotExists:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public setConstantName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/h2/command/ddl/CreateConstant;->constantName:Ljava/lang/String;

    return-void
.end method

.method public setExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/h2/command/ddl/CreateConstant;->expression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateConstant;->ifNotExists:Z

    return-void
.end method

.method public update()I
    .locals 6

    .line 38
    iget-object v0, p0, Lorg/h2/command/ddl/CreateConstant;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 39
    iget-object v0, p0, Lorg/h2/command/ddl/CreateConstant;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 40
    iget-object v0, p0, Lorg/h2/command/ddl/CreateConstant;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateConstant;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/CreateConstant;->constantName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->findConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 42
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateConstant;->ifNotExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0x16002

    .line 45
    iget-object v1, p0, Lorg/h2/command/ddl/CreateConstant;->constantName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateConstant;->getObjectId()I

    move-result v1

    .line 48
    new-instance v3, Lorg/h2/schema/Constant;

    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateConstant;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/ddl/CreateConstant;->constantName:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v5}, Lorg/h2/schema/Constant;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;)V

    .line 49
    iget-object v1, p0, Lorg/h2/command/ddl/CreateConstant;->expression:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateConstant;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v4}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/ddl/CreateConstant;->expression:Lorg/h2/expression/Expression;

    .line 50
    iget-object v1, p0, Lorg/h2/command/ddl/CreateConstant;->expression:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/ddl/CreateConstant;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    .line 51
    invoke-virtual {v3, v1}, Lorg/h2/schema/Constant;->setValue(Lorg/h2/value/Value;)V

    .line 52
    iget-object v1, p0, Lorg/h2/command/ddl/CreateConstant;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    return v2
.end method
