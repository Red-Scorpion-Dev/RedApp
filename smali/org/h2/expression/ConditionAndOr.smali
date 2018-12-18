.class public Lorg/h2/expression/ConditionAndOr;
.super Lorg/h2/expression/Condition;
.source "ConditionAndOr.java"


# static fields
.field public static final AND:I = 0x0

.field public static final OR:I = 0x1


# instance fields
.field private final andOrType:I

.field private left:Lorg/h2/expression/Expression;

.field private right:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    .line 36
    iput p1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    .line 37
    iput-object p2, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 38
    iput-object p3, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 39
    sget-boolean p1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 40
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public addFilterConditions(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 251
    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    .line 253
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/expression/Condition;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    :goto_0
    return-void
.end method

.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 1

    .line 62
    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    .line 64
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    :cond_0
    return-void
.end method

.method public getCost()I
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getDisplaySize()I
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/h2/expression/Condition;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getExpression(Z)Lorg/h2/expression/Expression;
    .locals 0

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    :goto_0
    return-object p1
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/h2/expression/ConditionNot;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-direct {v0, v1}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    .line 78
    new-instance p1, Lorg/h2/expression/ConditionNot;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-direct {p1, v1}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    .line 80
    :cond_1
    iget v1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 81
    :goto_0
    new-instance v2, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v2, v1, v0, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v2
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    .line 20
    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 47
    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    packed-switch v0, :pswitch_data_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "andOrType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 52
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getScale()I
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/h2/expression/Condition;->getScale()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/h2/expression/Condition;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 88
    iget v1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    packed-switch v1, :pswitch_data_0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 106
    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 110
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 113
    :cond_1
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_2

    return-object v0

    .line 116
    :cond_2
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 119
    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 93
    :cond_4
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 94
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p1

    .line 97
    :cond_5
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_6

    return-object v0

    .line 100
    :cond_6
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_7

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 103
    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 262
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 4

    .line 130
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 131
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 132
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 135
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    iput-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 136
    iput-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 144
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->optimizeTwoEquals:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Comparison;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Comparison;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/Comparison;

    .line 149
    iget-object v3, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    check-cast v3, Lorg/h2/expression/Comparison;

    .line 150
    invoke-virtual {v0, p1, v3, v2}, Lorg/h2/expression/Comparison;->getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;Z)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    .line 154
    new-instance v0, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v0, v1, p0, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v0

    .line 161
    :cond_1
    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->optimizeOr:Z

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Comparison;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Comparison;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/Comparison;

    .line 167
    iget-object v2, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    check-cast v2, Lorg/h2/expression/Comparison;

    .line 168
    invoke-virtual {v0, p1, v2, v1}, Lorg/h2/expression/Comparison;->getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;Z)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 171
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 173
    :cond_2
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ConditionIn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Comparison;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/ConditionIn;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    check-cast v1, Lorg/h2/expression/Comparison;

    invoke-virtual {v0, v1}, Lorg/h2/expression/ConditionIn;->getAdditional(Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 178
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 180
    :cond_3
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ConditionIn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Comparison;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/ConditionIn;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    check-cast v1, Lorg/h2/expression/Comparison;

    invoke-virtual {v0, v1}, Lorg/h2/expression/ConditionIn;->getAdditional(Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 185
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 187
    :cond_4
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ConditionInConstantSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Comparison;

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/ConditionInConstantSet;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    check-cast v1, Lorg/h2/expression/Comparison;

    invoke-virtual {v0, p1, v1}, Lorg/h2/expression/ConditionInConstantSet;->getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 194
    :cond_5
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ConditionInConstantSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Comparison;

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/ConditionInConstantSet;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    check-cast v1, Lorg/h2/expression/Comparison;

    invoke-virtual {v0, p1, v1}, Lorg/h2/expression/ConditionInConstantSet;->getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 199
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 204
    :cond_6
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 205
    :goto_0
    iget-object v2, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    :cond_8
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    return-object p0

    :cond_9
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 210
    invoke-virtual {p0, p1}, Lorg/h2/expression/ConditionAndOr;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 212
    :cond_a
    iget p1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    packed-switch p1, :pswitch_data_0

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_1

    :pswitch_0
    if-eqz v0, :cond_c

    .line 230
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 231
    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 232
    :cond_b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 233
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    return-object p1

    :cond_c
    if-eqz v1, :cond_11

    .line 236
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 237
    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 238
    :cond_d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 239
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    return-object p1

    :pswitch_1
    if-eqz v0, :cond_f

    .line 215
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 216
    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 217
    :cond_e
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 218
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    return-object p1

    :cond_f
    if-eqz v1, :cond_11

    .line 221
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 222
    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 223
    :cond_10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 224
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    return-object p1

    :cond_11
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 268
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    .line 274
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
