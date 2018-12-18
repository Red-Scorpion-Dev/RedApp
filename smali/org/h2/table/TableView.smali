.class public Lorg/h2/table/TableView;
.super Lorg/h2/table/Table;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/table/TableView$CacheKey;
    }
.end annotation


# static fields
.field private static final ROW_COUNT_APPROXIMATION:J = 0x64L


# instance fields
.field private columnTemplates:[Lorg/h2/table/Column;

.field private createException:Lorg/h2/message/DbException;

.field private index:Lorg/h2/index/ViewIndex;

.field private lastModificationCheck:J

.field private maxDataModificationId:J

.field private owner:Lorg/h2/engine/User;

.field private querySQL:Ljava/lang/String;

.field private recursive:Z

.field private recursiveResult:Lorg/h2/result/LocalResult;

.field private tableExpression:Z

.field private tables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private topQuery:Lorg/h2/command/dml/Query;

.field private viewQuery:Lorg/h2/command/dml/Query;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/schema/Schema;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;[",
            "Lorg/h2/table/Column;",
            "Lorg/h2/engine/Session;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 64
    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move v5, p8

    .line 65
    invoke-direct/range {v0 .. v5}, Lorg/h2/table/TableView;->init(Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    return-void
.end method

.method private addViewToTables()V
    .locals 2

    .line 507
    iget-object v0, p0, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    .line 508
    invoke-virtual {v1, p0}, Lorg/h2/table/Table;->addView(Lorg/h2/table/TableView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static clearIndexCaches(Lorg/h2/engine/Database;)V
    .locals 3

    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 429
    invoke-virtual {v2}, Lorg/h2/engine/Session;->clearViewIndexCache()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static compileViewQuery(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/command/dml/Query;
    .locals 2

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lorg/h2/engine/Session;->setParsingView(Z)V

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p0, v0}, Lorg/h2/engine/Session;->setParsingView(Z)V

    .line 109
    instance-of p0, v1, Lorg/h2/command/dml/Query;

    if-eqz p0, :cond_0

    .line 112
    check-cast v1, Lorg/h2/command/dml/Query;

    return-object v1

    .line 110
    :cond_0
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p1

    .line 107
    invoke-virtual {p0, v0}, Lorg/h2/engine/Session;->setParsingView(Z)V

    throw p1
.end method

.method public static createTempView(Lorg/h2/engine/Session;Lorg/h2/engine/User;Ljava/lang/String;Lorg/h2/command/dml/Query;Lorg/h2/command/dml/Query;)Lorg/h2/table/TableView;
    .locals 11

    .line 532
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v3

    .line 533
    invoke-virtual {p3}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v6

    .line 534
    new-instance v0, Lorg/h2/table/TableView;

    invoke-virtual {p3}, Lorg/h2/command/dml/Query;->getParameters()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object v5, p2

    move-object v9, p0

    invoke-direct/range {v2 .. v10}, Lorg/h2/table/TableView;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    .line 537
    iget-object p0, v0, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    if-nez p0, :cond_0

    .line 540
    invoke-direct {v0, p4}, Lorg/h2/table/TableView;->setTopQuery(Lorg/h2/command/dml/Query;)V

    .line 541
    invoke-direct {v0, p1}, Lorg/h2/table/TableView;->setOwner(Lorg/h2/engine/User;)V

    const/4 p0, 0x1

    .line 542
    invoke-virtual {v0, p0}, Lorg/h2/table/TableView;->setTemporary(Z)V

    return-object v0

    .line 538
    :cond_0
    iget-object p0, v0, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    throw p0
.end method

.method private getCreateSQL(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 307
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "CREATE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "OR REPLACE "

    .line 309
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "FORCE "

    .line 312
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    const-string p1, "VIEW "

    .line 314
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 315
    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 316
    iget-object p1, p0, Lorg/h2/table/TableView;->comment:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, " COMMENT "

    .line 317
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/table/TableView;->comment:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 319
    :cond_2
    iget-object p1, p0, Lorg/h2/table/TableView;->columns:[Lorg/h2/table/Column;

    const/16 p2, 0x29

    const/4 p3, 0x0

    const/16 v1, 0x28

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/h2/table/TableView;->columns:[Lorg/h2/table/Column;

    array-length p1, p1

    if-lez p1, :cond_4

    .line 320
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 321
    iget-object p1, p0, Lorg/h2/table/TableView;->columns:[Lorg/h2/table/Column;

    array-length v1, p1

    :goto_0
    if-ge p3, v1, :cond_3

    aget-object v2, p1, p3

    const-string v3, ", "

    .line 322
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    goto :goto_2

    .line 326
    :cond_4
    iget-object p1, p0, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    if-eqz p1, :cond_6

    .line 327
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 328
    iget-object p1, p0, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    array-length v1, p1

    :goto_1
    if-ge p3, v1, :cond_5

    aget-object v2, p1, p3

    const-string v3, ", "

    .line 329
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 332
    :cond_5
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_6
    :goto_2
    const-string p1, " AS\n"

    .line 334
    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getMaxParameterIndex(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;)I"
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Parameter;

    .line 577
    invoke-virtual {v1}, Lorg/h2/expression/Parameter;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private declared-synchronized init(Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;[",
            "Lorg/h2/table/Column;",
            "Lorg/h2/engine/Session;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iput-object p1, p0, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    .line 96
    iput-boolean p5, p0, Lorg/h2/table/TableView;->recursive:Z

    .line 97
    new-instance p3, Lorg/h2/index/ViewIndex;

    invoke-direct {p3, p0, p1, p2, p5}, Lorg/h2/index/ViewIndex;-><init>(Lorg/h2/table/TableView;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iput-object p3, p0, Lorg/h2/table/TableView;->index:Lorg/h2/index/ViewIndex;

    .line 98
    invoke-direct {p0, p4}, Lorg/h2/table/TableView;->initColumnsAndTables(Lorg/h2/engine/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 93
    monitor-exit p0

    throw p1
.end method

.method private initColumnsAndTables(Lorg/h2/engine/Session;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 154
    invoke-direct/range {p0 .. p0}, Lorg/h2/table/TableView;->removeViewFromTables()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 156
    :try_start_0
    iget-object v4, v1, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/h2/table/TableView;->compileViewQuery(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/command/dml/Query;

    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    .line 158
    invoke-virtual {v4}, Lorg/h2/command/dml/Query;->getTables()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v1, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v4}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v5

    .line 160
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 161
    invoke-virtual {v4}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_6

    .line 162
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/expression/Expression;

    .line 165
    iget-object v10, v1, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    const/4 v11, -0x1

    if-eqz v10, :cond_0

    iget-object v10, v1, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    array-length v10, v10

    if-le v10, v8, :cond_0

    .line 166
    iget-object v10, v1, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v10

    .line 167
    iget-object v12, v1, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    aget-object v12, v12, v8

    invoke-virtual {v12}, Lorg/h2/table/Column;->getType()I

    move-result v12

    goto :goto_1

    :cond_0
    move-object v10, v3

    const/4 v12, -0x1

    :goto_1
    if-nez v10, :cond_1

    .line 170
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v10

    :cond_1
    if-ne v12, v11, :cond_2

    .line 173
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getType()I

    move-result v12

    :cond_2
    move v15, v12

    .line 175
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v16

    .line 176
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getScale()I

    move-result v18

    .line 177
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v19

    .line 178
    new-instance v11, Lorg/h2/table/Column;

    move-object v13, v11

    move-object v14, v10

    invoke-direct/range {v13 .. v19}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 179
    invoke-virtual {v11, v1, v8}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 182
    instance-of v12, v9, Lorg/h2/expression/ExpressionColumn;

    if-eqz v12, :cond_3

    .line 183
    check-cast v9, Lorg/h2/expression/ExpressionColumn;

    goto :goto_2

    .line 184
    :cond_3
    instance-of v12, v9, Lorg/h2/expression/Alias;

    if-eqz v12, :cond_4

    .line 185
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v9

    .line 186
    instance-of v12, v9, Lorg/h2/expression/ExpressionColumn;

    if-eqz v12, :cond_4

    .line 187
    check-cast v9, Lorg/h2/expression/ExpressionColumn;

    goto :goto_2

    :cond_4
    move-object v9, v3

    :goto_2
    if-eqz v9, :cond_5

    .line 191
    invoke-virtual {v9}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v9

    invoke-virtual {v9, v0, v10}, Lorg/h2/table/Column;->getCheckConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 194
    invoke-virtual {v11, v0, v9}, Lorg/h2/table/Column;->addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    .line 197
    :cond_5
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 199
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/table/Column;

    .line 200
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 201
    iput-object v3, v1, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    .line 202
    iput-object v4, v1, Lorg/h2/table/TableView;->viewQuery:Lorg/h2/command/dml/Query;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/TableView;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 205
    iput-object v0, v1, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    .line 209
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    .line 210
    new-array v0, v2, [Lorg/h2/table/Column;

    .line 211
    iget-boolean v4, v1, Lorg/h2/table/TableView;->recursive:Z

    if-eqz v4, :cond_8

    iget-object v4, v1, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    if-eqz v4, :cond_8

    .line 212
    iget-object v0, v1, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/table/Column;

    .line 213
    :goto_3
    iget-object v4, v1, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 214
    iget-object v4, v1, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/h2/table/Column;->getClone()Lorg/h2/table/Column;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 216
    :cond_7
    iget-object v2, v1, Lorg/h2/table/TableView;->index:Lorg/h2/index/ViewIndex;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/h2/index/ViewIndex;->setRecursive(Z)V

    .line 217
    iput-object v3, v1, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    .line 220
    :cond_8
    :goto_4
    invoke-virtual {v1, v0}, Lorg/h2/table/TableView;->setColumns([Lorg/h2/table/Column;)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/TableView;->getId()I

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    invoke-direct/range {p0 .. p0}, Lorg/h2/table/TableView;->addViewToTables()V

    :cond_9
    return-void
.end method

.method private removeViewFromTables()V
    .locals 2

    .line 498
    iget-object v0, p0, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    .line 500
    invoke-virtual {v1, p0}, Lorg/h2/table/Table;->removeView(Lorg/h2/table/TableView;)V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private setOwner(Lorg/h2/engine/User;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lorg/h2/table/TableView;->owner:Lorg/h2/engine/User;

    return-void
.end method

.method private setTopQuery(Lorg/h2/command/dml/Query;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lorg/h2/table/TableView;->topQuery:Lorg/h2/command/dml/Query;

    return-void
.end method


# virtual methods
.method public addDependencies(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/DbObject;",
            ">;)V"
        }
    .end annotation

    .line 611
    invoke-super {p0, p1}, Lorg/h2/table/Table;->addDependencies(Ljava/util/HashSet;)V

    .line 612
    iget-object v0, p0, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    const-string v2, "VIEW"

    .line 614
    invoke-virtual {v1}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 615
    invoke-virtual {v1, p1}, Lorg/h2/table/Table;->addDependencies(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    const-string p1, "VIEW"

    .line 367
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "VIEW"

    .line 377
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "VIEW"

    .line 382
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/table/PlanItem;"
        }
    .end annotation

    move-object v8, p0

    .line 244
    new-instance v9, Lorg/h2/table/TableView$CacheKey;

    move-object/from16 v10, p2

    invoke-direct {v9, v10, p0}, Lorg/h2/table/TableView$CacheKey;-><init>([ILorg/h2/table/TableView;)V

    .line 245
    iget-object v0, v8, Lorg/h2/table/TableView;->topQuery:Lorg/h2/command/dml/Query;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object v11, p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->getViewIndexCache(Z)Ljava/util/Map;

    move-result-object v12

    .line 246
    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/ViewIndex;

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {v0}, Lorg/h2/index/ViewIndex;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v13, v0

    goto :goto_3

    .line 248
    :cond_2
    :goto_2
    new-instance v13, Lorg/h2/index/ViewIndex;

    iget-object v2, v8, Lorg/h2/table/TableView;->index:Lorg/h2/index/ViewIndex;

    move-object v0, v13

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/h2/index/ViewIndex;-><init>(Lorg/h2/table/TableView;Lorg/h2/index/ViewIndex;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V

    .line 249
    invoke-interface {v12, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :goto_3
    new-instance v7, Lorg/h2/table/PlanItem;

    invoke-direct {v7}, Lorg/h2/table/PlanItem;-><init>()V

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 252
    invoke-virtual/range {v0 .. v6}, Lorg/h2/index/ViewIndex;->getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D

    move-result-wide v0

    iput-wide v0, v7, Lorg/h2/table/PlanItem;->cost:D

    .line 253
    invoke-virtual {v7, v13}, Lorg/h2/table/PlanItem;->setIndex(Lorg/h2/index/Index;)V

    return-object v7
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 291
    invoke-virtual {p0, v0, v1}, Lorg/h2/table/TableView;->getCreateSQL(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQL(ZZ)Ljava/lang/String;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lorg/h2/table/TableView;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/h2/table/TableView;->getCreateSQL(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 285
    invoke-direct {p0, p1, v0, p2}, Lorg/h2/table/TableView;->getCreateSQL(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/table/TableView;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CASCADE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 5

    .line 475
    iget-object v0, p0, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_0

    return-wide v1

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableView;->viewQuery:Lorg/h2/command/dml/Query;

    if-nez v0, :cond_1

    return-wide v1

    .line 484
    :cond_1
    iget-object v0, p0, Lorg/h2/table/TableView;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationDataId()J

    move-result-wide v0

    .line 485
    iget-wide v2, p0, Lorg/h2/table/TableView;->lastModificationCheck:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-wide v2, p0, Lorg/h2/table/TableView;->maxDataModificationId:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 486
    iget-object v2, p0, Lorg/h2/table/TableView;->viewQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v2}, Lorg/h2/command/dml/Query;->getMaxDataModificationId()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/table/TableView;->maxDataModificationId:J

    .line 487
    iput-wide v0, p0, Lorg/h2/table/TableView;->lastModificationCheck:J

    .line 489
    :cond_2
    iget-wide v0, p0, Lorg/h2/table/TableView;->maxDataModificationId:J

    return-wide v0
.end method

.method public getOwner()Lorg/h2/engine/User;
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/h2/table/TableView;->owner:Lorg/h2/engine/User;

    return-object v0
.end method

.method public getParameterOffset(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;)I"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lorg/h2/table/TableView;->topQuery:Lorg/h2/command/dml/Query;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableView;->topQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/table/TableView;->getMaxParameterIndex(Ljava/util/ArrayList;)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    .line 569
    invoke-static {p1}, Lorg/h2/table/TableView;->getMaxParameterIndex(Ljava/util/ArrayList;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    return-object v0
.end method

.method public getRecursiveResult()Lorg/h2/result/LocalResult;
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/h2/table/TableView;->recursiveResult:Lorg/h2/result/LocalResult;

    return-object v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 0

    .line 392
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 435
    invoke-virtual {p0}, Lorg/h2/table/TableView;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    invoke-super {p0}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 447
    invoke-virtual/range {v0 .. v6}, Lorg/h2/table/TableView;->getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object p1

    return-object p1
.end method

.method public getScanIndex(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/index/Index;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/index/Index;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    if-nez v0, :cond_0

    .line 459
    invoke-virtual/range {p0 .. p6}, Lorg/h2/table/TableView;->getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object p1

    return-object p1

    .line 455
    :cond_0
    iget-object p1, p0, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const p2, 0x15ffd

    .line 456
    iget-object p3, p0, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    invoke-virtual {p0}, Lorg/h2/table/TableView;->getSQL()Ljava/lang/String;

    move-result-object p6

    aput-object p6, p4, p5

    const/4 p5, 0x1

    aput-object p1, p4, p5

    invoke-static {p2, p3, p4}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getTableType()Ljava/lang/String;
    .locals 1

    const-string v0, "VIEW"

    return-object v0
.end method

.method public getTopQuery()Lorg/h2/command/dml/Query;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/h2/table/TableView;->topQuery:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 2

    .line 584
    iget-boolean v0, p0, Lorg/h2/table/TableView;->recursive:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/table/TableView;->viewQuery:Lorg/h2/command/dml/Query;

    if-nez v0, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableView;->viewQuery:Lorg/h2/command/dml/Query;

    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->DETERMINISTIC_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInvalid()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQueryComparable()Z
    .locals 3

    .line 259
    invoke-super {p0}, Lorg/h2/table/Table;->isQueryComparable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/h2/table/TableView;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    .line 263
    invoke-virtual {v2}, Lorg/h2/table/Table;->isQueryComparable()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 267
    :cond_2
    iget-object v0, p0, Lorg/h2/table/TableView;->topQuery:Lorg/h2/command/dml/Query;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/table/TableView;->topQuery:Lorg/h2/command/dml/Query;

    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->QUERY_COMPARABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isTableExpression()Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Lorg/h2/table/TableView;->tableExpression:Z

    return v0
.end method

.method public isView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized recompile(Lorg/h2/engine/Session;ZZ)Lorg/h2/message/DbException;
    .locals 3

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/h2/table/TableView;->compileViewQuery(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/command/dml/Query;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    if-nez p2, :cond_0

    .line 130
    monitor-exit p0

    return-object v0

    .line 133
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/table/TableView;->getViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Lorg/h2/table/TableView;->initColumnsAndTables(Lorg/h2/engine/Session;)V

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/TableView;

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v1, p1, p2, v2}, Lorg/h2/table/TableView;->recompile(Lorg/h2/engine/Session;ZZ)Lorg/h2/message/DbException;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 142
    monitor-exit p0

    return-object v1

    :cond_3
    if-eqz p3, :cond_4

    .line 147
    :try_start_2
    iget-object p1, p0, Lorg/h2/table/TableView;->database:Lorg/h2/engine/Database;

    invoke-static {p1}, Lorg/h2/table/TableView;->clearIndexCaches(Lorg/h2/engine/Database;)V

    :cond_4
    if-eqz p2, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    .line 149
    :cond_5
    iget-object p1, p0, Lorg/h2/table/TableView;->createException:Lorg/h2/message/DbException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p1

    .line 126
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 413
    invoke-direct {p0}, Lorg/h2/table/TableView;->removeViewFromTables()V

    .line 414
    invoke-super {p0, p1}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 415
    iget-object v0, p0, Lorg/h2/table/TableView;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/table/TableView;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 416
    iput-object p1, p0, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    .line 417
    iput-object p1, p0, Lorg/h2/table/TableView;->index:Lorg/h2/index/ViewIndex;

    .line 418
    iget-object p1, p0, Lorg/h2/table/TableView;->database:Lorg/h2/engine/Database;

    invoke-static {p1}, Lorg/h2/table/TableView;->clearIndexCaches(Lorg/h2/engine/Database;)V

    .line 419
    invoke-virtual {p0}, Lorg/h2/table/TableView;->invalidate()V

    return-void
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "VIEW"

    .line 372
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public replace(Ljava/lang/String;[Ljava/lang/String;Lorg/h2/engine/Session;ZZ)V
    .locals 13

    move-object v6, p0

    move-object/from16 v7, p3

    .line 80
    iget-object v8, v6, Lorg/h2/table/TableView;->querySQL:Ljava/lang/String;

    .line 81
    iget-object v9, v6, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    .line 82
    iget-boolean v10, v6, Lorg/h2/table/TableView;->recursive:Z

    .line 83
    iget-object v3, v6, Lorg/h2/table/TableView;->columnTemplates:[Lorg/h2/table/Column;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/TableView;->init(Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    const/4 v11, 0x1

    move/from16 v0, p5

    .line 84
    invoke-virtual {p0, v7, v0, v11}, Lorg/h2/table/TableView;->recompile(Lorg/h2/engine/Session;ZZ)Lorg/h2/message/DbException;

    move-result-object v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v3, v9

    move-object/from16 v4, p3

    move v5, v10

    .line 86
    invoke-direct/range {v0 .. v5}, Lorg/h2/table/TableView;->init(Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v7, v11, v0}, Lorg/h2/table/TableView;->recompile(Lorg/h2/engine/Session;ZZ)Lorg/h2/message/DbException;

    .line 88
    throw v12
.end method

.method public setRecursiveResult(Lorg/h2/result/LocalResult;)V
    .locals 1

    .line 591
    iget-object v0, p0, Lorg/h2/table/TableView;->recursiveResult:Lorg/h2/result/LocalResult;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/h2/table/TableView;->recursiveResult:Lorg/h2/result/LocalResult;

    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    .line 594
    :cond_0
    iput-object p1, p0, Lorg/h2/table/TableView;->recursiveResult:Lorg/h2/result/LocalResult;

    return-void
.end method

.method public setTableExpression(Z)V
    .locals 0

    .line 602
    iput-boolean p1, p0, Lorg/h2/table/TableView;->tableExpression:Z

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "VIEW"

    .line 387
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
