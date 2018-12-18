.class public Lorg/h2/expression/JavaAggregate;
.super Lorg/h2/expression/Expression;
.source "JavaAggregate.java"


# instance fields
.field private argTypes:[I

.field private final args:[Lorg/h2/expression/Expression;

.field private dataType:I

.field private lastGroupRowId:I

.field private final select:Lorg/h2/command/dml/Select;

.field private final userAggregate:Lorg/h2/engine/UserAggregate;

.field private userConnection:Ljava/sql/Connection;


# direct methods
.method public constructor <init>(Lorg/h2/engine/UserAggregate;[Lorg/h2/expression/Expression;Lorg/h2/command/dml/Select;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/h2/expression/JavaAggregate;->userAggregate:Lorg/h2/engine/UserAggregate;

    .line 41
    iput-object p2, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    .line 42
    iput-object p3, p0, Lorg/h2/expression/JavaAggregate;->select:Lorg/h2/command/dml/Select;

    return-void
.end method

.method private getInstance()Lorg/h2/api/Aggregate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->userAggregate:Lorg/h2/engine/UserAggregate;

    invoke-virtual {v0}, Lorg/h2/engine/UserAggregate;->getInstance()Lorg/h2/api/Aggregate;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lorg/h2/expression/JavaAggregate;->userConnection:Ljava/sql/Connection;

    invoke-interface {v0, v1}, Lorg/h2/api/Aggregate;->init(Ljava/sql/Connection;)V

    return-object v0
.end method


# virtual methods
.method public getCost()I
    .locals 5

    .line 48
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 49
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getCost()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getDisplaySize()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 6

    .line 71
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 72
    iget-object v1, p0, Lorg/h2/expression/JavaAggregate;->userAggregate:Lorg/h2/engine/UserAggregate;

    invoke-virtual {v1}, Lorg/h2/engine/UserAggregate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 73
    iget-object v1, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 74
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 77
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/h2/expression/JavaAggregate;->dataType:I

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    iget v0, v0, Lorg/h2/value/DataType;->defaultScale:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/h2/expression/JavaAggregate;->dataType:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/Aggregate;

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0}, Lorg/h2/expression/JavaAggregate;->getInstance()Lorg/h2/api/Aggregate;

    move-result-object v0

    .line 158
    :cond_0
    invoke-interface {v0}, Lorg/h2/api/Aggregate;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 162
    :cond_1
    iget v1, p0, Lorg/h2/expression/JavaAggregate;->dataType:I

    invoke-static {p1, v0, v1}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 164
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const p1, 0x15fc6

    .line 151
    invoke-virtual {p0}, Lorg/h2/expression/JavaAggregate;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    .line 87
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->userAggregate:Lorg/h2/engine/UserAggregate;

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 100
    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 4

    .line 109
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 110
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 5

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/expression/JavaAggregate;->userConnection:Ljava/sql/Connection;

    .line 117
    iget-object v1, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length v1, v1

    .line 118
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/h2/expression/JavaAggregate;->argTypes:[I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 120
    iget-object v2, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v0

    .line 121
    iget-object v3, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v4

    aput-object v4, v3, v0

    .line 122
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    .line 123
    iget-object v3, p0, Lorg/h2/expression/JavaAggregate;->argTypes:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/h2/expression/JavaAggregate;->getInstance()Lorg/h2/api/Aggregate;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->argTypes:[I

    invoke-interface {p1, v0}, Lorg/h2/api/Aggregate;->getInternalType([I)I

    move-result p1

    iput p1, p0, Lorg/h2/expression/JavaAggregate;->dataType:I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 129
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 4

    .line 136
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 137
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 6

    .line 170
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/JavaAggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v1}, Lorg/h2/command/dml/Select;->getCurrentGroupRowId()I

    move-result v1

    .line 177
    iget v2, p0, Lorg/h2/expression/JavaAggregate;->lastGroupRowId:I

    if-ne v2, v1, :cond_1

    return-void

    .line 181
    :cond_1
    iput v1, p0, Lorg/h2/expression/JavaAggregate;->lastGroupRowId:I

    .line 183
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/api/Aggregate;

    if-nez v1, :cond_2

    .line 186
    :try_start_0
    invoke-direct {p0}, Lorg/h2/expression/JavaAggregate;->getInstance()Lorg/h2/api/Aggregate;

    move-result-object v1

    .line 187
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 189
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 191
    iget-object v4, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length v4, v4

    :goto_1
    if-ge v3, v4, :cond_3

    .line 192
    iget-object v2, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    .line 193
    iget-object v5, p0, Lorg/h2/expression/JavaAggregate;->argTypes:[I

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 195
    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    :cond_3
    iget-object p1, p0, Lorg/h2/expression/JavaAggregate;->args:[Lorg/h2/expression/Expression;

    array-length p1, p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    .line 198
    invoke-interface {v1, v2}, Lorg/h2/api/Aggregate;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 200
    :cond_4
    invoke-interface {v1, v0}, Lorg/h2/api/Aggregate;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    .line 203
    :goto_3
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
