.class public Lorg/h2/server/pg/PgServer;
.super Ljava/lang/Object;
.source "PgServer.java"

# interfaces
.implements Lorg/h2/server/Service;


# static fields
.field public static final DEFAULT_PORT:I = 0x153b

.field public static final PG_TYPE_BOOL:I = 0x10

.field public static final PG_TYPE_BPCHAR:I = 0x412

.field public static final PG_TYPE_BYTEA:I = 0x11

.field public static final PG_TYPE_DATE:I = 0x43a

.field public static final PG_TYPE_FLOAT4:I = 0x2bc

.field public static final PG_TYPE_FLOAT8:I = 0x2bd

.field public static final PG_TYPE_INT2:I = 0x15

.field public static final PG_TYPE_INT2VECTOR:I = 0x16

.field public static final PG_TYPE_INT4:I = 0x17

.field public static final PG_TYPE_INT8:I = 0x14

.field public static final PG_TYPE_NUMERIC:I = 0x6a4

.field public static final PG_TYPE_OID:I = 0x1a

.field public static final PG_TYPE_TEXT:I = 0x19

.field public static final PG_TYPE_TEXTARRAY:I = 0x3f1

.field public static final PG_TYPE_TIME:I = 0x43b

.field public static final PG_TYPE_TIMESTAMP_NO_TMZONE:I = 0x45a

.field public static final PG_TYPE_UNKNOWN:I = 0x2c1

.field public static final PG_TYPE_VARCHAR:I = 0x413


# instance fields
.field private allowOthers:Z

.field private baseDir:Ljava/lang/String;

.field private ifExists:Z

.field private isDaemon:Z

.field private key:Ljava/lang/String;

.field private keyDatabase:Ljava/lang/String;

.field private final pid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private port:I

.field private portIsSet:Z

.field private final running:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/h2/server/pg/PgServerThread;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private stop:Z

.field private trace:Z

.field private final typeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/pg/PgServer;->typeSet:Ljava/util/HashSet;

    const/16 v0, 0x153b

    .line 77
    iput v0, p0, Lorg/h2/server/pg/PgServer;->port:I

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/pg/PgServer;->running:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/h2/server/pg/PgServer;->pid:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private allow(Ljava/net/Socket;)Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServer;->allowOthers:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 169
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/h2/util/NetUtils;->isLocalAddress(Ljava/net/Socket;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p0, p1}, Lorg/h2/server/pg/PgServer;->traceError(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static convertType(I)I
    .locals 1

    const/4 v0, -0x5

    if-eq p0, v0, :cond_4

    const/4 v0, -0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/16 p0, 0x2c1

    return p0

    :pswitch_0
    const/16 p0, 0x19

    return p0

    :pswitch_1
    const/16 p0, 0x1a

    return p0

    :pswitch_2
    const/16 p0, 0x3f1

    return p0

    :pswitch_3
    const/16 p0, 0x45a

    return p0

    :pswitch_4
    const/16 p0, 0x43b

    return p0

    :pswitch_5
    const/16 p0, 0x43a

    return p0

    :pswitch_6
    const/16 p0, 0x2bd

    return p0

    :pswitch_7
    const/16 p0, 0x2bc

    return p0

    :pswitch_8
    const/16 p0, 0x15

    return p0

    :pswitch_9
    const/16 p0, 0x17

    return p0

    :pswitch_a
    const/16 p0, 0x6a4

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x413

    return p0

    :cond_2
    const/16 p0, 0x412

    return p0

    :cond_3
    const/16 p0, 0x11

    return p0

    :cond_4
    const/16 p0, 0x14

    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7d3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static formatType(Ljava/sql/Connection;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "select typname from pg_catalog.pg_type where oid = ? and typtypmod = ?"

    .line 493
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 495
    invoke-interface {p0, v0, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p1, 0x2

    .line 496
    invoke-interface {p0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 497
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    .line 498
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    invoke-interface {p0, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentSchema(Ljava/sql/Connection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 346
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    const-string v0, "call schema()"

    invoke-interface {p0, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0

    .line 347
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    const/4 v0, 0x1

    .line 348
    invoke-interface {p0, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentTid(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static getEncodingName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-ge p0, v0, :cond_0

    const-string p0, "UTF8"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "LATIN1"

    return-object p0

    :cond_2
    const-string p0, "UTF8"

    return-object p0

    :cond_3
    const-string p0, "SQL_ASCII"

    return-object p0
.end method

.method public static getIndexColumn(Ljava/sql/Connection;ILjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 316
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "select column_name from information_schema.indexes where id=? and ordinal_position=?"

    .line 326
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    .line 329
    invoke-interface {p0, p3, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p1, 0x2

    .line 330
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 331
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    .line 332
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    invoke-interface {p0, p3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0

    :cond_2
    :goto_0
    const-string p2, "select sql from information_schema.indexes where id=?"

    .line 317
    invoke-interface {p0, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    .line 319
    invoke-interface {p0, p3, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 320
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    .line 321
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 322
    invoke-interface {p0, p3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getOid(Ljava/sql/Connection;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "\""

    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "select oid from pg_class where relName = ?"

    .line 363
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    .line 365
    invoke-interface {p0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 366
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    .line 367
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 370
    :cond_1
    invoke-interface {p0, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static getPgExpr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStartTime()Ljava/sql/Timestamp;
    .locals 3

    .line 411
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method public static getUserById(Ljava/sql/Connection;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "SELECT NAME FROM INFORMATION_SCHEMA.USERS WHERE ID=?"

    .line 423
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 425
    invoke-interface {p0, v0, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 426
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    .line 427
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    invoke-interface {p0, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostgreSQL 8.1.4  server protocol using H2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasDatabasePrivilege(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static hasTablePrivilege(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p1

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 584
    iget-object p1, p0, Lorg/h2/server/pg/PgServer;->keyDatabase:Ljava/lang/String;

    return-object p1

    :cond_1
    const/16 p1, 0x6d60

    .line 586
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method checkType(I)V
    .locals 2

    .line 565
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->typeSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAllowOthers()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServer;->allowOthers:Z

    return v0
.end method

.method getBaseDir()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->baseDir:Ljava/lang/String;

    return-object v0
.end method

.method getIfExists()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServer;->ifExists:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "H2 PG Server"

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 161
    iget v0, p0, Lorg/h2/server/pg/PgServer;->port:I

    return v0
.end method

.method getThread(I)Lorg/h2/server/pg/PgServerThread;
    .locals 3

    .line 271
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->running:Ljava/util/Set;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/pg/PgServerThread;

    .line 272
    invoke-virtual {v1}, Lorg/h2/server/pg/PgServerThread;->getProcessId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getTrace()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServer;->trace:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "PG"

    return-object v0
.end method

.method getTypeSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->typeSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pg://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/server/pg/PgServer;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs init([Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x153b

    .line 93
    iput v0, p0, Lorg/h2/server/pg/PgServer;->port:I

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 94
    array-length v1, p1

    if-ge v0, v1, :cond_7

    .line 95
    aget-object v1, p1, v0

    const-string v2, "-trace"

    .line 96
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 97
    iput-boolean v3, p0, Lorg/h2/server/pg/PgServer;->trace:Z

    goto :goto_1

    :cond_0
    const-string v2, "-pgPort"

    .line 98
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 99
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/h2/server/pg/PgServer;->port:I

    .line 100
    iput-boolean v3, p0, Lorg/h2/server/pg/PgServer;->portIsSet:Z

    goto :goto_1

    :cond_1
    const-string v2, "-baseDir"

    .line 101
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 102
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/pg/PgServer;->baseDir:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "-pgAllowOthers"

    .line 103
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    iput-boolean v3, p0, Lorg/h2/server/pg/PgServer;->allowOthers:Z

    goto :goto_1

    :cond_3
    const-string v2, "-pgDaemon"

    .line 105
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    iput-boolean v3, p0, Lorg/h2/server/pg/PgServer;->isDaemon:Z

    goto :goto_1

    :cond_4
    const-string v2, "-ifExists"

    .line 107
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    iput-boolean v3, p0, Lorg/h2/server/pg/PgServer;->ifExists:Z

    goto :goto_1

    :cond_5
    const-string v2, "-key"

    .line 109
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 110
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/pg/PgServer;->key:Ljava/lang/String;

    add-int/2addr v0, v3

    .line 111
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/pg/PgServer;->keyDatabase:Ljava/lang/String;

    :cond_6
    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    .line 114
    :cond_7
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    return-void
.end method

.method public isDaemon()Z
    .locals 1

    .line 591
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServer;->isDaemon:Z

    return v0
.end method

.method public isRunning(Z)Z
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 253
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    invoke-static {v0, v1}, Lorg/h2/util/NetUtils;->createLoopbackSocket(IZ)Ljava/net/Socket;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 258
    invoke-virtual {p0, v0}, Lorg/h2/server/pg/PgServer;->traceError(Ljava/lang/Exception;)V

    :cond_1
    return v1
.end method

.method public listen()V
    .locals 5

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/server/pg/PgServer;->stop:Z

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 197
    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServer;->allow(Ljava/net/Socket;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Connection not allowed"

    .line 198
    invoke-virtual {p0, v2}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 201
    :cond_0
    new-instance v2, Lorg/h2/server/pg/PgServerThread;

    invoke-direct {v2, v1, p0}, Lorg/h2/server/pg/PgServerThread;-><init>(Ljava/net/Socket;Lorg/h2/server/pg/PgServer;)V

    .line 202
    iget-object v1, p0, Lorg/h2/server/pg/PgServer;->running:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lorg/h2/server/pg/PgServer;->pid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/h2/server/pg/PgServerThread;->setProcessId(I)V

    .line 204
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 205
    iget-boolean v3, p0, Lorg/h2/server/pg/PgServer;->isDaemon:Z

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 206
    invoke-virtual {v2, v1}, Lorg/h2/server/pg/PgServerThread;->setThread(Ljava/lang/Thread;)V

    .line 207
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 211
    iget-boolean v1, p0, Lorg/h2/server/pg/PgServer;->stop:Z

    if-nez v1, :cond_1

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method declared-synchronized remove(Lorg/h2/server/pg/PgServerThread;)V
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->running:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 139
    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lorg/h2/server/pg/PgServer;->stop:Z

    .line 180
    :try_start_0
    iget v1, p0, Lorg/h2/server/pg/PgServer;->port:I

    invoke-static {v1, v0}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 182
    iget-boolean v2, p0, Lorg/h2/server/pg/PgServer;->portIsSet:Z

    if-nez v2, :cond_0

    .line 183
    invoke-static {v0, v0}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;

    .line 188
    :goto_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/h2/server/pg/PgServer;->port:I

    return-void

    .line 185
    :cond_0
    throw v1
.end method

.method public stop()V
    .locals 4

    .line 220
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServer;->stop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lorg/h2/server/pg/PgServer;->stop:Z

    .line 222
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lorg/h2/server/pg/PgServer;->serverSocket:Ljava/net/ServerSocket;

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServer;->running:Ljava/util/Set;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/pg/PgServerThread;

    .line 234
    invoke-virtual {v1}, Lorg/h2/server/pg/PgServerThread;->close()V

    .line 236
    :try_start_1
    invoke-virtual {v1}, Lorg/h2/server/pg/PgServerThread;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x64

    .line 238
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method trace(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServer;->trace:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method traceError(Ljava/lang/Exception;)V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServer;->trace:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
