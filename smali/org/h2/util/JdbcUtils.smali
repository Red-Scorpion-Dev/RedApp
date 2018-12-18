.class public Lorg/h2/util/JdbcUtils;
.super Ljava/lang/Object;
.source "JdbcUtils.java"


# static fields
.field private static final DRIVERS:[Ljava/lang/String;

.field private static allowAllClasses:Z

.field private static allowedClassNamePrefixes:[Ljava/lang/String;

.field private static allowedClassNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static serializer:Lorg/h2/api/JavaObjectSerializer;

.field private static userClassFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/Utils$ClassFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x32

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "h2:"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "org.h2.Driver"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Cache:"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.intersys.jdbc.CacheDriver"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "daffodilDB://"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "in.co.daffodil.db.rmi.RmiDaffodilDBDriver"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "daffodil"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "in.co.daffodil.db.jdbc.DaffodilDBDriver"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "db2:"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "com.ibm.db2.jcc.DB2Driver"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "derby:net:"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "org.apache.derby.jdbc.ClientDriver"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "derby://"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "org.apache.derby.jdbc.ClientDriver"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "derby:"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "org.apache.derby.jdbc.EmbeddedDriver"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "FrontBase:"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "com.frontbase.jdbc.FBJDriver"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "firebirdsql:"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "org.firebirdsql.jdbc.FBDriver"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "hsqldb:"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "org.hsqldb.jdbcDriver"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "informix-sqli:"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "com.informix.jdbc.IfxDriver"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "jtds:"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "net.sourceforge.jtds.jdbc.Driver"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "microsoft:"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "com.microsoft.jdbc.sqlserver.SQLServerDriver"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "mimer:"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "com.mimer.jdbc.Driver"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "mysql:"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "com.mysql.jdbc.Driver"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "odbc:"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "sun.jdbc.odbc.JdbcOdbcDriver"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "oracle:"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "oracle.jdbc.driver.OracleDriver"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "pervasive:"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "com.pervasive.jdbc.v2.Driver"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "pointbase:micro:"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "com.pointbase.me.jdbc.jdbcDriver"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "pointbase:"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "com.pointbase.jdbc.jdbcUniversalDriver"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "postgresql:"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "org.postgresql.Driver"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "sybase:"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "com.sybase.jdbc3.jdbc.SybDriver"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "sqlserver:"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "com.microsoft.sqlserver.jdbc.SQLServerDriver"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "teradata:"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "com.ncr.teradata.TeraDriver"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sput-object v0, Lorg/h2/util/JdbcUtils;->DRIVERS:[Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/h2/util/JdbcUtils;->userClassFactories:Ljava/util/ArrayList;

    .line 112
    sget-object v0, Lorg/h2/engine/SysProperties;->JAVA_OBJECT_SERIALIZER:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/JavaObjectSerializer;

    sput-object v0, Lorg/h2/util/JdbcUtils;->serializer:Lorg/h2/api/JavaObjectSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClassFactory(Lorg/h2/util/Utils$ClassFactory;)V
    .locals 1

    .line 90
    invoke-static {}, Lorg/h2/util/JdbcUtils;->getUserClassFactories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static closeSilently(Ljava/sql/Connection;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 223
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/sql/ResultSet;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 238
    :try_start_0
    invoke-interface {p0}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/sql/Statement;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 208
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 378
    :try_start_0
    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 381
    invoke-interface {v0, p0}, Lorg/h2/api/JavaObjectSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 383
    :cond_1
    sget-object p1, Lorg/h2/util/JdbcUtils;->serializer:Lorg/h2/api/JavaObjectSerializer;

    if-eqz p1, :cond_2

    .line 384
    sget-object p1, Lorg/h2/util/JdbcUtils;->serializer:Lorg/h2/api/JavaObjectSerializer;

    invoke-interface {p1, p0}, Lorg/h2/api/JavaObjectSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 386
    :cond_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 388
    sget-boolean p0, Lorg/h2/engine/SysProperties;->USE_THREAD_CONTEXT_CLASS_LOADER:Z

    if-eqz p0, :cond_3

    .line 389
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 390
    new-instance v0, Lorg/h2/util/JdbcUtils$1;

    invoke-direct {v0, p1, p0}, Lorg/h2/util/JdbcUtils$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 402
    :cond_3
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 404
    :goto_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    const p1, 0x15fab

    const/4 v0, 0x1

    .line 406
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "user"

    .line 258
    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "password"

    .line 261
    invoke-virtual {v0, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    :cond_1
    invoke-static {p0, p1, v0}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 276
    invoke-static {p0}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->load(Ljava/lang/String;)V

    .line 301
    invoke-static {p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0

    .line 279
    :cond_0
    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 280
    const-class v0, Ljava/sql/Driver;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-static {p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0

    .line 282
    :cond_1
    const-class v0, Ljavax/naming/Context;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/naming/Context;

    .line 286
    invoke-interface {p0, p1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/sql/DataSource;

    const-string p1, "user"

    .line 287
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "password"

    .line 288
    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 289
    invoke-static {p1}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    return-object p0

    .line 292
    :cond_2
    invoke-interface {p0, p1, p2}, Ljavax/sql/DataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 294
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 298
    :cond_3
    invoke-static {p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "jdbc:"

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "jdbc:"

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 314
    :goto_0
    sget-object v1, Lorg/h2/util/JdbcUtils;->DRIVERS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 315
    sget-object v1, Lorg/h2/util/JdbcUtils;->DRIVERS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 316
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    sget-object p0, Lorg/h2/util/JdbcUtils;->DRIVERS:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUserClassFactories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/Utils$ClassFactory;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lorg/h2/util/JdbcUtils;->userClassFactories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/h2/util/JdbcUtils;->userClassFactories:Ljava/util/ArrayList;

    .line 108
    :cond_0
    sget-object v0, Lorg/h2/util/JdbcUtils;->userClassFactories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 0

    .line 330
    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->getDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 332
    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static loadUserClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 132
    sget-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNames:Ljava/util/HashSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 134
    sget-object v0, Lorg/h2/engine/SysProperties;->ALLOWED_CLASSES:Ljava/lang/String;

    .line 135
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 137
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v4

    const/16 v5, 0x2c

    .line 138
    invoke-static {v0, v5, v2}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v8, v0, v6

    const-string v9, "*"

    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const-string v9, "*"

    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 142
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNamePrefixes:[Ljava/lang/String;

    .line 148
    sget-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNamePrefixes:[Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    sput-boolean v7, Lorg/h2/util/JdbcUtils;->allowAllClasses:Z

    .line 150
    sput-object v4, Lorg/h2/util/JdbcUtils;->allowedClassNames:Ljava/util/HashSet;

    .line 152
    :cond_3
    sget-boolean v0, Lorg/h2/util/JdbcUtils;->allowAllClasses:Z

    if-nez v0, :cond_7

    sget-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNames:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 154
    sget-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNamePrefixes:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v6, v0, v4

    .line 155
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    const v0, 0x16016

    .line 160
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 165
    :cond_7
    :goto_3
    invoke-static {}, Lorg/h2/util/JdbcUtils;->getUserClassFactories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x15fe6

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/util/Utils$ClassFactory;

    .line 166
    invoke-interface {v3, p0}, Lorg/h2/util/Utils$ClassFactory;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 168
    :try_start_0
    invoke-interface {v3, p0}, Lorg/h2/util/Utils$ClassFactory;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_8

    return-object v3

    :catch_0
    move-exception v0

    .line 173
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v4, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 180
    :cond_9
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    const v3, 0xc350

    .line 195
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v3, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception v0

    .line 191
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v4, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :catch_3
    move-exception v0

    .line 183
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    return-object v3

    .line 187
    :catch_4
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v4, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static removeClassFactory(Lorg/h2/util/Utils$ClassFactory;)V
    .locals 1

    .line 99
    invoke-static {}, Lorg/h2/util/JdbcUtils;->getUserClassFactories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static serialize(Ljava/lang/Object;Lorg/h2/store/DataHandler;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 348
    :try_start_0
    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 351
    invoke-interface {v0, p0}, Lorg/h2/api/JavaObjectSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 353
    :cond_1
    sget-object p1, Lorg/h2/util/JdbcUtils;->serializer:Lorg/h2/api/JavaObjectSerializer;

    if-eqz p1, :cond_2

    .line 354
    sget-object p1, Lorg/h2/util/JdbcUtils;->serializer:Lorg/h2/api/JavaObjectSerializer;

    invoke-interface {p1, p0}, Lorg/h2/api/JavaObjectSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 356
    :cond_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 358
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const p1, 0x15faa

    const/4 v0, 0x1

    .line 361
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method
