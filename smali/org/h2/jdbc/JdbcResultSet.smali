.class public Lorg/h2/jdbc/JdbcResultSet;
.super Lorg/h2/message/TraceObject;
.source "JdbcResultSet.java"

# interfaces
.implements Ljava/sql/ResultSet;


# instance fields
.field private final closeStatement:Z

.field private columnCount:I

.field private columnLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private conn:Lorg/h2/jdbc/JdbcConnection;

.field private insertRow:[Lorg/h2/value/Value;

.field private patchedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private preparedStatement:Lorg/h2/jdbc/JdbcPreparedStatement;

.field private result:Lorg/h2/result/ResultInterface;

.field private final scrollable:Z

.field private stat:Lorg/h2/jdbc/JdbcStatement;

.field private final updatable:Z

.field private updateRow:[Lorg/h2/value/Value;

.field private wasNull:Z


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/result/ResultInterface;IZZZLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/jdbc/JdbcConnection;",
            "Lorg/h2/jdbc/JdbcPreparedStatement;",
            "Lorg/h2/result/ResultInterface;",
            "IZZZ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-direct/range {p0 .. p7}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/result/ResultInterface;IZZZ)V

    .line 109
    iput-object p8, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    .line 110
    iput-object p2, p0, Lorg/h2/jdbc/JdbcResultSet;->preparedStatement:Lorg/h2/jdbc/JdbcPreparedStatement;

    return-void
.end method

.method constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/result/ResultInterface;IZZZ)V
    .locals 2

    .line 92
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    .line 93
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, p4}, Lorg/h2/jdbc/JdbcResultSet;->setTrace(Lorg/h2/message/Trace;II)V

    .line 94
    iput-object p1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 95
    iput-object p2, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    .line 96
    iput-object p3, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    .line 97
    invoke-interface {p3}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result p1

    iput p1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    .line 98
    iput-boolean p5, p0, Lorg/h2/jdbc/JdbcResultSet;->closeStatement:Z

    .line 99
    iput-boolean p6, p0, Lorg/h2/jdbc/JdbcResultSet;->scrollable:Z

    .line 100
    iput-boolean p7, p0, Lorg/h2/jdbc/JdbcResultSet;->updatable:Z

    return-void
.end method

.method private checkColumnIndex(I)V
    .locals 1

    .line 3170
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 3171
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-gt p1, v0, :cond_0

    return-void

    .line 3172
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "columnIndex"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkOnValidRow()V
    .locals 2

    .line 3194
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7d0

    .line 3195
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private checkUpdatable()V
    .locals 1

    .line 3743
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 3744
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updatable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1601c

    .line 3745
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;
    .locals 2

    .line 3738
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 3739
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method private get(I)Lorg/h2/value/Value;
    .locals 2

    .line 3200
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->checkColumnIndex(I)V

    .line 3201
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkOnValidRow()V

    .line 3203
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 3204
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    goto :goto_0

    .line 3206
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    if-nez v0, :cond_1

    .line 3208
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 3211
    aget-object p1, v0, p1

    .line 3212
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/h2/jdbc/JdbcResultSet;->wasNull:Z

    return-object p1
.end method

.method private get(Ljava/lang/String;)Lorg/h2/value/Value;
    .locals 0

    .line 3217
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 3218
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method private getColumnIndex(Ljava/lang/String;)I
    .locals 6

    .line 3096
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-eqz p1, :cond_c

    .line 3100
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    const/4 v1, 0x3

    const v2, 0xa48a

    const/4 v3, 0x0

    if-lt v0, v1, :cond_5

    .line 3102
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 3103
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    invoke-static {v0}, Lorg/h2/util/New;->hashMap(I)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 3105
    :goto_0
    iget v4, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v1, v4, :cond_0

    .line 3106
    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v4, v1}, Lorg/h2/result/ResultInterface;->getAlias(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3107
    invoke-static {v0, v4, v1}, Lorg/h2/jdbc/JdbcResultSet;->mapColumn(Ljava/util/HashMap;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3109
    :cond_0
    :goto_1
    iget v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v3, v1, :cond_2

    .line 3110
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1, v3}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3112
    invoke-static {v1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3113
    invoke-static {v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->mapColumn(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 3114
    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v4, v3}, Lorg/h2/result/ResultInterface;->getTableName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3117
    invoke-static {v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->mapColumn(Ljava/util/HashMap;Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3122
    :cond_2
    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    .line 3123
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->preparedStatement:Lorg/h2/jdbc/JdbcPreparedStatement;

    if-eqz v0, :cond_3

    .line 3124
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->preparedStatement:Lorg/h2/jdbc/JdbcPreparedStatement;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCachedColumnLabelMap(Ljava/util/HashMap;)V

    .line 3127
    :cond_3
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 3131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 3129
    :cond_4
    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    const/4 v0, 0x0

    .line 3133
    :goto_2
    iget v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v0, v1, :cond_7

    .line 3134
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1, v0}, Lorg/h2/result/ResultInterface;->getAlias(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/16 v0, 0x2e

    .line 3138
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_9

    .line 3140
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 3141
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3142
    :goto_3
    iget v4, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v3, v4, :cond_b

    .line 3143
    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v4, v3}, Lorg/h2/result/ResultInterface;->getTableName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v4, v3}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    return v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3149
    :cond_9
    :goto_4
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v3, v0, :cond_b

    .line 3150
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0, v3}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v3, v3, 0x1

    return v3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3155
    :cond_b
    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_c
    const/4 p1, 0x0

    const-string v0, "columnLabel"

    .line 3098
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private getUpdatableRow()Lorg/h2/result/UpdatableRow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3088
    new-instance v0, Lorg/h2/result/UpdatableRow;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-direct {v0, v1, v2}, Lorg/h2/result/UpdatableRow;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/result/ResultInterface;)V

    .line 3089
    invoke-virtual {v0}, Lorg/h2/result/UpdatableRow;->isUpdatable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const v0, 0x1600f

    .line 3090
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private static mapColumn(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 3165
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private nextRow()Z
    .locals 2

    .line 3240
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3241
    iget-boolean v1, p0, Lorg/h2/jdbc/JdbcResultSet;->scrollable:Z

    if-nez v1, :cond_0

    .line 3242
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    :cond_0
    return v0
.end method

.method private patchCurrentRow([Lorg/h2/value/Value;)V
    .locals 6

    .line 3718
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    .line 3719
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3720
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 3721
    aget-object v4, p1, v3

    aget-object v5, v0, v3

    invoke-virtual {v4, v5, v1}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3726
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 3727
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    .line 3729
    :cond_2
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v2, :cond_3

    .line 3731
    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3733
    :cond_3
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private resetResult()V
    .locals 1

    .line 3248
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->scrollable:Z

    if-eqz v0, :cond_0

    .line 3251
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    return-void

    :cond_0
    const v0, 0x16010

    .line 3249
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private update(ILorg/h2/value/Value;)V
    .locals 1

    .line 3227
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    .line 3228
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->checkColumnIndex(I)V

    .line 3229
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    .line 3230
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    goto :goto_0

    .line 3232
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_1

    .line 3233
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    new-array v0, v0, [Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    .line 3235
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method private update(Ljava/lang/String;Lorg/h2/value/Value;)V
    .locals 0

    .line 3222
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 3223
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V

    return-void
.end method


# virtual methods
.method public absolute(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "absolute"

    int-to-long v1, p1

    .line 2818
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 2819
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    const/4 v0, 0x1

    if-gez p1, :cond_0

    .line 2821
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    goto :goto_0

    .line 2822
    :cond_0
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v1

    add-int/2addr v1, v0

    if-le p1, v1, :cond_1

    .line 2823
    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result p1

    add-int/2addr p1, v0

    .line 2825
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v1

    if-gt p1, v1, :cond_2

    .line 2826
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->resetResult()V

    .line 2828
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v1

    add-int/2addr v1, v0

    if-ge v1, p1, :cond_3

    .line 2829
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    goto :goto_1

    .line 2831
    :cond_3
    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result p1

    if-ltz p1, :cond_4

    .line 2832
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :catch_0
    move-exception p1

    .line 2834
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public afterLast()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "afterLast"

    .line 2755
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2756
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2757
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 2761
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public beforeFirst()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "beforeFirst"

    .line 2736
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2738
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2739
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->resetResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 2742
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public cancelRowUpdates()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "cancelRowUpdates"

    .line 3074
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 3075
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 3076
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3079
    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    return-void

    :cond_0
    const/16 v0, 0x7d0

    .line 3077
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3081
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method checkClosed()V
    .locals 1

    .line 3182
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_2

    .line 3185
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    if-eqz v0, :cond_0

    .line 3186
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 3188
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_1

    .line 3189
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x15f97

    .line 3183
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "clearWarnings"

    .line 264
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "close"

    .line 193
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->closeInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method closeInternal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 206
    :try_start_0
    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->close()V

    .line 207
    iget-boolean v2, p0, Lorg/h2/jdbc/JdbcResultSet;->closeStatement:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    invoke-virtual {v2}, Lorg/h2/jdbc/JdbcStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    iput v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    .line 212
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    .line 213
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    .line 214
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 215
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    .line 216
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 211
    iput v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    .line 212
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    .line 213
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    .line 214
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 215
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    .line 216
    iput-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "deleteRow"

    .line 3029
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 3030
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    .line 3031
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    .line 3034
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkOnValidRow()V

    .line 3035
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->getUpdatableRow()Lorg/h2/result/UpdatableRow;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/result/UpdatableRow;->deleteRow([Lorg/h2/value/Value;)V

    const/4 v0, 0x0

    .line 3036
    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    return-void

    :cond_0
    const v0, 0x15fad

    .line 3032
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3038
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "findColumn"

    .line 180
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getColumnIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public first()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "first"

    .line 2775
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2776
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2777
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-gez v0, :cond_0

    .line 2778
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v0

    return v0

    .line 2780
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->resetResult()V

    .line 2781
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2783
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 1172
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v1

    const-string v2, "Clob"

    .line 1173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArray("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1174
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 1175
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/jdbc/JdbcArray;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/jdbc/JdbcArray;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1177
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 1192
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v1

    const-string v2, "Clob"

    .line 1193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArray("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1195
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    .line 1196
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/jdbc/JdbcArray;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/jdbc/JdbcArray;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1198
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getAsciiStream"

    int-to-long v1, p1

    .line 1213
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 1214
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1215
    :cond_0
    invoke-static {p1}, Lorg/h2/util/IOUtils;->getInputStreamFromString(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1217
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getAsciiStream"

    .line 1232
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    .line 1234
    invoke-static {p1}, Lorg/h2/util/IOUtils;->getInputStreamFromString(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1236
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBigDecimal"

    int-to-long v1, p1

    .line 356
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 357
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 793
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBigDecimal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-ltz p2, :cond_2

    .line 799
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 800
    :cond_1
    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const-string p1, "scale"

    .line 797
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 802
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBigDecimal"

    .line 428
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 431
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 763
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBigDecimal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-ltz p2, :cond_2

    .line 770
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 771
    :cond_1
    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const-string p1, "scale"

    .line 768
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 773
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBinaryStream"

    int-to-long v1, p1

    .line 1094
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 1095
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1097
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBinaryStream"

    .line 1112
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1115
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 1016
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v1

    const-string v2, "Blob"

    .line 1017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBlob("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1019
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 1020
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/jdbc/JdbcBlob;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1022
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 1037
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v1

    const-string v2, "Blob"

    .line 1038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBlob("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1040
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    .line 1041
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/jdbc/JdbcBlob;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1043
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBoolean(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBoolean"

    int-to-long v1, p1

    .line 540
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 541
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 544
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBoolean"

    .line 559
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 563
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getByte(I)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getByte"

    int-to-long v1, p1

    .line 578
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 579
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getByte()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 581
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getByte"

    .line 596
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getByte()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 599
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBytes(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBytes"

    int-to-long v1, p1

    .line 1058
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 1059
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1061
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBytes"

    .line 1076
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1079
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getCharacterStream"

    int-to-long v1, p1

    .line 1251
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 1252
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1254
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getCharacterStream"

    .line 1269
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1272
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1131
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v1

    const-string v2, "Clob"

    .line 1132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClob("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1133
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 1134
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/jdbc/JdbcClob;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1136
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1151
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v1

    const-string v2, "Clob"

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClob("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1154
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    .line 1155
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/jdbc/JdbcClob;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1157
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConcurrency()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getConcurrency"

    .line 2532
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2534
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updatable:Z

    const/16 v1, 0x3ef

    if-nez v0, :cond_0

    return v1

    .line 2537
    :cond_0
    new-instance v0, Lorg/h2/result/UpdatableRow;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v3, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-direct {v0, v2, v3}, Lorg/h2/result/UpdatableRow;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/result/ResultInterface;)V

    .line 2538
    invoke-virtual {v0}, Lorg/h2/result/UpdatableRow;->isUpdatable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/16 v1, 0x3f0

    :cond_1
    return v1

    :catch_0
    move-exception v0

    .line 2541
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "cursorName"

    .line 2497
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getDate"

    int-to-long v1, p1

    .line 374
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 375
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 377
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 875
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calendar)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 878
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertDate(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 880
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getDate"

    .line 446
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 449
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 898
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calendar)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 903
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertDate(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 905
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getDouble"

    int-to-long v1, p1

    .line 722
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 723
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 725
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getDouble"

    .line 740
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 743
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getFetchDirection"

    .line 2553
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2554
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3e8

    return v0

    :catch_0
    move-exception v0

    .line 2557
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFetchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getFetchSize"

    .line 2569
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2571
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getFetchSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2573
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getFloat"

    int-to-long v1, p1

    .line 686
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 687
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getFloat()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 689
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getFloat"

    .line 704
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getFloat()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 707
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getHoldability"

    .line 3305
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 3307
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getHoldability()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3309
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getInt(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getInt"

    int-to-long v1, p1

    .line 320
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 321
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getInt"

    .line 338
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 341
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getLong(I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getLong"

    int-to-long v1, p1

    .line 650
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 651
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 653
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getLong"

    .line 668
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 671
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 137
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v7

    .line 138
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ResultSetMetaData"

    const-string v2, "getMetaData()"

    .line 139
    invoke-virtual {p0, v1, v0, v7, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 143
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getCatalog()Ljava/lang/String;

    move-result-object v5

    .line 144
    new-instance v0, Lorg/h2/jdbc/JdbcResultSetMetaData;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/jdbc/JdbcResultSetMetaData;-><init>(Lorg/h2/jdbc/JdbcResultSet;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/result/ResultInterface;Ljava/lang/String;Lorg/h2/message/Trace;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getNCharacterStream"

    int-to-long v1, p1

    .line 3559
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 3560
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3562
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getNCharacterStream"

    .line 3577
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 3578
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3580
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 3447
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v1

    const-string v2, "NClob"

    .line 3448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNClob("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 3449
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 3450
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/jdbc/JdbcClob;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3452
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 3467
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcResultSet;->getNextId(I)I

    move-result v1

    const-string v2, "NClob"

    .line 3468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNClob("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 3469
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    .line 3470
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/jdbc/JdbcClob;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3472
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getNString"

    int-to-long v1, p1

    .line 3523
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 3524
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3526
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getNString"

    .line 3541
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 3542
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3544
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getObject"

    int-to-long v1, p1

    .line 501
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 502
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 503
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->convertToDefaultObject(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 505
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "map"

    .line 833
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getObject"

    .line 521
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    .line 523
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->convertToDefaultObject(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 525
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "map"

    .line 843
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "ref"

    .line 851
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "ref"

    .line 859
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRow()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getRow"

    .line 2509
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2511
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    .line 2512
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 2517
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "rowId"

    .line 3261
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "rowId"

    .line 3271
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "SQLXML"

    .line 3482
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "SQLXML"

    .line 3491
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getShort(I)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getShort"

    int-to-long v1, p1

    .line 614
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 615
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getShort()S

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 617
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getShort"

    .line 632
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getShort()S

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 635
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getStatement"

    .line 230
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 232
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->closeStatement:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getString"

    int-to-long v1, p1

    .line 284
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 285
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getString"

    .line 302
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTime"

    int-to-long v1, p1

    .line 392
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 393
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTime()Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 922
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calendar)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 925
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertTime(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 927
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTime"

    .line 464
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTime()Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 467
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 945
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calendar)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 950
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertTime(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 952
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTimestamp"

    int-to-long v1, p1

    .line 410
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 411
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 413
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 970
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimestamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calendar)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 973
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 974
    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertTimestamp(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 976
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTimestamp"

    .line 482
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 485
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 993
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimestamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calendar)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 998
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    .line 999
    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertTimestamp(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1001
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getType"

    .line 2639
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2640
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2641
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    if-nez v0, :cond_0

    const/16 v0, 0x3eb

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    iget v0, v0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 2643
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "url"

    .line 1281
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "url"

    .line 1289
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "unicodeStream"

    .line 813
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "unicodeStream"

    .line 823
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getWarnings"

    .line 250
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public insertRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "insertRow"

    .line 2970
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2971
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    .line 2972
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    .line 2975
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->getUpdatableRow()Lorg/h2/result/UpdatableRow;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    invoke-virtual {v0, v1}, Lorg/h2/result/UpdatableRow;->insertRow([Lorg/h2/value/Value;)V

    const/4 v0, 0x0

    .line 2976
    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    return-void

    :cond_0
    const v0, 0x15fad

    .line 2973
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2978
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isAfterLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isAfterLast"

    .line 2679
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2680
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2681
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    .line 2682
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 2685
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isBeforeFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isBeforeFirst"

    .line 2658
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2660
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    .line 2661
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 2664
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isClosed"

    .line 3321
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 3322
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 3324
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isFirst"

    .line 2699
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2701
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-nez v0, :cond_0

    .line 2702
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 2704
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isLast()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isLast"

    .line 2718
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2719
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2720
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 2721
    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 2723
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3679
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public last()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "last"

    .line 2796
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2797
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    const/4 v0, -0x1

    .line 2798
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->absolute(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2800
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public moveToCurrentRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "moveToCurrentRow"

    .line 2908
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2909
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    const/4 v0, 0x0

    .line 2910
    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2912
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public moveToInsertRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "moveToInsertRow"

    .line 2892
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2893
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    .line 2894
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    new-array v0, v0, [Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2896
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public next()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "next"

    .line 121
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 123
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public previous()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "previous"

    .line 2875
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2876
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    const/4 v0, -0x1

    .line 2877
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->relative(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2879
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public refreshRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "refreshRow"

    .line 3052
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 3054
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    .line 3057
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkOnValidRow()V

    .line 3058
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->getUpdatableRow()Lorg/h2/result/UpdatableRow;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/result/UpdatableRow;->readRow([Lorg/h2/value/Value;)[Lorg/h2/value/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->patchCurrentRow([Lorg/h2/value/Value;)V

    const/4 v0, 0x0

    .line 3059
    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    return-void

    :cond_0
    const/16 v0, 0x7d0

    .line 3055
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3061
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public relative(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "relative"

    int-to-long v1, p1

    .line 2851
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 2852
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2853
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2856
    :cond_0
    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result p1

    if-le v0, p1, :cond_1

    .line 2857
    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 2859
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->absolute(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2861
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "rowDeleted"

    .line 2954
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 2957
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "rowInserted"

    .line 2939
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 2942
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "rowUpdated"

    .line 2924
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 2927
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setFetchDirection(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "setFetchDirection"

    int-to-long v1, p1

    .line 2621
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "setFetchDirection"

    .line 2624
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setFetchSize"

    int-to-long v1, p1

    .line 2589
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 2590
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-ltz p1, :cond_3

    if-lez p1, :cond_1

    .line 2594
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    if-eqz v0, :cond_2

    .line 2595
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->getMaxRows()I

    move-result v0

    if-lez v0, :cond_2

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "rows"

    .line 2597
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 2601
    :cond_1
    sget p1, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    .line 2603
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->setFetchSize(I)V

    return-void

    :cond_3
    const-string v0, "rows"

    .line 2592
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2605
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3665
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    .line 3668
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public updateArray(ILjava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "setArray"

    .line 2479
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "setArray"

    .line 2487
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1856
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 1843
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1871
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAsciiStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1874
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 1875
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-static {p2}, Lorg/h2/util/IOUtils;->getAsciiReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1876
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1878
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1906
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 1893
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1921
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAsciiStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1924
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 1925
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-static {p2}, Lorg/h2/util/IOUtils;->getAsciiReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1926
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1928
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1642
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBigDecimal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcResultSet;->quoteBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1645
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1648
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1663
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBigDecimal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcResultSet;->quoteBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1667
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1670
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1956
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 1943
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1971
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBinaryStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1974
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 1975
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1976
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1978
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1992
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 2006
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2021
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBinaryStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2024
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2025
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2026
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2028
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 2239
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateBlob(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2254
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBlob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2257
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2258
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2259
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2261
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2275
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBlob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2278
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-nez p2, :cond_1

    .line 2281
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    .line 2283
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2285
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2287
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 2326
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2341
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBlob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "L);"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2344
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2345
    iget-object p3, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-wide/16 v0, -0x1

    invoke-virtual {p3, p2, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2346
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2348
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2301
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBlob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2304
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-nez p2, :cond_1

    .line 2307
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    .line 2309
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2311
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2313
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBoolean(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1336
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBoolean("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1339
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1341
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1356
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBoolean("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1359
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1361
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateByte(IB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1375
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateByte("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1378
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1380
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1394
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateByte("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1397
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1399
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBytes(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1413
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBytes("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1416
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1418
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1432
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBytes("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1435
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1437
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 2079
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 2066
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2044
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCharacterStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2047
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2048
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2049
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2051
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 2106
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 2093
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2121
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCharacterStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2124
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2125
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2126
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2128
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 2387
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateClob(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2402
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2405
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2406
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2407
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2409
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2362
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2365
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-nez p2, :cond_1

    .line 2368
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    .line 2370
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2372
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2374
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 2448
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2463
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2466
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 2467
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2468
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2470
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2423
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2426
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-nez p2, :cond_1

    .line 2429
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    .line 2431
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 2433
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2435
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1724
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1727
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1729
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1743
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1746
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1748
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDouble(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1603
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDouble("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "d);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1606
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1608
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1622
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDouble("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "d);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1625
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1627
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateFloat(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1565
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFloat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "f);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1568
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1570
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1584
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFloat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "f);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1587
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1589
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateInt(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1489
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1492
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1494
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1508
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1511
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1513
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateLong(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1527
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1530
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1532
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1546
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1549
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1551
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 3594
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3609
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNCharacterStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 3612
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 3613
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 3614
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3616
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 3630
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3645
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNCharacterStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 3648
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 3649
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 3650
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3652
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 3385
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3399
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "NClob"

    .line 3373
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 3411
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3425
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "NClob"

    .line 3433
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3338
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 3341
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3344
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3358
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 3361
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3364
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNull(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "updateNull"

    int-to-long v1, p1

    .line 1303
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;J)V

    .line 1304
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, v0}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1306
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "updateNull"

    .line 1319
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, v0}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1322
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2186
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateObject("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2189
    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcResultSet;->convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2191
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2144
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateObject("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ");"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2147
    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcResultSet;->convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2149
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2205
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateObject("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2208
    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcResultSet;->convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2210
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2167
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateObject("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ");"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 2170
    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcResultSet;->convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2172
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "ref"

    .line 2219
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "ref"

    .line 2227
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRow()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "updateRow"

    .line 2992
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 2993
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    .line 2994
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_4

    .line 2997
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkOnValidRow()V

    .line 2998
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    if-eqz v0, :cond_3

    .line 2999
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->getUpdatableRow()Lorg/h2/result/UpdatableRow;

    move-result-object v0

    .line 3000
    iget v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    new-array v1, v1, [Lorg/h2/value/Value;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3001
    :goto_0
    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 3002
    invoke-direct {p0, v4}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    .line 3004
    :cond_0
    iget-object v3, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    invoke-virtual {v0, v1, v3}, Lorg/h2/result/UpdatableRow;->updateRow([Lorg/h2/value/Value;[Lorg/h2/value/Value;)V

    .line 3005
    :goto_1
    iget-object v3, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 3006
    iget-object v3, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 3007
    iget-object v3, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    aget-object v4, v1, v2

    aput-object v4, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3010
    :cond_2
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    invoke-virtual {v0, v1}, Lorg/h2/result/UpdatableRow;->readRow([Lorg/h2/value/Value;)[Lorg/h2/value/Value;

    move-result-object v0

    .line 3011
    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->patchCurrentRow([Lorg/h2/value/Value;)V

    const/4 v0, 0x0

    .line 3012
    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    :cond_3
    return-void

    :cond_4
    const v0, 0x15fad

    .line 2995
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3015
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "rowId"

    .line 3282
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "rowId"

    .line 3293
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "SQLXML"

    .line 3500
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "SQLXML"

    .line 3509
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateShort(IS)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1451
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShort("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", (short) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1454
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1456
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1470
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShort("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", (short) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    .line 1473
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1475
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1684
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1687
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1690
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1704
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1707
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1710
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1762
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1765
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1767
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1781
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1784
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1786
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1801
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTimestamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1804
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1807
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1822
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTimestamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcResultSet;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1825
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1828
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "wasNull"

    .line 160
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->debugCodeCall(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 162
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->wasNull:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
