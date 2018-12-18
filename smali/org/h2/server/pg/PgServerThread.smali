.class public Lorg/h2/server/pg/PgServerThread;
.super Ljava/lang/Object;
.source "PgServerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/server/pg/PgServerThread$Portal;,
        Lorg/h2/server/pg/PgServerThread$Prepared;
    }
.end annotation


# instance fields
.field private activeRequest:Lorg/h2/jdbc/JdbcStatement;

.field private clientEncoding:Ljava/lang/String;

.field private conn:Ljava/sql/Connection;

.field private dataIn:Ljava/io/DataInputStream;

.field private dataInRaw:Ljava/io/DataInputStream;

.field private dataOut:Ljava/io/DataOutputStream;

.field private databaseName:Ljava/lang/String;

.field private dateStyle:Ljava/lang/String;

.field private initDone:Z

.field private messageType:I

.field private out:Ljava/io/OutputStream;

.field private outBuffer:Ljava/io/ByteArrayOutputStream;

.field private final portals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/server/pg/PgServerThread$Portal;",
            ">;"
        }
    .end annotation
.end field

.field private final prepared:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/server/pg/PgServerThread$Prepared;",
            ">;"
        }
    .end annotation
.end field

.field private processId:I

.field private secret:I

.field private final server:Lorg/h2/server/pg/PgServer;

.field private socket:Ljava/net/Socket;

.field private stop:Z

.field private thread:Ljava/lang/Thread;

.field private userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/Socket;Lorg/h2/server/pg/PgServer;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lorg/h2/engine/SysProperties;->PG_DEFAULT_CLIENT_ENCODING:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    const-string v0, "ISO"

    .line 70
    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dateStyle:Ljava/lang/String;

    .line 71
    new-instance v0, Lorg/h2/value/CaseInsensitiveMap;

    invoke-direct {v0}, Lorg/h2/value/CaseInsensitiveMap;-><init>()V

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    .line 73
    new-instance v0, Lorg/h2/value/CaseInsensitiveMap;

    invoke-direct {v0}, Lorg/h2/value/CaseInsensitiveMap;-><init>()V

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    .line 77
    iput-object p2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    .line 78
    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    .line 79
    invoke-static {}, Lorg/h2/util/MathUtils;->secureRandomLong()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/h2/server/pg/PgServerThread;->secret:I

    return-void
.end method

.method private declared-synchronized cancelRequest()V
    .locals 1

    monitor-enter p0

    .line 970
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->activeRequest:Lorg/h2/jdbc/JdbcStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 972
    :try_start_1
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->activeRequest:Lorg/h2/jdbc/JdbcStatement;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->cancel()V

    const/4 v0, 0x0

    .line 973
    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->activeRequest:Lorg/h2/jdbc/JdbcStatement;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 975
    :try_start_2
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 978
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 969
    monitor-exit p0

    throw v0
.end method

.method private static checkParamLength(II)V
    .locals 0

    if-ne p0, p1, :cond_0

    return-void

    .line 606
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "paramLen"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static formatAsText(I)Z
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getEncoding()Ljava/lang/String;
    .locals 2

    const-string v0, "UNICODE"

    .line 549
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTF-8"

    return-object v0

    .line 552
    :cond_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    return-object v0
.end method

.method private getSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 436
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show max_identifier_length"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "CALL 63"

    goto :goto_0

    :cond_0
    const-string v1, "set client_encoding to"

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "set DATESTYLE ISO"

    .line 443
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0}, Lorg/h2/server/pg/PgServer;->getTrace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private static getTypeSize(II)I
    .locals 1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x413

    if-eq p0, v0, :cond_0

    add-int/lit8 p1, p1, 0x4

    return p1

    :cond_0
    const/16 p0, 0xff

    add-int/lit8 p1, p1, 0xa

    .line 734
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private initDb()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 772
    :try_start_0
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 774
    :try_start_1
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-interface {v2}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    const-string v3, "PG_CATALOG"

    const-string v4, "PG_VERSION"

    invoke-interface {v2, v0, v3, v4, v0}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 775
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    .line 776
    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-interface {v4}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v3, :cond_0

    .line 778
    :try_start_3
    invoke-static {v4}, Lorg/h2/server/pg/PgServerThread;->installPgCatalog(Ljava/sql/Statement;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    :goto_0
    move-object v0, v4

    goto/16 :goto_6

    :cond_0
    :goto_1
    const-string v0, "select * from pg_catalog.pg_version"

    .line 780
    invoke-interface {v4, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 781
    :try_start_4
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    goto :goto_2

    .line 786
    :cond_1
    invoke-interface {v0, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    if-gt v2, v5, :cond_2

    goto :goto_3

    :cond_2
    const-string v2, "Incompatible PG_VERSION"

    .line 788
    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 783
    :cond_3
    :goto_2
    invoke-static {v4}, Lorg/h2/server/pg/PgServerThread;->installPgCatalog(Ljava/sql/Statement;)V

    .line 791
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v1, "set search_path = PUBLIC, pg_catalog"

    .line 792
    invoke-interface {v4, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 793
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v1}, Lorg/h2/server/pg/PgServer;->getTypeSet()Ljava/util/HashSet;

    move-result-object v1

    .line 794
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "select oid from pg_catalog.pg_type"

    .line 795
    invoke-interface {v4, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 796
    :goto_4
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 797
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :cond_4
    move-object v0, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_7

    .line 801
    :cond_5
    :goto_5
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 802
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    return-void

    :catchall_2
    move-exception v1

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catchall_4
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_6

    :catchall_5
    move-exception v2

    move-object v3, v0

    .line 791
    :goto_6
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v1

    move-object v4, v0

    move-object v0, v3

    goto :goto_7

    :catchall_7
    move-exception v2

    goto :goto_6

    :catchall_8
    move-exception v1

    move-object v4, v0

    .line 801
    :goto_7
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 802
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    throw v1
.end method

.method private static installPgCatalog(Ljava/sql/Statement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 809
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "/org/h2/server/pg/pg_catalog.sql"

    invoke-static {v3}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 811
    :try_start_1
    new-instance v0, Lorg/h2/util/ScriptReader;

    invoke-direct {v0, v1}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    .line 813
    :goto_0
    invoke-virtual {v0}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 819
    invoke-virtual {v0}, Lorg/h2/util/ScriptReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    invoke-static {v1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Reader;)V

    return-void

    .line 817
    :cond_0
    :try_start_2
    invoke-interface {p0, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    const-string v1, "Can not read pg_catalog resource"

    .line 821
    invoke-static {p0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 823
    :goto_2
    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Reader;)V

    throw p0
.end method

.method private process()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServerThread;->initDone:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataInRaw:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    .line 136
    iput-boolean v1, p0, Lorg/h2/server/pg/PgServerThread;->stop:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 142
    :cond_1
    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->dataInRaw:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    .line 144
    invoke-static {v3}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v4

    .line 145
    iget-object v5, p0, Lorg/h2/server/pg/PgServerThread;->dataInRaw:Ljava/io/DataInputStream;

    invoke-virtual {v5, v4, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 146
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1c

    const/16 v3, 0x53

    if-eq v0, v3, :cond_1b

    const/16 v4, 0x58

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x70

    if-eq v0, v4, :cond_16

    const/16 v1, 0x50

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 430
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 379
    :pswitch_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Query"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v1, Lorg/h2/util/ScriptReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    .line 385
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 417
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 418
    :goto_1
    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    goto :goto_6

    .line 389
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->getSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-interface {v3}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v3

    check-cast v3, Lorg/h2/jdbc/JdbcStatement;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :try_start_2
    invoke-direct {p0, v3}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    .line 392
    invoke-virtual {v3, v0}, Lorg/h2/jdbc/JdbcStatement;->execute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v5
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 397
    :try_start_3
    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->sendRowDescription(Ljava/sql/ResultSetMetaData;)V

    .line 398
    :goto_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 399
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendDataRow(Ljava/sql/ResultSet;)V

    goto :goto_2

    .line 401
    :cond_3
    invoke-direct {p0, v3, v2}, Lorg/h2/server/pg/PgServerThread;->sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 403
    :try_start_4
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V

    goto :goto_5

    .line 407
    :cond_4
    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcStatement;->getUpdateCount()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lorg/h2/server/pg/PgServerThread;->sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    :goto_3
    invoke-static {v3}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 418
    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_5

    .line 410
    :try_start_5
    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcStatement;->wasCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 411
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendCancelQueryResponse()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 413
    :cond_5
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 417
    :goto_5
    invoke-static {v3}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    goto :goto_1

    .line 421
    :goto_6
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendReadyForQuery()V

    goto/16 :goto_12

    .line 417
    :goto_7
    invoke-static {v3}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 418
    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    throw v0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Parse"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 230
    new-instance v0, Lorg/h2/server/pg/PgServerThread$Prepared;

    invoke-direct {v0}, Lorg/h2/server/pg/PgServerThread$Prepared;-><init>()V

    .line 231
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->name:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->getSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->sql:Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v1

    .line 234
    new-array v3, v1, [I

    iput-object v3, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    :goto_8
    if-ge v2, v1, :cond_6

    .line 236
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v3

    .line 237
    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v4, v3}, Lorg/h2/server/pg/PgServer;->checkType(I)V

    .line 238
    iget-object v4, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 241
    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    iget-object v2, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->sql:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lorg/h2/jdbc/JdbcPreparedStatement;

    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    .line 242
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendParseComplete()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_12

    :catch_3
    move-exception v0

    .line 245
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 333
    :pswitch_2
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v3, "Execute"

    invoke-virtual {v1, v3}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/pg/PgServerThread$Portal;

    if-nez v1, :cond_7

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Portal not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 340
    :cond_7
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v0

    .line 341
    iget-object v1, v1, Lorg/h2/server/pg/PgServerThread$Portal;->prep:Lorg/h2/server/pg/PgServerThread$Prepared;

    .line 342
    iget-object v3, v1, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    .line 343
    iget-object v5, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    iget-object v1, v1, Lorg/h2/server/pg/PgServerThread$Prepared;->sql:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 345
    :try_start_7
    invoke-virtual {v3, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setMaxRows(I)V

    .line 346
    invoke-direct {p0, v3}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    .line 347
    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcPreparedStatement;->execute()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_9

    .line 350
    :try_start_8
    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcPreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    .line 352
    :goto_9
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 353
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendDataRow(Ljava/sql/ResultSet;)V

    goto :goto_9

    .line 355
    :cond_8
    invoke-direct {p0, v3, v2}, Lorg/h2/server/pg/PgServerThread;->sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_a

    :catch_4
    move-exception v0

    .line 357
    :try_start_9
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V

    goto :goto_a

    .line 360
    :cond_9
    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcPreparedStatement;->getUpdateCount()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lorg/h2/server/pg/PgServerThread;->sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    .line 363
    :try_start_a
    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcPreparedStatement;->wasCancelled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 364
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendCancelQueryResponse()V

    goto :goto_a

    .line 366
    :cond_a
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 369
    :goto_a
    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    goto/16 :goto_12

    :goto_b
    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V

    throw v0

    .line 303
    :pswitch_3
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readByte()B

    move-result v0

    int-to-char v0, v0

    .line 304
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v5, "Describe"

    invoke-virtual {v4, v5}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    if-ne v0, v3, :cond_c

    .line 307
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/server/pg/PgServerThread$Prepared;

    if-nez v0, :cond_b

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 311
    :cond_b
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendParameterDescription(Lorg/h2/server/pg/PgServerThread$Prepared;)V

    goto/16 :goto_12

    :cond_c
    if-ne v0, v1, :cond_e

    .line 314
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/server/pg/PgServerThread$Portal;

    if-nez v0, :cond_d

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Portal not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 318
    :cond_d
    iget-object v0, v0, Lorg/h2/server/pg/PgServerThread$Portal;->prep:Lorg/h2/server/pg/PgServerThread$Prepared;

    iget-object v0, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    .line 320
    :try_start_b
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 321
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendRowDescription(Ljava/sql/ResultSetMetaData;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_12

    :catch_6
    move-exception v0

    .line 323
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 327
    :cond_e
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected S or P, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    const-string v0, "expected S or P"

    .line 328
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 284
    :pswitch_4
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readByte()B

    move-result v0

    int-to-char v0, v0

    .line 285
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v5, "Close"

    invoke-virtual {v4, v5}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    if-ne v0, v3, :cond_f

    .line 288
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/server/pg/PgServerThread$Prepared;

    if-eqz v0, :cond_10

    .line 290
    iget-object v0, v0, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    goto :goto_c

    :cond_f
    if-ne v0, v1, :cond_11

    .line 293
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_10
    :goto_c
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendCloseComplete()V

    goto/16 :goto_12

    .line 295
    :cond_11
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected S or P, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    const-string v0, "expected S or P"

    .line 296
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 250
    :pswitch_5
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Bind"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lorg/h2/server/pg/PgServerThread$Portal;

    invoke-direct {v0}, Lorg/h2/server/pg/PgServerThread$Portal;-><init>()V

    .line 252
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Portal;->name:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->prepared:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/pg/PgServerThread$Prepared;

    if-nez v1, :cond_12

    const-string v0, "Prepared not found"

    .line 256
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 259
    :cond_12
    iput-object v1, v0, Lorg/h2/server/pg/PgServerThread$Portal;->prep:Lorg/h2/server/pg/PgServerThread$Prepared;

    .line 260
    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->portals:Ljava/util/HashMap;

    iget-object v4, v0, Lorg/h2/server/pg/PgServerThread$Portal;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v3

    .line 262
    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v3, :cond_13

    .line 264
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 266
    :cond_13
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v3

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v3, :cond_14

    .line 269
    :try_start_c
    iget-object v6, v1, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    iget-object v7, v1, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    aget v7, v7, v5

    invoke-direct {p0, v6, v7, v5, v4}, Lorg/h2/server/pg/PgServerThread;->setParameter(Ljava/sql/PreparedStatement;II[I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :catch_7
    move-exception v0

    .line 272
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 275
    :cond_14
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v1

    .line 276
    new-array v3, v1, [I

    iput-object v3, v0, Lorg/h2/server/pg/PgServerThread$Portal;->resultColumnFormat:[I

    :goto_f
    if-ge v2, v1, :cond_15

    .line 278
    iget-object v3, v0, Lorg/h2/server/pg/PgServerThread$Portal;->resultColumnFormat:[I

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 280
    :cond_15
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendBindComplete()V

    goto/16 :goto_12

    .line 197
    :cond_16
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v3, "PasswordMessage"

    invoke-virtual {v0, v3}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :try_start_d
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const-string v4, "MODE"

    const-string v5, "PostgreSQL"

    .line 201
    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "USER"

    .line 202
    iget-object v5, p0, Lorg/h2/server/pg/PgServerThread;->userName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "PASSWORD"

    .line 203
    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jdbc:h2:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/h2/server/pg/PgServerThread;->databaseName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v4, Lorg/h2/engine/ConnectionInfo;

    invoke-direct {v4, v0, v3}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 206
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0}, Lorg/h2/server/pg/PgServer;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 208
    invoke-static {}, Lorg/h2/engine/SysProperties;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    :cond_17
    if-eqz v0, :cond_18

    .line 211
    invoke-virtual {v4, v0}, Lorg/h2/engine/ConnectionInfo;->setBaseDir(Ljava/lang/String;)V

    .line 213
    :cond_18
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0}, Lorg/h2/server/pg/PgServer;->getIfExists()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "IFEXISTS"

    const-string v3, "TRUE"

    .line 214
    invoke-virtual {v4, v0, v3}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_19
    new-instance v0, Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v4, v2}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/ConnectionInfo;Z)V

    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    .line 220
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->initDb()V

    .line 221
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendAuthenticationOk()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_12

    :catch_8
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    iput-boolean v1, p0, Lorg/h2/server/pg/PgServerThread;->stop:Z

    goto/16 :goto_12

    .line 425
    :cond_1a
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Terminate"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lorg/h2/server/pg/PgServerThread;->close()V

    goto/16 :goto_12

    .line 374
    :cond_1b
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Sync"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendReadyForQuery()V

    goto/16 :goto_12

    .line 149
    :cond_1c
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v2, "Init"

    invoke-virtual {v0, v2}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v0

    const v2, 0x4d2162e

    if-ne v0, v2, :cond_1e

    .line 152
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "CancelRequest"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v0

    .line 154
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v1

    .line 155
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v2, v0}, Lorg/h2/server/pg/PgServer;->getThread(I)Lorg/h2/server/pg/PgServerThread;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 156
    iget v3, v2, Lorg/h2/server/pg/PgServerThread;->secret:I

    if-ne v1, v3, :cond_1d

    .line 157
    invoke-direct {v2}, Lorg/h2/server/pg/PgServerThread;->cancelRequest()V

    goto :goto_10

    .line 162
    :cond_1d
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CancelRequest: pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 164
    :goto_10
    invoke-virtual {p0}, Lorg/h2/server/pg/PgServerThread;->close()V

    goto :goto_12

    :cond_1e
    const v2, 0x4d2162f

    if-ne v0, v2, :cond_1f

    .line 166
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "SSLRequest"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->out:Ljava/io/OutputStream;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_12

    .line 169
    :cond_1f
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v3, "StartupMessage"

    invoke-virtual {v2, v3}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v0, 0x10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 173
    :goto_11
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_20

    .line 192
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendAuthenticationCleartextPassword()V

    .line 193
    iput-boolean v1, p0, Lorg/h2/server/pg/PgServerThread;->initDone:Z

    :goto_12
    return-void

    .line 177
    :cond_20
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user"

    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 179
    iput-object v2, p0, Lorg/h2/server/pg/PgServerThread;->userName:Ljava/lang/String;

    goto :goto_13

    :cond_21
    const-string v3, "database"

    .line 180
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 181
    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v3, v2}, Lorg/h2/server/pg/PgServer;->checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/server/pg/PgServerThread;->databaseName:Ljava/lang/String;

    goto :goto_13

    :cond_22
    const-string v3, "client_encoding"

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 184
    iput-object v2, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    goto :goto_13

    :cond_23
    const-string v3, "DateStyle"

    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 186
    iput-object v2, p0, Lorg/h2/server/pg/PgServerThread;->dateStyle:Ljava/lang/String;

    .line 190
    :cond_24
    :goto_13
    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " param "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    goto :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method private readFully([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method private readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method private readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    :goto_0
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    if-gtz v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 110
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private sendAuthenticationCleartextPassword()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x52

    .line 847
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/4 v0, 0x3

    .line 848
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 849
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendAuthenticationOk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x52

    .line 853
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/4 v0, 0x0

    .line 854
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 855
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    const-string v0, "client_encoding"

    .line 856
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->clientEncoding:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DateStyle"

    .line 857
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dateStyle:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "integer_datetimes"

    const-string v1, "off"

    .line 858
    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_superuser"

    const-string v1, "off"

    .line 859
    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_encoding"

    const-string v1, "SQL_ASCII"

    .line 860
    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_version"

    const-string v1, "8.1.4"

    .line 861
    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_authorization"

    .line 862
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->userName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "standard_conforming_strings"

    const-string v1, "off"

    .line 863
    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TimeZone"

    const-string v1, "CET"

    .line 865
    invoke-direct {p0, v0, v1}, Lorg/h2/server/pg/PgServerThread;->sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendBackendKeyData()V

    .line 867
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendReadyForQuery()V

    return-void
.end method

.method private sendBackendKeyData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4b

    .line 890
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 891
    iget v0, p0, Lorg/h2/server/pg/PgServerThread;->processId:I

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 892
    iget v0, p0, Lorg/h2/server/pg/PgServerThread;->secret:I

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 893
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendBindComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x32

    .line 759
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 760
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendCancelQueryResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "CancelSuccessResponse"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    const/16 v0, 0x45

    .line 628
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/16 v0, 0x53

    .line 629
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "ERROR"

    .line 630
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x43

    .line 631
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "57014"

    .line 632
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x4d

    .line 633
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "canceling statement due to user request"

    .line 634
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 635
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    .line 636
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendCloseComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x33

    .line 764
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 765
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendCommandComplete(Lorg/h2/jdbc/JdbcStatement;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x43

    .line 451
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 452
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcStatement;->getLastExecutedCommandType()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42

    if-eq v0, v1, :cond_2

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 473
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check CommandComplete tag for command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    const-string p1, "UPDATE "

    .line 474
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeStringPart(Ljava/lang/String;)V

    .line 475
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "DELETE "

    .line 462
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeStringPart(Ljava/lang/String;)V

    .line 463
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "BEGIN"

    .line 470
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "UPDATE "

    .line 458
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeStringPart(Ljava/lang/String;)V

    .line 459
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :pswitch_1
    const-string p1, "SELECT"

    .line 467
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "INSERT 0 "

    .line 454
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeStringPart(Ljava/lang/String;)V

    .line 455
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    .line 477
    :goto_0
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendDataRow(Ljava/sql/ResultSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 481
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 482
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    const/16 v2, 0x44

    .line 483
    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 484
    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_0

    .line 486
    invoke-interface {v0, v2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v3

    invoke-static {v3}, Lorg/h2/server/pg/PgServer;->convertType(I)I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lorg/h2/server/pg/PgServerThread;->writeDataColumn(Ljava/sql/ResultSet;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    :cond_0
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendErrorResponse(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    .line 612
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0, p1}, Lorg/h2/server/pg/PgServer;->traceError(Ljava/lang/Exception;)V

    const/16 v0, 0x45

    .line 613
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/16 v0, 0x53

    .line 614
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "ERROR"

    .line 615
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x43

    .line 616
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    .line 617
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x4d

    .line 618
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    .line 619
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x44

    .line 620
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    .line 621
    invoke-virtual {p1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 622
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    .line 623
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendErrorResponse(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    const/16 v0, 0x45

    .line 742
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    const/16 v0, 0x53

    .line 743
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "ERROR"

    .line 744
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x43

    .line 745
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    const-string v0, "08P01"

    .line 747
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x4d

    .line 748
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    .line 749
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    .line 750
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 929
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 930
    array-length v1, v0

    .line 931
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->out:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    .line 932
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    iget v3, p0, Lorg/h2/server/pg/PgServerThread;->messageType:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 933
    iget-object v2, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 934
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 935
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method private sendNoData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x6e

    .line 663
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 664
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendParameterDescription(Lorg/h2/server/pg/PgServerThread$Prepared;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    :try_start_0
    iget-object v0, p1, Lorg/h2/server/pg/PgServerThread$Prepared;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    .line 642
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/sql/ParameterMetaData;->getParameterCount()I

    move-result v0

    const/16 v1, 0x74

    .line 644
    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 645
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 648
    iget-object v2, p1, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 649
    iget-object v2, p1, Lorg/h2/server/pg/PgServerThread$Prepared;->paramType:[I

    aget v2, v2, v1

    goto :goto_1

    :cond_0
    const/16 v2, 0x413

    .line 653
    :goto_1
    iget-object v3, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v3, v2}, Lorg/h2/server/pg/PgServer;->checkType(I)V

    .line 654
    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_1
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 658
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->sendErrorResponse(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method private sendParameterStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x53

    .line 940
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 941
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    .line 942
    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    .line 943
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendParseComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x31

    .line 754
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 755
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendReadyForQuery()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5a

    .line 871
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 874
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto :goto_0

    :cond_0
    const/16 v0, 0x54

    goto :goto_0

    :catch_0
    const/16 v0, 0x45

    :goto_0
    int-to-byte v0, v0

    .line 885
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    .line 886
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    return-void
.end method

.method private sendRowDescription(Ljava/sql/ResultSetMetaData;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 669
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendNoData()V

    goto :goto_2

    .line 671
    :cond_0
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    .line 672
    new-array v1, v0, [I

    .line 673
    new-array v2, v0, [I

    .line 674
    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    add-int/lit8 v6, v5, 0x1

    .line 676
    invoke-interface {p1, v6}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    .line 677
    aput-object v7, v3, v5

    .line 678
    invoke-interface {p1, v6}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v7

    .line 679
    invoke-static {v7}, Lorg/h2/server/pg/PgServer;->convertType(I)I

    move-result v8

    .line 687
    invoke-interface {p1, v6}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v9

    aput v9, v2, v5

    if-eqz v7, :cond_1

    .line 689
    iget-object v7, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v7, v8}, Lorg/h2/server/pg/PgServer;->checkType(I)V

    .line 691
    :cond_1
    aput v8, v1, v5

    move v5, v6

    goto :goto_0

    :cond_2
    const/16 p1, 0x54

    .line 693
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->startMessage(I)V

    .line 694
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_3

    .line 696
    aget-object v5, v3, p1

    invoke-static {v5}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeString(Ljava/lang/String;)V

    .line 698
    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 700
    invoke-direct {p0, v4}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    .line 702
    aget v5, v1, p1

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 704
    aget v5, v1, p1

    aget v6, v2, p1

    invoke-static {v5, v6}, Lorg/h2/server/pg/PgServerThread;->getTypeSize(II)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    const/4 v5, -0x1

    .line 706
    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 708
    aget v5, v1, p1

    invoke-static {v5}, Lorg/h2/server/pg/PgServerThread;->formatAsText(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 710
    :cond_3
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->sendMessage()V

    :goto_2
    return-void
.end method

.method private declared-synchronized setActiveRequest(Lorg/h2/jdbc/JdbcStatement;)V
    .locals 0

    monitor-enter p0

    .line 963
    :try_start_0
    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->activeRequest:Lorg/h2/jdbc/JdbcStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 962
    monitor-exit p0

    throw p1
.end method

.method private setParameter(Ljava/sql/PreparedStatement;II[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p3, v0, :cond_1

    aget p4, p4, p3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    add-int/2addr p3, v2

    .line 559
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 561
    invoke-interface {p1, p3, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto/16 :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 564
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    .line 565
    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->readFully([B)V

    .line 566
    new-instance p4, Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p1, p3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const/16 p4, 0x8

    const/4 v1, 0x4

    sparse-switch p2, :sswitch_data_0

    .line 596
    iget-object p4, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binary format for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is unsupported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 597
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    .line 598
    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->readFully([B)V

    .line 599
    new-instance p4, Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p1, p3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    .line 587
    :sswitch_0
    invoke-static {p4, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    .line 588
    iget-object p2, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    goto :goto_2

    .line 583
    :sswitch_1
    invoke-static {v1, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    .line 584
    iget-object p2, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readFloat()F

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    goto :goto_2

    .line 575
    :sswitch_2
    invoke-static {v1, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    .line 576
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    goto :goto_2

    .line 571
    :sswitch_3
    invoke-static {v1, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    .line 572
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->readShort()S

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setShort(IS)V

    goto :goto_2

    .line 579
    :sswitch_4
    invoke-static {p4, v0}, Lorg/h2/server/pg/PgServerThread;->checkParamLength(II)V

    .line 580
    iget-object p2, p0, Lorg/h2/server/pg/PgServerThread;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_2

    .line 591
    :sswitch_5
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    .line 592
    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->readFully([B)V

    .line 593
    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x17 -> :sswitch_2
        0x2bc -> :sswitch_1
        0x2bd -> :sswitch_0
    .end sparse-switch
.end method

.method private startMessage(I)V
    .locals 1

    .line 922
    iput p1, p0, Lorg/h2/server/pg/PgServerThread;->messageType:I

    .line 923
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->outBuffer:Ljava/io/ByteArrayOutputStream;

    .line 924
    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    return-void
.end method

.method private write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method private write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method private writeDataColumn(Ljava/sql/ResultSet;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 493
    invoke-static {p3}, Lorg/h2/server/pg/PgServerThread;->formatAsText(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    .line 501
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 503
    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    goto/16 :goto_1

    .line 505
    :cond_0
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 506
    array-length p2, p1

    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 507
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write([B)V

    goto/16 :goto_1

    :cond_1
    const/4 p3, 0x1

    .line 497
    invoke-direct {p0, p3}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 498
    iget-object p3, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x74

    goto :goto_0

    :cond_2
    const/16 p1, 0x66

    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    const/16 v2, 0x8

    sparse-switch p3, :sswitch_data_0

    .line 543
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output binary format is undefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 530
    :sswitch_0
    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 531
    iget-object p3, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_1

    .line 526
    :sswitch_1
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 527
    iget-object p3, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    .line 518
    :sswitch_2
    invoke-direct {p0, v0}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 519
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    goto :goto_1

    :sswitch_3
    const/4 p3, 0x2

    .line 514
    invoke-direct {p0, p3}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 515
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getShort(I)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeShort(I)V

    goto :goto_1

    .line 522
    :sswitch_4
    invoke-direct {p0, v2}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 523
    iget-object p3, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    .line 534
    :sswitch_5
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p1

    if-nez p1, :cond_4

    .line 536
    invoke-direct {p0, v1}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    goto :goto_1

    .line 538
    :cond_4
    array-length p2, p1

    invoke-direct {p0, p2}, Lorg/h2/server/pg/PgServerThread;->writeInt(I)V

    .line 539
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write([B)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x17 -> :sswitch_2
        0x2bc -> :sswitch_1
        0x2bd -> :sswitch_0
    .end sparse-switch
.end method

.method private writeInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeShort(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->dataOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->writeStringPart(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 898
    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write(I)V

    return-void
.end method

.method private writeStringPart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/server/pg/PgServerThread;->write([B)V

    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    const/4 v0, 0x1

    .line 832
    :try_start_0
    iput-boolean v0, p0, Lorg/h2/server/pg/PgServerThread;->stop:Z

    .line 833
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    .line 834
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 837
    :cond_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Close"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 839
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/pg/PgServer;->traceError(Ljava/lang/Exception;)V

    :goto_0
    const/4 v0, 0x0

    .line 841
    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->conn:Ljava/sql/Connection;

    .line 842
    iput-object v0, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    .line 843
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v0, p0}, Lorg/h2/server/pg/PgServer;->remove(Lorg/h2/server/pg/PgServerThread;)V

    return-void
.end method

.method getProcessId()I
    .locals 1

    .line 959
    iget v0, p0, Lorg/h2/server/pg/PgServerThread;->processId:I

    return v0
.end method

.method getThread()Ljava/lang/Thread;
    .locals 1

    .line 951
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Connect"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/pg/PgServerThread;->out:Ljava/io/OutputStream;

    .line 88
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/h2/server/pg/PgServerThread;->dataInRaw:Ljava/io/DataInputStream;

    .line 89
    :goto_0
    iget-boolean v0, p0, Lorg/h2/server/pg/PgServerThread;->stop:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/h2/server/pg/PgServerThread;->process()V

    .line 91
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 96
    :try_start_1
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/pg/PgServer;->traceError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 98
    :goto_1
    iget-object v1, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v2, "Disconnect"

    invoke-virtual {v1, v2}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/h2/server/pg/PgServerThread;->close()V

    throw v0

    .line 98
    :catch_1
    :cond_0
    :goto_2
    iget-object v0, p0, Lorg/h2/server/pg/PgServerThread;->server:Lorg/h2/server/pg/PgServer;

    const-string v1, "Disconnect"

    invoke-virtual {v0, v1}, Lorg/h2/server/pg/PgServer;->trace(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/h2/server/pg/PgServerThread;->close()V

    return-void
.end method

.method setProcessId(I)V
    .locals 0

    .line 955
    iput p1, p0, Lorg/h2/server/pg/PgServerThread;->processId:I

    return-void
.end method

.method setThread(Ljava/lang/Thread;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lorg/h2/server/pg/PgServerThread;->thread:Ljava/lang/Thread;

    return-void
.end method
