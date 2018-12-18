.class public Lorg/h2/command/ddl/SetComment;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SetComment.java"


# instance fields
.field private column:Z

.field private columnName:Ljava/lang/String;

.field private expr:Lorg/h2/expression/Expression;

.field private objectName:Ljava/lang/String;

.field private objectType:I

.field private schemaName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public setColumn(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/h2/command/ddl/SetComment;->column:Z

    return-void
.end method

.method public setColumnName(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/h2/command/ddl/SetComment;->columnName:Ljava/lang/String;

    return-void
.end method

.method public setCommentExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/h2/command/ddl/SetComment;->expr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    return-void
.end method

.method public setObjectType(I)V
    .locals 0

    .line 137
    iput p1, p0, Lorg/h2/command/ddl/SetComment;->objectType:I

    return-void
.end method

.method public setSchemaName(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 6

    .line 37
    iget-object v0, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 38
    iget-object v0, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 42
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 43
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    .line 45
    :cond_0
    iget v2, p0, Lorg/h2/command/ddl/SetComment;->objectType:I

    const/4 v3, 0x0

    const v4, 0xc350

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 84
    :pswitch_1
    iput-object v3, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->findUserDataType(Ljava/lang/String;)Lorg/h2/engine/UserDataType;

    move-result-object v3

    const v4, 0x16007

    goto/16 :goto_0

    .line 47
    :pswitch_2
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/h2/schema/Schema;->getConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;

    move-result-object v3

    goto/16 :goto_0

    .line 65
    :pswitch_3
    iput-object v3, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v3

    const v4, 0x15fdf

    goto :goto_0

    .line 53
    :pswitch_4
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object v3

    const v4, 0x15fdd

    goto :goto_0

    .line 60
    :pswitch_5
    iput-object v3, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->findRole(Ljava/lang/String;)Lorg/h2/engine/Role;

    move-result-object v3

    const v4, 0x15fd6

    goto :goto_0

    .line 50
    :pswitch_6
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/h2/schema/Schema;->getConstraint(Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v3

    goto :goto_0

    .line 76
    :pswitch_7
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/h2/schema/Schema;->findTrigger(Ljava/lang/String;)Lorg/h2/schema/TriggerObject;

    move-result-object v3

    const v4, 0x15fba

    goto :goto_0

    .line 70
    :pswitch_8
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/h2/schema/Schema;->getSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v3

    goto :goto_0

    .line 80
    :pswitch_9
    iput-object v3, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v3

    goto :goto_0

    .line 57
    :pswitch_a
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/h2/schema/Schema;->getIndex(Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v3

    goto :goto_0

    .line 73
    :pswitch_b
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    iget-object v5, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/h2/schema/Schema;->getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_7

    .line 93
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->expr:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v4, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-boolean v4, p0, Lorg/h2/command/ddl/SetComment;->column:Z

    if-eqz v4, :cond_1

    .line 95
    move-object v4, v3

    check-cast v4, Lorg/h2/table/Table;

    .line 96
    iget-object v5, p0, Lorg/h2/command/ddl/SetComment;->columnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/h2/table/Column;->setComment(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-interface {v3, v2}, Lorg/h2/engine/DbObject;->setComment(Ljava/lang/String;)V

    .line 100
    :goto_1
    iget-boolean v4, p0, Lorg/h2/command/ddl/SetComment;->column:Z

    if-nez v4, :cond_6

    iget v4, p0, Lorg/h2/command/ddl/SetComment;->objectType:I

    if-eqz v4, :cond_6

    iget v4, p0, Lorg/h2/command/ddl/SetComment;->objectType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget v4, p0, Lorg/h2/command/ddl/SetComment;->objectType:I

    if-eq v4, v1, :cond_6

    iget v1, p0, Lorg/h2/command/ddl/SetComment;->objectType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v0, v3}, Lorg/h2/engine/Database;->findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_3

    .line 111
    :cond_3
    invoke-virtual {p0}, Lorg/h2/command/ddl/SetComment;->getObjectId()I

    move-result v1

    .line 112
    new-instance v4, Lorg/h2/engine/Comment;

    invoke-direct {v4, v0, v1, v3}, Lorg/h2/engine/Comment;-><init>(Lorg/h2/engine/Database;ILorg/h2/engine/DbObject;)V

    .line 113
    invoke-virtual {v4, v2}, Lorg/h2/engine/Comment;->setCommentText(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v4}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    .line 118
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_3

    .line 120
    :cond_5
    invoke-virtual {v1, v2}, Lorg/h2/engine/Comment;->setCommentText(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_3

    .line 104
    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/h2/command/ddl/SetComment;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_3
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_7
    iget-object v0, p0, Lorg/h2/command/ddl/SetComment;->objectName:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
