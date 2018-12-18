.class public Lorg/h2/schema/Constant;
.super Lorg/h2/schema/SchemaObjectBase;
.source "Constant.java"


# instance fields
.field private expression:Lorg/h2/expression/ValueExpression;

.field private value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    const/16 v0, 0x8

    .line 26
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/schema/Constant;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE CONSTANT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/schema/Constant;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " VALUE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/schema/Constant;->value:Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getValue()Lorg/h2/expression/ValueExpression;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/h2/schema/Constant;->expression:Lorg/h2/expression/ValueExpression;

    return-object v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/h2/schema/Constant;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/schema/Constant;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    .line 52
    invoke-virtual {p0}, Lorg/h2/schema/Constant;->invalidate()V

    return-void
.end method

.method public setValue(Lorg/h2/value/Value;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/h2/schema/Constant;->value:Lorg/h2/value/Value;

    .line 62
    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/schema/Constant;->expression:Lorg/h2/expression/ValueExpression;

    return-void
.end method
