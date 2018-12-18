.class abstract Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;
.super Ljava/lang/Object;
.source "TcpPlugin.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final DOTTED_QUAD:Ljava/util/regex/Pattern;

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected final backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

.field protected final bindExecutor:Ljava/util/concurrent/Executor;

.field protected final callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

.field protected final ioExecutor:Ljava/util/concurrent/Executor;

.field protected final maxIdleTime:I

.field protected final maxLatency:I

.field protected volatile running:Z

.field protected volatile socket:Ljava/net/ServerSocket;

.field protected final socketTimeout:I

.field protected final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->DOTTED_QUAD:Ljava/util/regex/Pattern;

    .line 52
    const-class v0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->running:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    .line 90
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 91
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    .line 92
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    .line 93
    iput p4, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->maxLatency:I

    .line 94
    iput p5, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->maxIdleTime:I

    const p2, 0x3fffffff    # 1.9999999f

    if-le p5, p2, :cond_0

    const p2, 0x7fffffff

    .line 96
    iput p2, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socketTimeout:I

    goto :goto_0

    :cond_0
    mul-int/lit8 p5, p5, 0x2

    .line 97
    iput p5, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socketTimeout:I

    .line 99
    :goto_0
    new-instance p2, Lorg/briarproject/bramble/PoliteExecutor;

    const-string p3, "TcpPlugin"

    const/4 p4, 0x1

    invoke-direct {p2, p3, p1, p4}, Lorg/briarproject/bramble/PoliteExecutor;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;I)V

    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->bindExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private acceptContactConnections()V
    .locals 4

    .line 173
    :goto_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 177
    iget v1, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socketTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {v3}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 187
    new-instance v1, Lorg/briarproject/bramble/plugin/tcp/TcpTransportConnection;

    invoke-direct {v1, p0, v0}, Lorg/briarproject/bramble/plugin/tcp/TcpTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/net/Socket;)V

    .line 188
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->incomingConnectionCreated(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method private connectAndCallBack(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/properties/TransportProperties;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;

    invoke-direct {v1, p0, p2, p1}, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$5xO7CqzfOTp_eOSHFJ2uzvh7zLE;-><init>(Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;Lorg/briarproject/bramble/api/properties/TransportProperties;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$bind$0(Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;)V
    .locals 6

    .line 121
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->getLocalSocketAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 126
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-object v0, v3

    goto :goto_1

    :catch_1
    nop

    .line 130
    :goto_1
    sget-object v3, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    sget-object v3, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 132
    :cond_2
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    .line 135
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 139
    :cond_4
    iget-boolean v1, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->running:Z

    if-nez v1, :cond_5

    .line 140
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    return-void

    .line 143
    :cond_5
    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    .line 144
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 146
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 147
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->setLocalSocketAddress(Ljava/net/InetSocketAddress;)V

    .line 148
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listening on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 150
    :cond_6
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportEnabled()V

    .line 151
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->acceptContactConnections()V

    return-void

    .line 136
    :cond_7
    :goto_3
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Could not bind server socket"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$connectAndCallBack$1(Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;Lorg/briarproject/bramble/api/properties/TransportProperties;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 224
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->createConnection(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 227
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->outgoingConnectionCreated(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bind()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->bindExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$uW6V8780O_W211y3Jq96bZYsB4U;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$TcpPlugin$uW6V8780O_W211y3Jq96bZYsB4U;-><init>(Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createConnection(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 6

    .line 234
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->getRemoteSocketAddresses(Lorg/briarproject/bramble/api/properties/TransportProperties;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 236
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->isConnectable(Ljava/net/InetSocketAddress;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 239
    sget-object v3, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not connectable from "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {v2}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    :try_start_0
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 248
    :cond_3
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->createSocket()Ljava/net/Socket;

    move-result-object v2

    .line 249
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 250
    invoke-virtual {v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 251
    iget v3, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socketTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 252
    sget-object v3, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 253
    sget-object v3, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 254
    :cond_4
    new-instance v3, Lorg/briarproject/bramble/plugin/tcp/TcpTransportConnection;

    invoke-direct {v3, p0, v2}, Lorg/briarproject/bramble/plugin/tcp/TcpTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    nop

    .line 256
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {v0}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-object v1
.end method

.method public createKeyAgreementConnection([BLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 0

    .line 305
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createKeyAgreementListener([B)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;
    .locals 0

    .line 299
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method getIpPortString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3

    .line 166
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getLocalIpAddresses()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 310
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 314
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    .line 317
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLocalSocketAddresses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->maxIdleTime:I

    return v0
.end method

.method public getMaxLatency()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->maxLatency:I

    return v0
.end method

.method public getPollingInterval()I
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->getPollingInterval()I

    move-result v0

    return v0
.end method

.method protected abstract getRemoteSocketAddresses(Lorg/briarproject/bramble/api/properties/TransportProperties;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract isConnectable(Ljava/net/InetSocketAddress;)Z
.end method

.method public isRunning()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method parseSocketAddress(Ljava/lang/String;)Ljava/net/InetSocketAddress;
    .locals 5

    .line 270
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ":"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 272
    array-length v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 273
    aget-object v0, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    .line 275
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->DOTTED_QUAD:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 277
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 279
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    nop

    .line 286
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    return-object v1

    :catch_1
    nop

    .line 281
    sget-object p1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 283
    sget-object p1, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public poll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)V"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->increment()V

    .line 217
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {p0, v1, v0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->connectAndCallBack(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/properties/TransportProperties;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract setLocalSocketAddress(Ljava/net/InetSocketAddress;)V
.end method

.method public shouldPoll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->running:Z

    .line 116
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->bind()V

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->running:Z

    .line 195
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    return-void
.end method

.method public supportsKeyAgreement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected tryToClose(Ljava/net/ServerSocket;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    :try_start_1
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 161
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportDisabled()V

    .line 162
    throw p1

    .line 161
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportDisabled()V

    return-void
.end method
