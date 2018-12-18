.class public Lorg/h2/Driver;
.super Ljava/lang/Object;
.source "Driver.java"

# interfaces
.implements Ljava/sql/Driver;


# static fields
.field private static final DEFAULT_CONNECTION:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_URL:Ljava/lang/String; = "jdbc:default:connection"

.field private static final INSTANCE:Lorg/h2/Driver;

.field private static volatile registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/h2/Driver;

    invoke-direct {v0}, Lorg/h2/Driver;-><init>()V

    sput-object v0, Lorg/h2/Driver;->INSTANCE:Lorg/h2/Driver;

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/h2/Driver;->DEFAULT_CONNECTION:Ljava/lang/ThreadLocal;

    .line 44
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized load()Lorg/h2/Driver;
    .locals 2

    const-class v0, Lorg/h2/Driver;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-boolean v1, Lorg/h2/Driver;->registered:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 159
    sput-boolean v1, Lorg/h2/Driver;->registered:Z

    .line 160
    sget-object v1, Lorg/h2/Driver;->INSTANCE:Lorg/h2/Driver;

    invoke-static {v1}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 163
    :try_start_1
    invoke-static {v1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    .line 165
    :cond_0
    :goto_0
    sget-object v1, Lorg/h2/Driver;->INSTANCE:Lorg/h2/Driver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 157
    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static setDefaultConnection(Ljava/sql/Connection;)V
    .locals 1

    if-nez p0, :cond_0

    .line 189
    sget-object p0, Lorg/h2/Driver;->DEFAULT_CONNECTION:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 191
    :cond_0
    sget-object v0, Lorg/h2/Driver;->DEFAULT_CONNECTION:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setThreadContextClassLoader(Ljava/lang/Thread;)V
    .locals 1

    .line 206
    :try_start_0
    const-class v0, Lorg/h2/Driver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static declared-synchronized unload()V
    .locals 2

    const-class v0, Lorg/h2/Driver;

    monitor-enter v0

    .line 173
    :try_start_0
    sget-boolean v1, Lorg/h2/Driver;->registered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 174
    sput-boolean v1, Lorg/h2/Driver;->registered:Z

    .line 175
    sget-object v1, Lorg/h2/Driver;->INSTANCE:Lorg/h2/Driver;

    invoke-static {v1}, Ljava/sql/DriverManager;->deregisterDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 178
    :try_start_1
    invoke-static {v1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 172
    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "jdbc:h2:"

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "jdbc:default:connection"

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    sget-object p1, Lorg/h2/Driver;->DEFAULT_CONNECTION:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 60
    :try_start_0
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/Driver;->acceptsURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string v0, "jdbc:default:connection"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    sget-object p1, Lorg/h2/Driver;->DEFAULT_CONNECTION:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Connection;

    return-object p1

    .line 68
    :cond_2
    invoke-static {p1, p2}, Lorg/h2/upgrade/DbUpgrade;->connectOrUpgrade(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 72
    :cond_3
    new-instance v0, Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, p1, p2}, Lorg/h2/jdbc/JdbcConnection;-><init>(Ljava/lang/String;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 74
    :goto_1
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getMajorVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .locals 0

    const/4 p1, 0x0

    .line 129
    new-array p1, p1, [Ljava/sql/DriverPropertyInfo;

    return-object p1
.end method

.method public jdbcCompliant()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
