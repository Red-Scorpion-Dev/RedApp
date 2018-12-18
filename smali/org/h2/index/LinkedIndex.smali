.class public Lorg/h2/index/LinkedIndex;
.super Lorg/h2/index/BaseIndex;
.source "LinkedIndex.java"


# instance fields
.field private final link:Lorg/h2/table/TableLink;

.field private rowCount:J

.field private final targetTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/table/TableLink;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 6

    .line 38
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 39
    invoke-virtual/range {v0 .. v5}, Lorg/h2/index/LinkedIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 40
    iput-object p1, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    .line 41
    iget-object p1, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {p1}, Lorg/h2/table/TableLink;->getQualifiedTable()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    return-void
.end method

.method private addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V
    .locals 2

    .line 133
    invoke-virtual {p2}, Lorg/h2/table/Column;->getType()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {v0}, Lorg/h2/table/TableLink;->isOracle()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAST(? AS CHAR("

    .line 138
    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    const-string p2, "))"

    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_0
    const/16 p2, 0x3f

    .line 140
    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :goto_0
    return-void
.end method

.method private static isNull(Lorg/h2/value/Value;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 55
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    .line 60
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 61
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "INSERT INTO "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " VALUES("

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 64
    invoke-virtual {p2, v1}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    const-string v3, ", "

    .line 65
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v2, "DEFAULT"

    .line 67
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {v2}, Lorg/h2/index/LinkedIndex;->isNull(Lorg/h2/value/Value;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "NULL"

    .line 69
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x3f

    .line 71
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 72
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x29

    .line 75
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 76
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;

    .line 79
    iget-wide v0, p0, Lorg/h2/index/LinkedIndex;->rowCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/index/LinkedIndex;->rowCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p2, p1}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "LINKED"

    .line 164
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 9

    .line 87
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    new-instance v1, Lorg/h2/util/StatementBuilder;

    const-string v2, "SELECT * FROM "

    invoke-direct {v1, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const-string v3, " T"

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 90
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 91
    invoke-interface {p2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, " WHERE "

    .line 93
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->appendOnlyFirst(Ljava/lang/String;)V

    const-string v5, " AND "

    .line 94
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lorg/h2/index/LinkedIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v5, v3}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 97
    sget-object v6, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v4, v6, :cond_0

    const-string v4, " IS NULL"

    .line 98
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const-string v6, ">="

    .line 100
    invoke-virtual {v1, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 101
    invoke-direct {p0, v1, v5}, Lorg/h2/index/LinkedIndex;->addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V

    .line 102
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p3, :cond_5

    .line 106
    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v3

    if-ge p2, v3, :cond_5

    .line 107
    invoke-interface {p3, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, " WHERE "

    .line 109
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendOnlyFirst(Ljava/lang/String;)V

    const-string v4, " AND "

    .line 110
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lorg/h2/index/LinkedIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v4, p2}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 113
    sget-object v5, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v3, v5, :cond_3

    const-string v3, " IS NULL"

    .line 114
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    :cond_3
    const-string v5, "<="

    .line 116
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 117
    invoke-direct {p0, v1, v4}, Lorg/h2/index/LinkedIndex;->addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V

    .line 118
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 124
    :try_start_0
    iget-object p3, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {p3, p2, v0, v2}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;

    move-result-object v8

    .line 125
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v5

    .line 126
    new-instance p3, Lorg/h2/index/LinkedCursor;

    iget-object v4, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/h2/index/LinkedCursor;-><init>(Lorg/h2/table/TableLink;Ljava/sql/ResultSet;Lorg/h2/engine/Session;Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 128
    invoke-static {p2, p1}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "LINKED"

    .line 181
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 10
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
            ">;)D"
        }
    .end annotation

    move-object v9, p0

    .line 148
    iget-wide v0, v9, Lorg/h2/index/LinkedIndex;->rowCount:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/LinkedIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 261
    iget-wide v0, p0, Lorg/h2/index/LinkedIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lorg/h2/index/LinkedIndex;->rowCount:J

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 6

    .line 186
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 187
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 189
    :goto_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, "AND "

    .line 190
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lorg/h2/index/LinkedIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v3, v2}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 193
    invoke-virtual {p2, v2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    .line 194
    invoke-static {v4}, Lorg/h2/index/LinkedIndex;->isNull(Lorg/h2/value/Value;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, " IS NULL "

    .line 195
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const/16 v5, 0x3d

    .line 197
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 198
    invoke-direct {p0, v0, v3}, Lorg/h2/index/LinkedIndex;->addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V

    .line 199
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x20

    .line 200
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {v0, p2, p1, v1}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 206
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    .line 207
    iget-object v1, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {v1, p1, p2}, Lorg/h2/table/TableLink;->reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V

    .line 208
    iget-wide v1, p0, Lorg/h2/index/LinkedIndex;->rowCount:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/index/LinkedIndex;->rowCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 210
    invoke-static {p2, p1}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public update(Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 6

    .line 222
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    new-instance v1, Lorg/h2/util/StatementBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const-string v3, " SET "

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 225
    :goto_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v4

    const/16 v5, 0x3d

    if-ge v3, v4, :cond_1

    const-string v4, ", "

    .line 226
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Lorg/h2/index/LinkedIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v4, v3}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 228
    invoke-virtual {p2, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "DEFAULT"

    .line 230
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const/16 v5, 0x3f

    .line 232
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 233
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, " WHERE "

    .line 236
    invoke-virtual {v1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 237
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 238
    :goto_2
    invoke-virtual {p1}, Lorg/h2/result/Row;->getColumnCount()I

    move-result p2

    if-ge v2, p2, :cond_3

    .line 239
    iget-object p2, p0, Lorg/h2/index/LinkedIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p2, v2}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object p2

    const-string v3, " AND "

    .line 240
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 242
    invoke-virtual {p1, v2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    .line 243
    invoke-static {v3}, Lorg/h2/index/LinkedIndex;->isNull(Lorg/h2/value/Value;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p2, " IS NULL"

    .line 244
    invoke-virtual {v1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    .line 246
    :cond_2
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 247
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-direct {p0, v1, p2}, Lorg/h2/index/LinkedIndex;->addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 251
    :cond_3
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    :try_start_0
    iget-object p2, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 255
    invoke-static {p1, p2}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
