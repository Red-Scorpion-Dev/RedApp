.class public Lorg/h2/command/dml/Replace;
.super Lorg/h2/command/Prepared;
.source "Replace.java"


# instance fields
.field private columns:[Lorg/h2/table/Column;

.field private keys:[Lorg/h2/table/Column;

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private query:Lorg/h2/command/dml/Query;

.field private table:Lorg/h2/table/Table;

.field private update:Lorg/h2/command/Prepared;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    .line 38
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private replace(Lorg/h2/result/Row;)V
    .locals 6

    .line 137
    invoke-direct {p0, p1}, Lorg/h2/command/dml/Replace;->update(Lorg/h2/result/Row;)I

    move-result v0

    const/16 v1, 0x5bd1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iget-object v3, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, p1}, Lorg/h2/table/Table;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 141
    iget-object v3, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p1}, Lorg/h2/table/Table;->fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 143
    iget-object v3, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, v2, v0}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 144
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, p1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 145
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    invoke-virtual {v2, v3, v0, p1}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 146
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, v5, p1, v0}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 151
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v1

    .line 156
    array-length v2, v1

    iget-object v3, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    array-length v3, v3

    if-gt v2, v3, :cond_0

    .line 157
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 158
    aget-object v2, v1, v0

    iget-object v3, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    aget-object v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    throw p1

    :cond_1
    if-ne v0, v2, :cond_3

    :cond_2
    :goto_1
    return-void

    .line 172
    :cond_3
    iget-object p1, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private update(Lorg/h2/result/Row;)I
    .locals 5

    .line 179
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->update:Lorg/h2/command/Prepared;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->update:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    .line 183
    :goto_0
    iget-object v3, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 184
    iget-object v3, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    aget-object v3, v3, v2

    .line 185
    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    .line 186
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    .line 187
    invoke-virtual {v4, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 190
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    aget-object v2, v2, v1

    .line 191
    invoke-virtual {v2}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 195
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v2, v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    .line 196
    invoke-virtual {v2, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const p1, 0x15fe1

    .line 193
    invoke-virtual {v2}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 198
    :cond_3
    iget-object p1, p0, Lorg/h2/command/dml/Replace;->update:Lorg/h2/command/Prepared;

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->update()I

    move-result p1

    return p1
.end method


# virtual methods
.method public addRow([Lorg/h2/expression/Expression;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 11

    .line 203
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "REPLACE INTO "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 205
    iget-object v1, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    const-string v7, ", "

    .line 206
    invoke-virtual {v0, v7}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v6}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 209
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    const/16 v3, 0xa

    .line 210
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 211
    iget-object v3, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "VALUES "

    .line 212
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 214
    iget-object v3, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/h2/expression/Expression;

    add-int/lit8 v7, v5, 0x1

    if-lez v5, :cond_1

    const-string v5, ", "

    .line 216
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 218
    :cond_1
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 219
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 220
    array-length v5, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    aget-object v9, v6, v8

    const-string v10, ", "

    .line 221
    invoke-virtual {v0, v10}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v9, :cond_2

    const-string v9, "DEFAULT"

    .line 223
    invoke-virtual {v0, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    .line 225
    :cond_2
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 228
    :cond_3
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move v5, v7

    goto :goto_1

    .line 231
    :cond_4
    iget-object v1, p0, Lorg/h2/command/dml/Replace;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 233
    :cond_5
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 10

    .line 238
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/expression/Expression;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 241
    new-array v0, v1, [Lorg/h2/table/Column;

    iput-object v0, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    .line 246
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x520a

    if-lez v0, :cond_5

    .line 247
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/h2/expression/Expression;

    .line 248
    array-length v4, v3

    iget-object v5, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v5, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    .line 251
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 252
    aget-object v5, v3, v4

    if-eqz v5, :cond_3

    .line 254
    iget-object v6, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v5

    aput-object v5, v3, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 249
    :cond_4
    invoke-static {v2}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 259
    :cond_5
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->prepare()V

    .line 260
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    iget-object v3, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v3, v3

    if-ne v0, v3, :cond_f

    .line 264
    :cond_6
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    if-nez v0, :cond_8

    .line 265
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getPrimaryKey()Lorg/h2/index/Index;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 269
    invoke-interface {v0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    goto :goto_2

    :cond_7
    const v0, 0x15fc9

    const-string v1, "PRIMARY KEY"

    .line 267
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 273
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_c

    aget-object v4, v0, v3

    .line 275
    iget-object v5, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_a

    aget-object v8, v5, v7

    .line 276
    invoke-virtual {v8}, Lorg/h2/table/Column;->getColumnId()I

    move-result v8

    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v9

    if-ne v8, v9, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_b

    return-void

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 285
    :cond_c
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v0, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const-string v3, " SET "

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 287
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_d

    aget-object v5, v2, v4

    const-string v6, ", "

    .line 288
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    const-string v2, " WHERE "

    .line 291
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 292
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 293
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    array-length v3, v2

    :goto_7
    if-ge v1, v3, :cond_e

    aget-object v4, v2, v1

    const-string v5, " AND "

    .line 294
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v4}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 297
    :cond_e
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Replace;->update:Lorg/h2/command/Prepared;

    return-void

    .line 261
    :cond_f
    invoke-static {v2}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setColumns([Lorg/h2/table/Column;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    return-void
.end method

.method public setCommand(Lorg/h2/command/Command;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lorg/h2/command/Prepared;->setCommand(Lorg/h2/command/Command;)V

    .line 49
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->query:Lorg/h2/command/dml/Query;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->setCommand(Lorg/h2/command/Command;)V

    :cond_0
    return-void
.end method

.method public setKeys([Lorg/h2/table/Column;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/h2/command/dml/Replace;->keys:[Lorg/h2/table/Column;

    return-void
.end method

.method public setQuery(Lorg/h2/command/dml/Query;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/h2/command/dml/Replace;->query:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setTable(Lorg/h2/table/Table;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    return-void
.end method

.method public update()I
    .locals 12

    .line 82
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 83
    iget-object v0, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Replace;->setCurrentRowNumber(I)V

    .line 85
    iget-object v1, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 87
    iget-object v1, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    add-int/lit8 v4, v2, 0x1

    .line 88
    invoke-virtual {p0, v4}, Lorg/h2/command/dml/Replace;->setCurrentRowNumber(I)V

    .line 89
    iget-object v5, p0, Lorg/h2/command/dml/Replace;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/h2/expression/Expression;

    .line 90
    iget-object v5, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v5

    .line 91
    iget-object v6, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    .line 92
    iget-object v8, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    aget-object v8, v8, v7

    .line 93
    invoke-virtual {v8}, Lorg/h2/table/Column;->getColumnId()I

    move-result v9

    .line 94
    aget-object v10, v2, v7

    if-eqz v10, :cond_0

    .line 98
    :try_start_0
    iget-object v11, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v10, v11}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v8

    .line 99
    invoke-virtual {v5, v9, v8}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 101
    invoke-static {v2}, Lorg/h2/command/dml/Replace;->getSQL([Lorg/h2/expression/Expression;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/h2/command/dml/Replace;->setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 105
    :cond_1
    invoke-direct {p0, v5}, Lorg/h2/command/dml/Replace;->replace(Lorg/h2/result/Row;)V

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lorg/h2/command/dml/Replace;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    .line 112
    iget-object v2, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, v5, v0}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    const/4 v3, 0x0

    .line 113
    :goto_3
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 115
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    .line 116
    iget-object v5, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v5

    .line 117
    invoke-virtual {p0, v3}, Lorg/h2/command/dml/Replace;->setCurrentRowNumber(I)V

    const/4 v6, 0x0

    .line 118
    :goto_4
    iget-object v7, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 119
    iget-object v7, p0, Lorg/h2/command/dml/Replace;->columns:[Lorg/h2/table/Column;

    aget-object v7, v7, v6

    .line 120
    invoke-virtual {v7}, Lorg/h2/table/Column;->getColumnId()I

    move-result v8

    .line 122
    :try_start_1
    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v7

    .line 123
    invoke-virtual {v5, v8, v7}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 125
    invoke-static {v2}, Lorg/h2/command/dml/Replace;->getSQL([Lorg/h2/value/Value;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/h2/command/dml/Replace;->setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 128
    :cond_3
    invoke-direct {p0, v5}, Lorg/h2/command/dml/Replace;->replace(Lorg/h2/result/Row;)V

    goto :goto_3

    .line 130
    :cond_4
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    .line 131
    iget-object v1, p0, Lorg/h2/command/dml/Replace;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/dml/Replace;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v4, v0}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    :cond_5
    return v3
.end method
