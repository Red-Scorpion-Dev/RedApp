.class public Lorg/h2/expression/Operation;
.super Lorg/h2/expression/Expression;
.source "Operation.java"


# static fields
.field public static final CONCAT:I = 0x0

.field public static final DIVIDE:I = 0x4

.field public static final MINUS:I = 0x2

.field public static final MODULUS:I = 0x6

.field public static final MULTIPLY:I = 0x3

.field public static final NEGATE:I = 0x5

.field public static final PLUS:I = 0x1


# instance fields
.field private convertRight:Z

.field private dataType:I

.field private left:Lorg/h2/expression/Expression;

.field private opType:I

.field private right:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lorg/h2/expression/Operation;->convertRight:Z

    .line 67
    iput p1, p0, Lorg/h2/expression/Operation;->opType:I

    .line 68
    iput-object p2, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    .line 69
    iput-object p3, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    return-void
.end method

.method private getOperationToken()Ljava/lang/String;
    .locals 2

    .line 88
    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/expression/Operation;->opType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "%"

    return-object v0

    :pswitch_1
    const-string v0, "-"

    return-object v0

    :pswitch_2
    const-string v0, "/"

    return-object v0

    :pswitch_3
    const-string v0, "*"

    return-object v0

    :pswitch_4
    const-string v0, "-"

    return-object v0

    :pswitch_5
    const-string v0, "+"

    return-object v0

    :pswitch_6
    const-string v0, "||"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private swap()V
    .locals 2

    .line 332
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    .line 333
    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    iput-object v1, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    .line 334
    iput-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getDisplaySize()I
    .locals 4

    .line 365
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    .line 366
    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0

    .line 374
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getPrecision()J
    .locals 4

    .line 352
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    .line 353
    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 360
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 75
    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/h2/expression/Operation;->getOperationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
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
.end method

.method public getScale()I
    .locals 2

    .line 379
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getScale()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 347
    iget v0, p0, Lorg/h2/expression/Operation;->dataType:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 4

    .line 110
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    iget v1, p0, Lorg/h2/expression/Operation;->dataType:I

    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    .line 116
    iget-boolean v2, p0, Lorg/h2/expression/Operation;->convertRight:Z

    if-eqz v2, :cond_1

    .line 117
    iget v2, p0, Lorg/h2/expression/Operation;->dataType:I

    invoke-virtual {v1, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    .line 120
    :cond_1
    :goto_0
    iget v2, p0, Lorg/h2/expression/Operation;->opType:I

    packed-switch v2, :pswitch_data_0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 162
    :pswitch_0
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_3

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, p1, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 163
    :cond_3
    :goto_1
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 122
    :pswitch_1
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object v0

    :goto_2
    return-object v0

    .line 157
    :pswitch_2
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_6

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, p1, :cond_5

    goto :goto_3

    .line 160
    :cond_5
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 158
    :cond_6
    :goto_3
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 152
    :pswitch_3
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_8

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, p1, :cond_7

    goto :goto_4

    .line 155
    :cond_7
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 153
    :cond_8
    :goto_4
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 147
    :pswitch_4
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_a

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, p1, :cond_9

    goto :goto_5

    .line 150
    :cond_9
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 148
    :cond_a
    :goto_5
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 142
    :pswitch_5
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_c

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, p1, :cond_b

    goto :goto_6

    .line 145
    :cond_b
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->add(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 143
    :cond_c
    :goto_6
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 124
    :pswitch_6
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    .line 125
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v2, :cond_e

    .line 126
    iget-boolean p1, p1, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    if-eqz p1, :cond_d

    .line 127
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_d
    return-object v1

    .line 130
    :cond_e
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v2, :cond_10

    .line 131
    iget-boolean p1, p1, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    if-eqz p1, :cond_f

    .line 132
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_f
    return-object v0

    .line 136
    :cond_10
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 174
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 181
    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    .line 182
    iget v2, v0, Lorg/h2/expression/Operation;->opType:I

    const/16 v3, 0xd

    const/4 v4, -0x1

    const/4 v5, 0x6

    packed-switch v2, :pswitch_data_0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/h2/expression/Operation;->opType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_4

    .line 184
    :pswitch_0
    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    iput v2, v0, Lorg/h2/expression/Operation;->dataType:I

    .line 185
    iget v2, v0, Lorg/h2/expression/Operation;->dataType:I

    if-ne v2, v4, :cond_19

    .line 186
    iput v5, v0, Lorg/h2/expression/Operation;->dataType:I

    goto/16 :goto_4

    .line 201
    :pswitch_1
    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    .line 202
    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    .line 203
    iget-object v6, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getType()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    if-ne v2, v4, :cond_3

    if-ne v6, v4, :cond_3

    .line 208
    :cond_1
    iget v2, v0, Lorg/h2/expression/Operation;->opType:I

    if-ne v2, v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->allowPlusForStringConcat:Z

    if-eqz v2, :cond_2

    .line 210
    iput v3, v0, Lorg/h2/expression/Operation;->dataType:I

    .line 211
    iput v8, v0, Lorg/h2/expression/Operation;->opType:I

    goto/16 :goto_4

    .line 213
    :cond_2
    iput v5, v0, Lorg/h2/expression/Operation;->dataType:I

    goto/16 :goto_4

    :cond_3
    const/16 v3, 0xa

    const/16 v4, 0xb

    const/16 v9, 0x9

    if-eq v2, v3, :cond_5

    if-eq v2, v4, :cond_5

    if-eq v2, v9, :cond_5

    if-eq v6, v3, :cond_5

    if-eq v6, v4, :cond_5

    if-ne v6, v9, :cond_4

    goto :goto_0

    .line 315
    :cond_4
    invoke-static {v2, v6}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v2

    iput v2, v0, Lorg/h2/expression/Operation;->dataType:I

    .line 316
    iget v2, v0, Lorg/h2/expression/Operation;->dataType:I

    invoke-static {v2}, Lorg/h2/value/DataType;->isStringType(I)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->allowPlusForStringConcat:Z

    if-eqz v2, :cond_19

    .line 318
    iput v8, v0, Lorg/h2/expression/Operation;->opType:I

    goto/16 :goto_4

    .line 218
    :cond_5
    :goto_0
    iget v10, v0, Lorg/h2/expression/Operation;->opType:I

    const v11, 0x15180

    const/16 v12, 0x8

    const/4 v13, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-ne v10, v7, :cond_b

    .line 219
    invoke-static {v2, v6}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v3

    if-eq v6, v3, :cond_6

    .line 221
    invoke-direct/range {p0 .. p0}, Lorg/h2/expression/Operation;->swap()V

    move/from16 v16, v6

    move v6, v2

    move/from16 v2, v16

    :cond_6
    if-ne v2, v14, :cond_7

    .line 228
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const-string v3, "DATEADD"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    const-string v3, "DAY"

    .line 229
    invoke-static {v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 230
    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 231
    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v15, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 232
    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    .line 233
    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    :cond_7
    if-eq v2, v5, :cond_a

    if-eq v2, v12, :cond_a

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    goto :goto_1

    :cond_8
    if-ne v2, v9, :cond_9

    if-ne v6, v9, :cond_9

    .line 245
    iput v9, v0, Lorg/h2/expression/Operation;->dataType:I

    return-object v0

    :cond_9
    if-ne v2, v9, :cond_18

    .line 248
    iput v4, v0, Lorg/h2/expression/Operation;->dataType:I

    return-object v0

    .line 236
    :cond_a
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const-string v3, "DATEADD"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    const-string v3, "SECOND"

    .line 237
    invoke-static {v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 238
    new-instance v3, Lorg/h2/expression/Operation;

    invoke-static {v11}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v4

    iget-object v5, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-direct {v3, v13, v4, v5}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    .line 240
    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 241
    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v15, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 242
    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    .line 243
    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    .line 251
    :cond_b
    iget v10, v0, Lorg/h2/expression/Operation;->opType:I

    if-ne v10, v15, :cond_15

    const/4 v10, 0x0

    const/4 v13, 0x5

    if-eq v2, v3, :cond_c

    if-ne v2, v4, :cond_d

    :cond_c
    if-ne v6, v14, :cond_d

    .line 254
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const-string v3, "DATEADD"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    const-string v3, "DAY"

    .line 255
    invoke-static {v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 256
    new-instance v3, Lorg/h2/expression/Operation;

    iget-object v4, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-direct {v3, v13, v4, v10}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    .line 257
    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v3, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    .line 258
    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 259
    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v15, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 260
    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    .line 261
    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    :cond_d
    if-eq v2, v3, :cond_e

    if-ne v2, v4, :cond_f

    :cond_e
    if-eq v6, v5, :cond_14

    if-eq v6, v12, :cond_14

    const/4 v5, 0x7

    if-ne v6, v5, :cond_f

    goto :goto_3

    :cond_f
    if-eq v2, v3, :cond_11

    if-ne v2, v4, :cond_10

    goto :goto_2

    :cond_10
    if-ne v2, v9, :cond_18

    if-ne v6, v9, :cond_18

    .line 289
    iput v9, v0, Lorg/h2/expression/Operation;->dataType:I

    return-object v0

    :cond_11
    :goto_2
    if-ne v6, v9, :cond_12

    .line 277
    iput v4, v0, Lorg/h2/expression/Operation;->dataType:I

    return-object v0

    :cond_12
    if-eq v6, v3, :cond_13

    if-ne v6, v4, :cond_18

    .line 281
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const-string v3, "DATEDIFF"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    const-string v3, "DAY"

    .line 282
    invoke-static {v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 283
    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 284
    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v15, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 285
    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    .line 286
    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    .line 265
    :cond_14
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const-string v3, "DATEADD"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    const-string v3, "SECOND"

    .line 266
    invoke-static {v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 267
    new-instance v3, Lorg/h2/expression/Operation;

    invoke-static {v11}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v4

    iget-object v5, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    .line 269
    new-instance v3, Lorg/h2/expression/Operation;

    iget-object v4, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-direct {v3, v13, v4, v10}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    .line 270
    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v3, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    .line 271
    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 272
    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v15, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 273
    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    .line 274
    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    .line 292
    :cond_15
    iget v1, v0, Lorg/h2/expression/Operation;->opType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_17

    if-ne v2, v9, :cond_16

    .line 294
    iput v9, v0, Lorg/h2/expression/Operation;->dataType:I

    .line 295
    iput-boolean v8, v0, Lorg/h2/expression/Operation;->convertRight:Z

    return-object v0

    :cond_16
    if-ne v6, v9, :cond_18

    .line 298
    invoke-direct/range {p0 .. p0}, Lorg/h2/expression/Operation;->swap()V

    .line 299
    iput v9, v0, Lorg/h2/expression/Operation;->dataType:I

    .line 300
    iput-boolean v8, v0, Lorg/h2/expression/Operation;->convertRight:Z

    return-object v0

    .line 303
    :cond_17
    iget v1, v0, Lorg/h2/expression/Operation;->opType:I

    if-ne v1, v14, :cond_18

    if-ne v2, v9, :cond_18

    .line 305
    iput v9, v0, Lorg/h2/expression/Operation;->dataType:I

    .line 306
    iput-boolean v8, v0, Lorg/h2/expression/Operation;->convertRight:Z

    return-object v0

    .line 310
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v2

    iget-object v2, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lorg/h2/expression/Operation;->getOperationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v2

    iget-object v2, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    .line 190
    :pswitch_2
    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    .line 191
    iput v3, v0, Lorg/h2/expression/Operation;->dataType:I

    .line 192
    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 193
    invoke-virtual/range {p0 .. p1}, Lorg/h2/expression/Operation;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    return-object v1

    .line 325
    :cond_19
    :goto_4
    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 326
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lorg/h2/expression/Operation;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    return-object v1

    :cond_1b
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 340
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    .line 388
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method
