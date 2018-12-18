.class public Lorg/h2/jdbc/JdbcArray;
.super Lorg/h2/message/TraceObject;
.source "JdbcArray.java"

# interfaces
.implements Ljava/sql/Array;


# instance fields
.field private final conn:Lorg/h2/jdbc/JdbcConnection;

.field private value:Lorg/h2/value/Value;


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    .line 32
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1, p3}, Lorg/h2/jdbc/JdbcArray;->setTrace(Lorg/h2/message/Trace;II)V

    .line 33
    iput-object p1, p0, Lorg/h2/jdbc/JdbcArray;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 34
    iput-object p2, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    return-void
.end method

.method private checkClosed()V
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/h2/jdbc/JdbcArray;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 255
    iget-object v0, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15f97

    .line 256
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private get()[Ljava/lang/Object;
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private get(JI)[Ljava/lang/Object;
    .locals 6

    .line 265
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object v0

    if-ltz p3, :cond_1

    .line 266
    array-length v1, v0

    if-gt p3, v1, :cond_1

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 270
    array-length v3, v0

    int-to-long v3, v3

    cmp-long v5, p1, v3

    if-gtz v5, :cond_0

    .line 274
    new-array v3, p3, [Ljava/lang/Object;

    sub-long/2addr p1, v1

    long-to-int p1, p1

    const/4 p2, 0x0

    .line 275
    invoke-static {v0, p1, v3, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 271
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index (1.."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 267
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "count (1.."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private static getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;
    .locals 8

    .line 243
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v1, "INDEX"

    const/4 v2, 0x0

    const/4 v3, -0x5

    .line 244
    invoke-virtual {v0, v1, v3, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v1, "VALUE"

    .line 246
    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const/4 v1, 0x0

    .line 247
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    const/4 v3, 0x2

    .line 248
    new-array v3, v3, [Ljava/lang/Object;

    int-to-long v4, v1

    add-long/2addr v4, p1

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    aget-object v4, p0, v1

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public free()V
    .locals 1

    const-string v0, "free"

    .line 238
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getArray"

    .line 46
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCodeCall(Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    .line 48
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(JI)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 85
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCode(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcArray;->get(JI)[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(JILjava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
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

    .line 107
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/jdbc/JdbcArray;->quoteMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCode(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    .line 109
    invoke-static {p4}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcArray;->get(JI)[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcArray;->quoteMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCode(Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V

    .line 66
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    .line 67
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBaseType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBaseType"

    .line 125
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCodeCall(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getBaseTypeName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBaseTypeName"

    .line 142
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCodeCall(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    const-string v0, "NULL"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getResultSet"

    .line 160
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCodeCall(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    .line 162
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/h2/jdbc/JdbcArray;->getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSet(JI)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 200
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResultSet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCode(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcArray;->get(JI)[Ljava/lang/Object;

    move-result-object p3

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    invoke-static {p3, p1, p2}, Lorg/h2/jdbc/JdbcArray;->getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getResultSet(JILjava/util/Map;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 224
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResultSet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/jdbc/JdbcArray;->quoteMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCode(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    .line 226
    invoke-static {p4}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcArray;->get(JI)[Ljava/lang/Object;

    move-result-object p3

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    invoke-static {p3, p1, p2}, Lorg/h2/jdbc/JdbcArray;->getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getResultSet(Ljava/util/Map;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 178
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResultSet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcArray;->quoteMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcArray;->debugCode(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    .line 180
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V

    .line 181
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/h2/jdbc/JdbcArray;->getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcArray;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcArray;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
