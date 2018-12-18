.class public Lorg/bitlet/weupnp/GatewayDiscover;
.super Ljava/lang/Object;
.source "GatewayDiscover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_SEARCH_TYPES:[Ljava/lang/String;


# instance fields
.field private final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lorg/bitlet/weupnp/GatewayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private searchTypes:[Ljava/lang/String;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 83
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "urn:schemas-upnp-org:device:InternetGatewayDevice:1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "urn:schemas-upnp-org:service:WANIPConnection:1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "urn:schemas-upnp-org:service:WANPPPConnection:1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/bitlet/weupnp/GatewayDiscover;->DEFAULT_SEARCH_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 170
    sget-object v0, Lorg/bitlet/weupnp/GatewayDiscover;->DEFAULT_SEARCH_TYPES:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/bitlet/weupnp/GatewayDiscover;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 73
    iput v0, p0, Lorg/bitlet/weupnp/GatewayDiscover;->timeout:I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bitlet/weupnp/GatewayDiscover;->devices:Ljava/util/Map;

    .line 188
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDiscover;->searchTypes:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/bitlet/weupnp/GatewayDiscover;)I
    .locals 0

    .line 53
    iget p0, p0, Lorg/bitlet/weupnp/GatewayDiscover;->timeout:I

    return p0
.end method

.method static synthetic access$100(Lorg/bitlet/weupnp/GatewayDiscover;[B)Lorg/bitlet/weupnp/GatewayDevice;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/bitlet/weupnp/GatewayDiscover;->parseMSearchReply([B)Lorg/bitlet/weupnp/GatewayDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/bitlet/weupnp/GatewayDiscover;)[Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/bitlet/weupnp/GatewayDiscover;->searchTypes:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/bitlet/weupnp/GatewayDiscover;)Ljava/util/Map;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/bitlet/weupnp/GatewayDiscover;->devices:Ljava/util/Map;

    return-object p0
.end method

.method private getLocalInetAddresses(ZZZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 354
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 355
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 359
    :try_start_1
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isPointToPoint()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_2

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 371
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_7

    .line 381
    const-class v6, Ljava/net/Inet4Address;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 376
    const-class v6, Ljava/net/Inet4Address;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 379
    const-class v6, Ljava/net/Inet6Address;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    move v7, v5

    move v5, v2

    move v2, v7

    .line 385
    :goto_3
    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v5

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_8
    return-object v0

    :catch_1
    return-object v0
.end method

.method private parseMSearchReply([B)Lorg/bitlet/weupnp/GatewayDevice;
    .locals 5

    .line 270
    new-instance v0, Lorg/bitlet/weupnp/GatewayDevice;

    invoke-direct {v0}, Lorg/bitlet/weupnp/GatewayDevice;-><init>()V

    .line 272
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 273
    new-instance p1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 276
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "HTTP/1."

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NOTIFY *"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/16 v3, 0x3a

    .line 284
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 287
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 289
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v3, "location"

    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 293
    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setLocation(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "st"

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setSt(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public discover()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lorg/bitlet/weupnp/GatewayDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0, v0, v1, v1}, Lorg/bitlet/weupnp/GatewayDiscover;->getLocalInetAddresses(ZZZ)Ljava/util/List;

    move-result-object v0

    .line 228
    :goto_0
    iget-object v2, p0, Lorg/bitlet/weupnp/GatewayDiscover;->searchTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M-SEARCH * HTTP/1.1\r\nHOST: 239.255.255.250:1900\r\nST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/bitlet/weupnp/GatewayDiscover;->searchTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MAN: \"ssdp:discover\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MX: 2\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 240
    new-instance v6, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;

    invoke-direct {v6, p0, v5, v2}, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;-><init>(Lorg/bitlet/weupnp/GatewayDiscover;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 241
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v6}, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->start()V

    goto :goto_1

    .line 246
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;

    .line 248
    :try_start_0
    invoke-virtual {v3}, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 254
    :cond_1
    iget-object v2, p0, Lorg/bitlet/weupnp/GatewayDiscover;->devices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDiscover;->devices:Ljava/util/Map;

    return-object v0
.end method

.method public getValidGateway()Lorg/bitlet/weupnp/GatewayDevice;
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDiscover;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitlet/weupnp/GatewayDevice;

    .line 313
    :try_start_0
    invoke-virtual {v1}, Lorg/bitlet/weupnp/GatewayDevice;->isConnected()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
