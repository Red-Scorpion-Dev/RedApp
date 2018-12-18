.class Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;
.super Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;
.source "WanTcpPlugin.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final PROP_IP_PORT:Ljava/lang/String; = "ipPort"


# instance fields
.field private volatile mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

.field private final portMapper:Lorg/briarproject/bramble/plugin/tcp/PortMapper;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/plugin/tcp/PortMapper;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 32
    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V

    .line 33
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->portMapper:Lorg/briarproject/bramble/plugin/tcp/PortMapper;

    return-void
.end method

.method private chooseEphemeralPort()I
    .locals 4

    .line 76
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    const v1, 0x8000

    add-int/2addr v0, v1

    return v0
.end method

.method private isAcceptableAddress(Ljava/net/InetAddress;)Z
    .locals 3

    .line 68
    instance-of v0, p1, Ljava/net/Inet4Address;

    .line 69
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    .line 70
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    .line 71
    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 38
    sget-object v0, Lorg/briarproject/bramble/api/plugin/WanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method protected getLocalSocketAddresses()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->getLocalProperties()Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v0

    const-string v1, "ipPort"

    .line 45
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->parseSocketAddress(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->getLocalIpAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 48
    invoke-direct {p0, v3}, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->isAcceptableAddress(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    :cond_1
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 56
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->chooseEphemeralPort()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 57
    :goto_1
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->portMapper:Lorg/briarproject/bramble/plugin/tcp/PortMapper;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/plugin/tcp/PortMapper;->map(I)Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    .line 58
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    invoke-virtual {v0}, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    invoke-virtual {v0}, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->getInternal()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_4

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method

.method protected getRemoteSocketAddresses(Lorg/briarproject/bramble/api/properties/TransportProperties;)Ljava/util/List;
    .locals 1
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

    const-string v0, "ipPort"

    .line 82
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->parseSocketAddress(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object p1

    if-nez p1, :cond_0

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected isConnectable(Ljava/net/InetSocketAddress;)Z
    .locals 1

    .line 89
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->isAcceptableAddress(Ljava/net/InetAddress;)Z

    move-result p1

    return p1
.end method

.method protected setLocalSocketAddress(Ljava/net/InetSocketAddress;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    invoke-virtual {v0}, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    invoke-virtual {v0}, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->getInternal()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->mappingResult:Lorg/briarproject/bramble/plugin/tcp/MappingResult;

    invoke-virtual {v0}, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->getExternal()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 102
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    const-string v1, "ipPort"

    .line 103
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->getIpPortString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/WanTcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->mergeLocalProperties(Lorg/briarproject/bramble/api/properties/TransportProperties;)V

    return-void
.end method
