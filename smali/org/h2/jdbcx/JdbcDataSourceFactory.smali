.class public Lorg/h2/jdbcx/JdbcDataSourceFactory;
.super Ljava/lang/Object;
.source "JdbcDataSourceFactory.java"

# interfaces
.implements Ljavax/naming/spi/ObjectFactory;


# static fields
.field private static cachedTraceSystem:Lorg/h2/message/TraceSystem;


# instance fields
.field private final trace:Lorg/h2/message/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lorg/h2/jdbcx/JdbcDataSourceFactory;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcDataSourceFactory;->trace:Lorg/h2/message/Trace;

    return-void
.end method

.method public static getTraceSystem()Lorg/h2/message/TraceSystem;
    .locals 4

    .line 79
    const-class v0, Lorg/h2/jdbcx/JdbcDataSourceFactory;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lorg/h2/jdbcx/JdbcDataSourceFactory;->cachedTraceSystem:Lorg/h2/message/TraceSystem;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lorg/h2/message/TraceSystem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/h2/engine/SysProperties;->CLIENT_TRACE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "h2datasource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".trace.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/h2/jdbcx/JdbcDataSourceFactory;->cachedTraceSystem:Lorg/h2/message/TraceSystem;

    .line 84
    sget-object v1, Lorg/h2/jdbcx/JdbcDataSourceFactory;->cachedTraceSystem:Lorg/h2/message/TraceSystem;

    sget v2, Lorg/h2/engine/SysProperties;->DATASOURCE_TRACE_LEVEL:I

    invoke-virtual {v1, v2}, Lorg/h2/message/TraceSystem;->setLevelFile(I)V

    .line 86
    :cond_0
    sget-object v1, Lorg/h2/jdbcx/JdbcDataSourceFactory;->cachedTraceSystem:Lorg/h2/message/TraceSystem;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getObjectInstance(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavax/naming/Name;",
            "Ljavax/naming/Context;",
            "Ljava/util/Hashtable<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSourceFactory;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSourceFactory;->trace:Lorg/h2/message/Trace;

    const-string v1, "getObjectInstance obj={0} name={1} nameCtx={2} environment={3}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_0
    instance-of p2, p1, Ljavax/naming/Reference;

    if-eqz p2, :cond_1

    .line 60
    check-cast p1, Ljavax/naming/Reference;

    .line 61
    invoke-virtual {p1}, Ljavax/naming/Reference;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 62
    new-instance p2, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {p2}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    const-string p3, "url"

    .line 63
    invoke-virtual {p1, p3}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/h2/jdbcx/JdbcDataSource;->setURL(Ljava/lang/String;)V

    const-string p3, "user"

    .line 64
    invoke-virtual {p1, p3}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/h2/jdbcx/JdbcDataSource;->setUser(Ljava/lang/String;)V

    const-string p3, "password"

    .line 65
    invoke-virtual {p1, p3}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/h2/jdbcx/JdbcDataSource;->setPassword(Ljava/lang/String;)V

    const-string p3, "description"

    .line 66
    invoke-virtual {p1, p3}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/h2/jdbcx/JdbcDataSource;->setDescription(Ljava/lang/String;)V

    const-string p3, "loginTimeout"

    .line 67
    invoke-virtual {p1, p3}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/h2/jdbcx/JdbcDataSource;->setLoginTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    .line 72
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    throw p1
.end method

.method getTrace()Lorg/h2/message/Trace;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSourceFactory;->trace:Lorg/h2/message/Trace;

    return-object v0
.end method
