.class Lorg/briarproject/bramble/db/H2Database;
.super Lorg/briarproject/bramble/db/JdbcDatabase;
.source "H2Database.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final BINARY_TYPE:Ljava/lang/String; = "BINARY"

.field private static final COUNTER_TYPE:Ljava/lang/String; = "INT NOT NULL AUTO_INCREMENT"

.field private static final HASH_TYPE:Ljava/lang/String; = "BINARY(32)"

.field private static final SECRET_TYPE:Ljava/lang/String; = "BINARY(32)"

.field private static final STRING_TYPE:Ljava/lang/String; = "VARCHAR"

.field private static final dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;


# instance fields
.field private final config:Lorg/briarproject/bramble/api/db/DatabaseConfig;

.field private volatile key:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v6, Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "BINARY(32)"

    const-string v2, "BINARY(32)"

    const-string v3, "BINARY"

    const-string v4, "INT NOT NULL AUTO_INCREMENT"

    const-string v5, "VARCHAR"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/db/DatabaseTypes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/briarproject/bramble/db/H2Database;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 1

    .line 45
    sget-object v0, Lorg/briarproject/bramble/db/H2Database;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    invoke-direct {p0, v0, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;-><init>(Lorg/briarproject/bramble/db/DatabaseTypes;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)V

    const/4 p2, 0x0

    .line 39
    iput-object p2, p0, Lorg/briarproject/bramble/db/H2Database;->key:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 46
    iput-object p1, p0, Lorg/briarproject/bramble/db/H2Database;->config:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    .line 47
    invoke-interface {p1}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getDatabaseDirectory()Ljava/io/File;

    move-result-object p1

    .line 48
    new-instance p2, Ljava/io/File;

    const-string p3, "db"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "jdbc:h2:split:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";CIPHER=AES;MULTI_THREADED=1;WRITE_DELAY=0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/db/H2Database;->url:Ljava/lang/String;

    return-void
.end method

.method private getDiskSpace(Ljava/io/File;)J
    .locals 6

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lorg/briarproject/bramble/db/H2Database;->getDiskSpace(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-super {p0}, Lorg/briarproject/bramble/db/JdbcDatabase;->closeAllConnections()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected compactAndClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/H2Database;->createConnection()Ljava/sql/Connection;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    :try_start_1
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/H2Database;->closeAllConnections()V

    .line 119
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "SHUTDOWN COMPACT"

    .line 120
    invoke-interface {v2, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 121
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 122
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 124
    :goto_0
    invoke-virtual {p0, v2}, Lorg/briarproject/bramble/db/H2Database;->tryToClose(Ljava/sql/Statement;)V

    .line 125
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/H2Database;->tryToClose(Ljava/sql/Connection;)V

    .line 126
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createConnection()Ljava/sql/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/briarproject/bramble/db/H2Database;->key:Lorg/briarproject/bramble/api/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v2, "user"

    const-string v3, "user"

    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "password"

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " password"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/H2Database;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getFreeSpace()J
    .locals 7

    .line 74
    iget-object v0, p0, Lorg/briarproject/bramble/db/H2Database;->config:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getDatabaseDirectory()Ljava/io/File;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lorg/briarproject/bramble/db/H2Database;->config:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getMaxSize()J

    move-result-wide v1

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    .line 77
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/db/H2Database;->getDiskSpace(Ljava/io/File;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 79
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/briarproject/bramble/db/H2Database;->url:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/db/MigrationListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lorg/briarproject/bramble/db/H2Database;->key:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 57
    iget-object v0, p0, Lorg/briarproject/bramble/db/H2Database;->config:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getDatabaseDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "org.h2.Driver"

    .line 58
    invoke-super {p0, v1, v0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->open(Ljava/lang/String;ZLorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/db/MigrationListener;)V

    return v0
.end method
