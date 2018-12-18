.class public Lorg/h2/util/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field private static final CACHE_MILLIS:I = 0x3e8

.field private static cachedBindAddress:Ljava/net/InetAddress;

.field private static cachedLocalAddress:Ljava/lang/String;

.field private static cachedLocalAddressTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    if-eqz p0, :cond_0

    .line 238
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createLoopbackSocket(IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {}, Lorg/h2/util/NetUtils;->getBindAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 51
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/h2/util/NetUtils;->getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/h2/util/NetUtils;->createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "localhost"

    .line 54
    invoke-static {v1, p0, p1}, Lorg/h2/util/NetUtils;->createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 57
    :catch_1
    throw v0
.end method

.method public static createServerSocket(IZ)Ljava/net/ServerSocket;
    .locals 1

    .line 162
    :try_start_0
    invoke-static {p0, p1}, Lorg/h2/util/NetUtils;->createServerSocketTry(IZ)Ljava/net/ServerSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 165
    :catch_0
    invoke-static {p0, p1}, Lorg/h2/util/NetUtils;->createServerSocketTry(IZ)Ljava/net/ServerSocket;

    move-result-object p0

    return-object p0
.end method

.method private static createServerSocketTry(IZ)Ljava/net/ServerSocket;
    .locals 5

    const/4 v0, 0x0

    .line 190
    :try_start_0
    invoke-static {}, Lorg/h2/util/NetUtils;->getBindAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 192
    invoke-static {p0, v1}, Lorg/h2/security/CipherFactory;->createServerSocket(ILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v1

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 195
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, p0}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v1

    .line 197
    :cond_1
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p0, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ssl: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    const v1, 0x15fcd

    const/4 v2, 0x2

    .line 199
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const/4 p0, 0x1

    invoke-virtual {p1}, Ljava/net/BindException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p0

    invoke-static {v1, p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "["

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x3a

    .line 96
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 99
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 101
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 102
    invoke-static {p0, p1, p2}, Lorg/h2/util/NetUtils;->createSocket(Ljava/net/InetAddress;IZ)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public static createSocket(Ljava/net/InetAddress;IZ)Ljava/net/Socket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 119
    :try_start_0
    invoke-static {p0, p1}, Lorg/h2/security/CipherFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v3

    goto :goto_1

    .line 121
    :cond_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 122
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget v5, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_TIMEOUT:I

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 126
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sget v6, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_TIMEOUT:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 132
    sget v4, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_RETRY:I

    if-ge v2, v4, :cond_1

    const/16 v3, 0x100

    mul-int v4, v2, v2

    .line 138
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    .line 139
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    throw v3

    .line 130
    :cond_2
    throw v3
.end method

.method private static getBindAddress()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 176
    sget-object v0, Lorg/h2/engine/SysProperties;->BIND_ADDRESS:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    const-class v1, Lorg/h2/util/NetUtils;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-object v2, Lorg/h2/util/NetUtils;->cachedBindAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    .line 182
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lorg/h2/util/NetUtils;->cachedBindAddress:Ljava/net/InetAddress;

    .line 184
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    sget-object v0, Lorg/h2/util/NetUtils;->cachedBindAddress:Ljava/net/InetAddress;

    return-object v0

    :catchall_0
    move-exception v0

    .line 184
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2

    .line 70
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 71
    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_0

    const/16 p0, 0x3a

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const-string p0, "["

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 293
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "unknown"

    return-object p0
.end method

.method public static declared-synchronized getLocalAddress()Ljava/lang/String;
    .locals 7

    const-class v0, Lorg/h2/util/NetUtils;

    monitor-enter v0

    .line 253
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 254
    sget-object v3, Lorg/h2/util/NetUtils;->cachedLocalAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 255
    sget-wide v3, Lorg/h2/util/NetUtils;->cachedLocalAddressTime:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 256
    sget-object v1, Lorg/h2/util/NetUtils;->cachedLocalAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 262
    :try_start_1
    invoke-static {}, Lorg/h2/util/NetUtils;->getBindAddress()Ljava/net/InetAddress;

    move-result-object v5
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_1
    move-object v3, v5

    :catch_0
    if-eqz v4, :cond_2

    .line 271
    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 273
    :try_start_3
    invoke-static {v1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    const-string v3, "localhost"

    goto :goto_1

    .line 276
    :cond_3
    invoke-static {v3}, Lorg/h2/util/NetUtils;->getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "127.0.0.1"

    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "localhost"

    .line 280
    :cond_4
    sput-object v3, Lorg/h2/util/NetUtils;->cachedLocalAddress:Ljava/lang/String;

    .line 281
    sput-wide v1, Lorg/h2/util/NetUtils;->cachedLocalAddressTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    .line 252
    monitor-exit v0

    throw v1
.end method

.method public static isLocalAddress(Ljava/net/Socket;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 218
    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 222
    invoke-virtual {p0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
