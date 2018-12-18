.class public Lorg/h2/server/web/WebServer;
.super Ljava/lang/Object;
.source "WebServer.java"

# interfaces
.implements Lorg/h2/server/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/server/web/WebServer$TranslateThread;
    }
.end annotation


# static fields
.field private static final COMMAND_HISTORY:Ljava/lang/String; = "commandHistory"

.field private static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en"

.field private static final GENERIC:[Ljava/lang/String;

.field static final LANGUAGES:[[Ljava/lang/String;

.field private static final SESSION_TIMEOUT:J

.field private static ticker:I


# instance fields
.field private allowChunked:Z

.field private allowOthers:Z

.field private commandHistoryString:Ljava/lang/String;

.field private final connInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/server/web/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ifExists:Z

.field private isDaemon:Z

.field private final languages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastTimeoutCheck:J

.field private listenerThread:Ljava/lang/Thread;

.field private port:I

.field private final running:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/h2/server/web/WebThread;",
            ">;"
        }
    .end annotation
.end field

.field private serverPropertiesDir:Ljava/lang/String;

.field private serverSocket:Ljava/net/ServerSocket;

.field private final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/server/web/WebSession;",
            ">;"
        }
    .end annotation
.end field

.field private shutdownHandler:Lorg/h2/server/ShutdownHandler;

.field private ssl:Z

.field private startDateTime:Ljava/lang/String;

.field private trace:Z

.field private translateThread:Lorg/h2/server/web/WebServer$TranslateThread;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x14

    .line 49
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "cs"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u010ce\u0161tina"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "de"

    aput-object v3, v2, v4

    const-string v3, "Deutsch"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "en"

    aput-object v3, v2, v4

    const-string v3, "English"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "es"

    aput-object v3, v2, v4

    const-string v3, "Espa\u00f1ol"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "fr"

    aput-object v6, v2, v4

    const-string v6, "Fran\u00e7ais"

    aput-object v6, v2, v5

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "hu"

    aput-object v7, v2, v4

    const-string v7, "Magyar"

    aput-object v7, v2, v5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "ko"

    aput-object v8, v2, v4

    const-string v8, "\ud55c\uad6d\uc5b4"

    aput-object v8, v2, v5

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/String;

    const-string v9, "in"

    aput-object v9, v2, v4

    const-string v9, "Indonesia"

    aput-object v9, v2, v5

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/String;

    const-string v10, "it"

    aput-object v10, v2, v4

    const-string v10, "Italiano"

    aput-object v10, v2, v5

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/String;

    const-string v11, "ja"

    aput-object v11, v2, v4

    const-string v11, "\u65e5\u672c\u8a9e"

    aput-object v11, v2, v5

    const/16 v11, 0x9

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/String;

    const-string v12, "nl"

    aput-object v12, v2, v4

    const-string v12, "Nederlands"

    aput-object v12, v2, v5

    const/16 v12, 0xa

    aput-object v2, v0, v12

    new-array v2, v1, [Ljava/lang/String;

    const-string v13, "pl"

    aput-object v13, v2, v4

    const-string v13, "Polski"

    aput-object v13, v2, v5

    const/16 v13, 0xb

    aput-object v2, v0, v13

    new-array v2, v1, [Ljava/lang/String;

    const-string v14, "pt_BR"

    aput-object v14, v2, v4

    const-string v14, "Portugu\u00eas (Brasil)"

    aput-object v14, v2, v5

    const/16 v14, 0xc

    aput-object v2, v0, v14

    new-array v2, v1, [Ljava/lang/String;

    const-string v15, "pt_PT"

    aput-object v15, v2, v4

    const-string v15, "Portugu\u00eas (Europeu)"

    aput-object v15, v2, v5

    const/16 v15, 0xd

    aput-object v2, v0, v15

    new-array v2, v1, [Ljava/lang/String;

    const-string v16, "ru"

    aput-object v16, v2, v4

    const-string v16, "\u0440\u0443\u0441\u0441\u043a\u0438\u0439"

    aput-object v16, v2, v5

    const/16 v15, 0xe

    aput-object v2, v0, v15

    new-array v2, v1, [Ljava/lang/String;

    const-string v16, "sk"

    aput-object v16, v2, v4

    const-string v16, "Slovensky"

    aput-object v16, v2, v5

    const/16 v16, 0xf

    aput-object v2, v0, v16

    new-array v2, v1, [Ljava/lang/String;

    const-string v16, "tr"

    aput-object v16, v2, v4

    const-string v16, "T\u00fcrk\u00e7e"

    aput-object v16, v2, v5

    const/16 v16, 0x10

    aput-object v2, v0, v16

    new-array v2, v1, [Ljava/lang/String;

    const-string v16, "uk"

    aput-object v16, v2, v4

    const-string v16, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    aput-object v16, v2, v5

    const/16 v16, 0x11

    aput-object v2, v0, v16

    new-array v2, v1, [Ljava/lang/String;

    const-string v16, "zh_CN"

    aput-object v16, v2, v4

    const-string v16, "\u4e2d\u6587 (\u7b80\u4f53)"

    aput-object v16, v2, v5

    const/16 v16, 0x12

    aput-object v2, v0, v16

    new-array v2, v1, [Ljava/lang/String;

    const-string v16, "zh_TW"

    aput-object v16, v2, v4

    const-string v16, "\u4e2d\u6587 (\u7e41\u9ad4)"

    aput-object v16, v2, v5

    const/16 v16, 0x13

    aput-object v2, v0, v16

    sput-object v0, Lorg/h2/server/web/WebServer;->LANGUAGES:[[Ljava/lang/String;

    .line 76
    new-array v0, v15, [Ljava/lang/String;

    const-string v2, "Generic JNDI Data Source|javax.naming.InitialContext|java:comp/env/jdbc/Test|sa"

    aput-object v2, v0, v4

    const-string v2, "Generic Firebird Server|org.firebirdsql.jdbc.FBDriver|jdbc:firebirdsql:localhost:c:/temp/firebird/test|sysdba"

    aput-object v2, v0, v5

    const-string v2, "Generic SQLite|org.sqlite.JDBC|jdbc:sqlite:test|sa"

    aput-object v2, v0, v1

    const-string v1, "Generic DB2|com.ibm.db2.jcc.DB2Driver|jdbc:db2://localhost/test|"

    aput-object v1, v0, v3

    const-string v1, "Generic Oracle|oracle.jdbc.driver.OracleDriver|jdbc:oracle:thin:@localhost:1521:XE|sa"

    aput-object v1, v0, v6

    const-string v1, "Generic MS SQL Server 2000|com.microsoft.jdbc.sqlserver.SQLServerDriver|jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=sqlexpress|sa"

    aput-object v1, v0, v7

    const-string v1, "Generic MS SQL Server 2005|com.microsoft.sqlserver.jdbc.SQLServerDriver|jdbc:sqlserver://localhost;DatabaseName=test|sa"

    aput-object v1, v0, v8

    const-string v1, "Generic PostgreSQL|org.postgresql.Driver|jdbc:postgresql:test|"

    aput-object v1, v0, v9

    const-string v1, "Generic MySQL|com.mysql.jdbc.Driver|jdbc:mysql://localhost:3306/test|"

    aput-object v1, v0, v10

    const-string v1, "Generic HSQLDB|org.hsqldb.jdbcDriver|jdbc:hsqldb:test;hsqldb.default_table_type=cached|sa"

    aput-object v1, v0, v11

    const-string v1, "Generic Derby (Server)|org.apache.derby.jdbc.ClientDriver|jdbc:derby://localhost:1527/test;create=true|sa"

    aput-object v1, v0, v12

    const-string v1, "Generic Derby (Embedded)|org.apache.derby.jdbc.EmbeddedDriver|jdbc:derby:test;create=true|sa"

    aput-object v1, v0, v13

    const-string v1, "Generic H2 (Server)|org.h2.Driver|jdbc:h2:tcp://localhost/~/test|sa"

    aput-object v1, v0, v14

    const-string v1, "Generic H2 (Embedded)|org.h2.Driver|jdbc:h2:~/test|sa"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lorg/h2/server/web/WebServer;->GENERIC:[Ljava/lang/String;

    .line 113
    sget v0, Lorg/h2/engine/SysProperties;->CONSOLE_TIMEOUT:I

    int-to-long v0, v0

    sput-wide v0, Lorg/h2/server/web/WebServer;->SESSION_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->running:Ljava/util/Set;

    .line 143
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->connInfoMap:Ljava/util/HashMap;

    .line 146
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    .line 147
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->languages:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lorg/h2/server/web/WebServer;->allowChunked:Z

    const-string v0, "~"

    .line 157
    iput-object v0, p0, Lorg/h2/server/web/WebServer;->serverPropertiesDir:Ljava/lang/String;

    return-void
.end method

.method private static generateSessionId()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    .line 204
    invoke-static {v0}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v0

    .line 205
    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isSimpleName(Ljava/lang/String;)Z
    .locals 5

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 187
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private loadProperties()Ljava/util/Properties;
    .locals 2

    :try_start_0
    const-string v0, "null"

    .line 608
    iget-object v1, p0, Lorg/h2/server/web/WebServer;->serverPropertiesDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    return-object v0

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/server/web/WebServer;->serverPropertiesDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".h2.server.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/SortedProperties;->loadProperties(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 614
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    .line 615
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    return-object v0
.end method

.method private updateURL()V
    .locals 2

    .line 333
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/h2/server/web/WebServer;->ssl:Z

    if-eqz v1, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/server/web/WebServer;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addSession(Ljava/sql/Connection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "local"

    .line 767
    invoke-virtual {p0, v0}, Lorg/h2/server/web/WebServer;->createNewSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Lorg/h2/server/web/WebSession;->setShutdownServerOnDisconnect()V

    .line 769
    invoke-virtual {v0, p1}, Lorg/h2/server/web/WebSession;->setConnection(Ljava/sql/Connection;)V

    const-string v1, "url"

    .line 770
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "sessionId"

    .line 771
    invoke-virtual {v0, p1}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/server/web/WebServer;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/frame.jsp?jsessionid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method createNewSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;
    .locals 4

    .line 242
    :cond_0
    invoke-static {}, Lorg/h2/server/web/WebServer;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Lorg/h2/server/web/WebSession;

    invoke-direct {v1, p0}, Lorg/h2/server/web/WebSession;-><init>(Lorg/h2/server/web/WebServer;)V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/h2/server/web/WebSession;->lastAccess:J

    const-string v2, "sessionId"

    .line 246
    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ip"

    .line 247
    invoke-virtual {v1, v2, p1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "language"

    const-string v2, "en"

    .line 248
    invoke-virtual {v1, p1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "frame-border"

    const-string v2, "0"

    .line 249
    invoke-virtual {v1, p1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "frameset-border"

    const-string v2, "4"

    .line 250
    invoke-virtual {v1, p1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object p1, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "en"

    .line 254
    invoke-virtual {p0, v1, p1}, Lorg/h2/server/web/WebServer;->readTranslations(Lorg/h2/server/web/WebSession;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v0}, Lorg/h2/server/web/WebServer;->getSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    move-result-object p1

    return-object p1
.end method

.method getAllowChunked()Z
    .locals 1

    .line 851
    iget-boolean v0, p0, Lorg/h2/server/web/WebServer;->allowChunked:Z

    return v0
.end method

.method public getAllowOthers()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lorg/h2/server/web/WebServer;->allowOthers:Z

    return v0
.end method

.method public getCommandHistoryList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 532
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    .line 539
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 541
    :goto_0
    iget-object v4, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 550
    :cond_1
    iget-object v4, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 552
    iget-object v4, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 554
    :cond_2
    iget-object v4, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 543
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 544
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 547
    :cond_4
    iget-object v4, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_5

    return-object v0

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 719
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 721
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    .line 722
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "user"

    .line 723
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "password"

    .line 726
    invoke-virtual {v0, p3, p4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "jdbc:h2:"

    .line 727
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 728
    iget-boolean p1, p0, Lorg/h2/server/web/WebServer;->ifExists:Z

    if-eqz p1, :cond_0

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";IFEXISTS=TRUE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 735
    :cond_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/h2/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p1

    return-object p1

    .line 744
    :cond_1
    invoke-static {p1, p2, v0}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p1

    return-object p1
.end method

.method getFile(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFile <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/org/h2/server/web/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, " null"

    .line 171
    invoke-virtual {p0, v0}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "H2 Console Server"

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 514
    iget v0, p0, Lorg/h2/server/web/WebServer;->port:I

    return v0
.end method

.method getSSL()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lorg/h2/server/web/WebServer;->ssl:Z

    return v0
.end method

.method getSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;
    .locals 8

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 216
    iget-wide v2, p0, Lorg/h2/server/web/WebServer;->lastTimeoutCheck:J

    sget-wide v4, Lorg/h2/server/web/WebServer;->SESSION_TIMEOUT:J

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 217
    iget-object v2, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    iget-object v4, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/server/web/WebSession;

    .line 219
    iget-wide v4, v4, Lorg/h2/server/web/WebSession;->lastAccess:J

    sget-wide v6, Lorg/h2/server/web/WebServer;->SESSION_TIMEOUT:J

    add-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_1
    iput-wide v0, p0, Lorg/h2/server/web/WebServer;->lastTimeoutCheck:J

    .line 226
    :cond_2
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/server/web/WebSession;

    if-eqz p1, :cond_3

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/h2/server/web/WebSession;->lastAccess:J

    :cond_3
    return-object p1
.end method

.method getSessions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 474
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/server/web/WebSession;

    .line 476
    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getInfo()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getSetting(Ljava/lang/String;)Lorg/h2/server/web/ConnectionInfo;
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->connInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/server/web/ConnectionInfo;

    return-object p1
.end method

.method getSettingNames()[Ljava/lang/String;
    .locals 4

    .line 625
    invoke-virtual {p0}, Lorg/h2/server/web/WebServer;->getSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 627
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 628
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/server/web/ConnectionInfo;

    iget-object v3, v3, Lorg/h2/server/web/ConnectionInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method declared-synchronized getSettings()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/server/web/ConnectionInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 639
    :try_start_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lorg/h2/server/web/WebServer;->connInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 641
    invoke-direct {p0}, Lorg/h2/server/web/WebServer;->loadProperties()Ljava/util/Properties;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 643
    sget-object v1, Lorg/h2/server/web/WebServer;->GENERIC:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 644
    new-instance v5, Lorg/h2/server/web/ConnectionInfo;

    invoke-direct {v5, v4}, Lorg/h2/server/web/ConnectionInfo;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {p0, v5}, Lorg/h2/server/web/WebServer;->updateSetting(Lorg/h2/server/web/ConnectionInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    :cond_0
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 654
    :cond_1
    new-instance v4, Lorg/h2/server/web/ConnectionInfo;

    invoke-direct {v4, v2}, Lorg/h2/server/web/ConnectionInfo;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-virtual {p0, v4}, Lorg/h2/server/web/WebServer;->updateSetting(Lorg/h2/server/web/ConnectionInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 660
    :cond_2
    iget-object v1, p0, Lorg/h2/server/web/WebServer;->connInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 662
    :cond_3
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 638
    monitor-exit p0

    throw v0
.end method

.method getStartDateTime()Ljava/lang/String;
    .locals 5

    .line 259
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->startDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 262
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->startDateTime:Ljava/lang/String;

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->startDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "Web Console"

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 327
    invoke-direct {p0}, Lorg/h2/server/web/WebServer;->updateURL()V

    .line 328
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->url:Ljava/lang/String;

    return-object v0
.end method

.method public varargs init([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 271
    array-length v3, p1

    if-ge v1, v3, :cond_1

    const-string v3, "-properties"

    .line 272
    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 273
    aget-object v3, p1, v1

    iput-object v3, p0, Lorg/h2/server/web/WebServer;->serverPropertiesDir:Ljava/lang/String;

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 276
    :cond_1
    invoke-direct {p0}, Lorg/h2/server/web/WebServer;->loadProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v3, "webPort"

    const/16 v4, 0x1f92

    .line 277
    invoke-static {v1, v3, v4}, Lorg/h2/util/SortedProperties;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/h2/server/web/WebServer;->port:I

    const-string v3, "webSSL"

    .line 279
    invoke-static {v1, v3, v0}, Lorg/h2/util/SortedProperties;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/h2/server/web/WebServer;->ssl:Z

    const-string v3, "webAllowOthers"

    .line 281
    invoke-static {v1, v3, v0}, Lorg/h2/util/SortedProperties;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/h2/server/web/WebServer;->allowOthers:Z

    const-string v3, "commandHistory"

    .line 283
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_a

    .line 284
    array-length v3, p1

    if-ge v1, v3, :cond_a

    .line 285
    aget-object v3, p1, v1

    const-string v4, "-webPort"

    .line 286
    invoke-static {v3, v4}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 287
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/h2/server/web/WebServer;->port:I

    goto :goto_2

    :cond_2
    const-string v4, "-webSSL"

    .line 288
    invoke-static {v3, v4}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 289
    iput-boolean v2, p0, Lorg/h2/server/web/WebServer;->ssl:Z

    goto :goto_2

    :cond_3
    const-string v4, "-webAllowOthers"

    .line 290
    invoke-static {v3, v4}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 291
    iput-boolean v2, p0, Lorg/h2/server/web/WebServer;->allowOthers:Z

    goto :goto_2

    :cond_4
    const-string v4, "-webDaemon"

    .line 292
    invoke-static {v3, v4}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 293
    iput-boolean v2, p0, Lorg/h2/server/web/WebServer;->isDaemon:Z

    goto :goto_2

    :cond_5
    const-string v4, "-baseDir"

    .line 294
    invoke-static {v3, v4}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 295
    aget-object v3, p1, v1

    .line 296
    invoke-static {v3}, Lorg/h2/engine/SysProperties;->setBaseDir(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v4, "-ifExists"

    .line 297
    invoke-static {v3, v4}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 298
    iput-boolean v2, p0, Lorg/h2/server/web/WebServer;->ifExists:Z

    goto :goto_2

    :cond_7
    const-string v4, "-properties"

    .line 299
    invoke-static {v3, v4}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const-string v4, "-trace"

    .line 302
    invoke-static {v3, v4}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 303
    iput-boolean v2, p0, Lorg/h2/server/web/WebServer;->trace:Z

    :cond_9
    :goto_2
    add-int/2addr v1, v2

    goto :goto_1

    .line 319
    :cond_a
    sget-object p1, Lorg/h2/server/web/WebServer;->LANGUAGES:[[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_b

    aget-object v3, p1, v2

    .line 320
    iget-object v4, p0, Lorg/h2/server/web/WebServer;->languages:Ljava/util/HashSet;

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 322
    :cond_b
    invoke-direct {p0}, Lorg/h2/server/web/WebServer;->updateURL()V

    return-void
.end method

.method public isCommandHistoryAllowed()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDaemon()Z
    .locals 1

    .line 843
    iget-boolean v0, p0, Lorg/h2/server/web/WebServer;->isDaemon:Z

    return v0
.end method

.method public isRunning(Z)Z
    .locals 3

    .line 364
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 368
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/h2/server/web/WebServer;->port:I

    iget-boolean v2, p0, Lorg/h2/server/web/WebServer;->ssl:Z

    invoke-static {v0, v2}, Lorg/h2/util/NetUtils;->createLoopbackSocket(IZ)Ljava/net/Socket;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 373
    invoke-virtual {p0, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method public isStopped()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listen()V
    .locals 2

    .line 349
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->listenerThread:Ljava/lang/Thread;

    .line 351
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 353
    new-instance v1, Lorg/h2/server/web/WebThread;

    invoke-direct {v1, v0, p0}, Lorg/h2/server/web/WebThread;-><init>(Ljava/net/Socket;Lorg/h2/server/web/WebServer;)V

    .line 354
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->running:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v1}, Lorg/h2/server/web/WebThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method readTranslations(Lorg/h2/server/web/WebSession;Ljava/lang/String;)V
    .locals 5

    .line 454
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 456
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_text_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".prop"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/server/web/WebServer;->getFile(Ljava/lang/String;)[B

    move-result-object p2

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    .line 459
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lorg/h2/util/SortedProperties;->fromLines(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 462
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "#"

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_1
    move-exception p2

    .line 468
    :goto_1
    invoke-static {p2}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    move-object p2, v0

    :cond_1
    const-string v0, "text"

    .line 470
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method declared-synchronized remove(Lorg/h2/server/web/WebThread;)V
    .locals 1

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->running:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 199
    monitor-exit p0

    throw p1
.end method

.method removeSetting(Ljava/lang/String;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->connInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveCommandHistoryList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x3b

    .line 569
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "\\"

    const-string v3, "\\\\"

    .line 571
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    const-string v3, "\\;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 574
    invoke-virtual {p0, p1}, Lorg/h2/server/web/WebServer;->saveProperties(Ljava/util/Properties;)V

    return-void
.end method

.method declared-synchronized saveProperties(Ljava/util/Properties;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_1

    .line 674
    :try_start_0
    invoke-direct {p0}, Lorg/h2/server/web/WebServer;->loadProperties()Ljava/util/Properties;

    move-result-object p1

    .line 675
    new-instance v0, Lorg/h2/util/SortedProperties;

    invoke-direct {v0}, Lorg/h2/util/SortedProperties;-><init>()V

    const-string v1, "webPort"

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "webPort"

    iget v4, p0, Lorg/h2/server/web/WebServer;->port:I

    invoke-static {p1, v3, v4}, Lorg/h2/util/SortedProperties;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "webAllowOthers"

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "webAllowOthers"

    iget-boolean v4, p0, Lorg/h2/server/web/WebServer;->allowOthers:Z

    invoke-static {p1, v3, v4}, Lorg/h2/util/SortedProperties;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "webSSL"

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "webSSL"

    iget-boolean v4, p0, Lorg/h2/server/web/WebServer;->ssl:Z

    invoke-static {p1, v3, v4}, Lorg/h2/util/SortedProperties;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 685
    iget-object p1, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "commandHistory"

    .line 686
    iget-object v1, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 689
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/h2/server/web/WebServer;->getSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 692
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/server/web/ConnectionInfo;

    if-eqz v4, :cond_2

    sub-int v5, v1, v3

    add-int/lit8 v5, v5, -0x1

    .line 694
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/h2/server/web/ConnectionInfo;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "null"

    .line 697
    iget-object v1, p0, Lorg/h2/server/web/WebServer;->serverPropertiesDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/server/web/WebServer;->serverPropertiesDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".h2.server.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "H2 Server Properties"

    .line 700
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 704
    :goto_2
    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 672
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method setAllowChunked(Z)V
    .locals 0

    .line 847
    iput-boolean p1, p0, Lorg/h2/server/web/WebServer;->allowChunked:Z

    return-void
.end method

.method setAllowOthers(Z)V
    .locals 0

    .line 492
    iput-boolean p1, p0, Lorg/h2/server/web/WebServer;->allowOthers:Z

    return-void
.end method

.method public setCommandHistoryAllowed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 523
    iget-object p1, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    .line 524
    iput-object p1, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 527
    iput-object p1, p0, Lorg/h2/server/web/WebServer;->commandHistoryString:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method setPort(I)V
    .locals 0

    .line 505
    iput p1, p0, Lorg/h2/server/web/WebServer;->port:I

    return-void
.end method

.method setSSL(Z)V
    .locals 0

    .line 501
    iput-boolean p1, p0, Lorg/h2/server/web/WebServer;->ssl:Z

    return-void
.end method

.method public setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lorg/h2/server/web/WebServer;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    return-void
.end method

.method shutdown()V
    .locals 1

    .line 751
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    invoke-interface {v0}, Lorg/h2/server/ShutdownHandler;->shutdown()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 342
    iget v0, p0, Lorg/h2/server/web/WebServer;->port:I

    iget-boolean v1, p0, Lorg/h2/server/web/WebServer;->ssl:Z

    invoke-static {v0, v1}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    .line 343
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/h2/server/web/WebServer;->port:I

    .line 344
    invoke-direct {p0}, Lorg/h2/server/web/WebServer;->updateURL()V

    return-void
.end method

.method startTranslate(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->translateThread:Lorg/h2/server/web/WebServer$TranslateThread;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->translateThread:Lorg/h2/server/web/WebServer$TranslateThread;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer$TranslateThread;->stopNow()V

    .line 835
    :cond_0
    new-instance v0, Lorg/h2/server/web/WebServer$TranslateThread;

    invoke-direct {v0, p0, p1}, Lorg/h2/server/web/WebServer$TranslateThread;-><init>(Lorg/h2/server/web/WebServer;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/h2/server/web/WebServer;->translateThread:Lorg/h2/server/web/WebServer$TranslateThread;

    .line 836
    iget-object p1, p0, Lorg/h2/server/web/WebServer;->translateThread:Lorg/h2/server/web/WebServer$TranslateThread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/server/web/WebServer$TranslateThread;->setDaemon(Z)V

    .line 837
    iget-object p1, p0, Lorg/h2/server/web/WebServer;->translateThread:Lorg/h2/server/web/WebServer$TranslateThread;

    invoke-virtual {p1}, Lorg/h2/server/web/WebServer$TranslateThread;->start()V

    .line 838
    iget-object p1, p0, Lorg/h2/server/web/WebServer;->translateThread:Lorg/h2/server/web/WebServer$TranslateThread;

    invoke-virtual {p1}, Lorg/h2/server/web/WebServer$TranslateThread;->getFileName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stop()V
    .locals 3

    .line 385
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 387
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {p0, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lorg/h2/server/web/WebServer;->serverSocket:Ljava/net/ServerSocket;

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->listenerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 395
    :try_start_1
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->listenerThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 397
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    .line 401
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/web/WebSession;

    .line 402
    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->close()V

    goto :goto_2

    .line 404
    :cond_2
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->running:Ljava/util/Set;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/web/WebThread;

    .line 406
    :try_start_2
    invoke-virtual {v1}, Lorg/h2/server/web/WebThread;->stopNow()V

    const/16 v2, 0x64

    .line 407
    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebThread;->join(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 409
    invoke-virtual {p0, v1}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method supportsLanguage(Ljava/lang/String;)Z
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->languages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method trace(Ljava/lang/String;)V
    .locals 1

    .line 420
    iget-boolean v0, p0, Lorg/h2/server/web/WebServer;->trace:Z

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method traceError(Ljava/lang/Throwable;)V
    .locals 1

    .line 431
    iget-boolean v0, p0, Lorg/h2/server/web/WebServer;->trace:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method updateSetting(Lorg/h2/server/web/ConnectionInfo;)V
    .locals 2

    .line 593
    iget-object v0, p0, Lorg/h2/server/web/WebServer;->connInfoMap:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/h2/server/web/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget v0, Lorg/h2/server/web/WebServer;->ticker:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/h2/server/web/WebServer;->ticker:I

    iput v0, p1, Lorg/h2/server/web/ConnectionInfo;->lastAccess:I

    return-void
.end method
