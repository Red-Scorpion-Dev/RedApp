.class Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;
.super Ljava/lang/Object;
.source "PortMapperImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/plugin/tcp/PortMapper;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private volatile gateway:Lorg/bitlet/weupnp/GatewayDevice;

.field private final shutdownManager:Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->gateway:Lorg/bitlet/weupnp/GatewayDevice;

    .line 37
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->shutdownManager:Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    return-void
.end method

.method private deleteMapping(I)V
    .locals 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->gateway:Lorg/bitlet/weupnp/GatewayDevice;

    const-string v1, "TCP"

    invoke-virtual {v0, p1, v1}, Lorg/bitlet/weupnp/GatewayDevice;->deletePortMapping(ILjava/lang/String;)Z

    .line 88
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted mapping for port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x25

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$map$0(Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->deleteMapping(I)V

    return-void
.end method

.method private start()V
    .locals 4

    .line 76
    new-instance v0, Lorg/bitlet/weupnp/GatewayDiscover;

    invoke-direct {v0}, Lorg/bitlet/weupnp/GatewayDiscover;-><init>()V

    .line 78
    :try_start_0
    invoke-virtual {v0}, Lorg/bitlet/weupnp/GatewayDiscover;->discover()Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 82
    :goto_0
    invoke-virtual {v0}, Lorg/bitlet/weupnp/GatewayDiscover;->getValidGateway()Lorg/bitlet/weupnp/GatewayDevice;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->gateway:Lorg/bitlet/weupnp/GatewayDevice;

    return-void
.end method


# virtual methods
.method public map(I)Lorg/briarproject/bramble/plugin/tcp/MappingResult;
    .locals 9

    .line 42
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->start()V

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->gateway:Lorg/bitlet/weupnp/GatewayDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 44
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->gateway:Lorg/bitlet/weupnp/GatewayDevice;

    invoke-virtual {v0}, Lorg/bitlet/weupnp/GatewayDevice;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 46
    :cond_2
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubInetAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x0

    .line 51
    :try_start_0
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->gateway:Lorg/bitlet/weupnp/GatewayDevice;

    .line 52
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TCP"

    const-string v8, "TCP"

    move v4, p1

    move v5, p1

    .line 51
    invoke-virtual/range {v3 .. v8}, Lorg/bitlet/weupnp/GatewayDevice;->addPortMapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_4

    .line 54
    :try_start_1
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->shutdownManager:Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    new-instance v4, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$PortMapperImpl$abnIWu8atWi7X1tl6Qy1mfho73Q;

    invoke-direct {v4, p0, p1}, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$PortMapperImpl$abnIWu8atWi7X1tl6Qy1mfho73Q;-><init>(Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;I)V

    invoke-interface {v2, v4}, Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;->addShutdownHook(Ljava/lang/Runnable;)I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 56
    :cond_4
    :goto_0
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->gateway:Lorg/bitlet/weupnp/GatewayDevice;

    invoke-virtual {v2}, Lorg/bitlet/weupnp/GatewayDevice;->getExternalIPAddress()Ljava/lang/String;

    move-result-object v2

    .line 57
    sget-object v4, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 58
    sget-object v4, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "External address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {v2}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubInetAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 61
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v2, v3

    const/4 v3, 0x0

    .line 63
    :goto_1
    sget-object v4, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v4, v5, v2}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 65
    :cond_6
    :goto_2
    new-instance v2, Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    invoke-direct {v2, v0, v1, p1, v3}, Lorg/briarproject/bramble/plugin/tcp/MappingResult;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;IZ)V

    return-object v2
.end method
