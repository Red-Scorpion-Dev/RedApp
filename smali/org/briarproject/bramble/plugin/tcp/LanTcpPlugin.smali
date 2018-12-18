.class Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;
.super Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;
.source "LanTcpPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanAddressComparator;,
        Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final ADDRESS_COMPARATOR:Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanAddressComparator;

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final MAX_ADDRESSES:I = 0x4

.field private static final SEPARATOR:Ljava/lang/String; = ","


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    .line 47
    new-instance v0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanAddressComparator;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanAddressComparator;-><init>()V

    sput-object v0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->ADDRESS_COMPARATOR:Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanAddressComparator;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/bramble/plugin/tcp/TcpPlugin;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 42
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/InetAddress;)I
    .locals 0

    .line 42
    invoke-static {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->getRfc1918PrefixLength(Ljava/net/InetAddress;)I

    move-result p0

    return p0
.end method

.method private static getRfc1918PrefixLength(Ljava/net/InetAddress;)I
    .locals 2

    .line 182
    instance-of v0, p0, Ljava/net/Inet4Address;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 185
    invoke-static {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix10([B)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x8

    return p0

    .line 186
    :cond_2
    invoke-static {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix172([B)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0xc

    return p0

    .line 187
    :cond_3
    invoke-static {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix192([B)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x10

    return p0

    :cond_4
    return v1
.end method

.method private isAcceptableAddress(Ljava/net/InetAddress;)Z
    .locals 3

    .line 137
    instance-of v0, p1, Ljava/net/Inet4Address;

    .line 138
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    .line 139
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    .line 140
    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isPrefix10([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 168
    aget-byte p0, p0, v0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isPrefix172([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 172
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, -0x54

    if-ne v1, v3, :cond_0

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xf0

    const/16 v1, 0x10

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isPrefix192([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 176
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, -0x40

    if-ne v1, v3, :cond_0

    aget-byte p0, p0, v2

    const/16 v1, -0x58

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private parseSocketAddress(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    const/4 v2, 0x2

    .line 265
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    if-lt p1, v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 268
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 272
    :catch_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 266
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private parseSocketAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, ","

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 89
    invoke-virtual {p0, v3}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->parseSocketAddress(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method addressesAreOnSameLan([B[B)Z
    .locals 1

    .line 158
    invoke-static {p1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix10([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix10([B)Z

    move-result p1

    return p1

    .line 160
    :cond_0
    invoke-static {p1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix172([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix172([B)Z

    move-result p1

    return p1

    .line 162
    :cond_1
    invoke-static {p1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix192([B)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isPrefix192([B)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public createKeyAgreementConnection([BLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 4

    .line 228
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isRunning()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 231
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->parseSocketAddress(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/net/InetSocketAddress;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isConnectable(Ljava/net/InetSocketAddress;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 237
    sget-object p2, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 238
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {p2}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p2

    .line 239
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not connectable from "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {p2}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 246
    :cond_2
    :try_start_1
    sget-object p2, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 247
    sget-object p2, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 248
    :cond_3
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->createSocket()Ljava/net/Socket;

    move-result-object p2

    .line 249
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p2, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 250
    invoke-virtual {p2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 251
    iget v1, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->socketTimeout:I

    invoke-virtual {p2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 252
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 254
    :cond_4
    new-instance v1, Lorg/briarproject/bramble/plugin/tcp/TcpTransportConnection;

    invoke-direct {v1, p0, p2}, Lorg/briarproject/bramble/plugin/tcp/TcpTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    nop

    .line 256
    sget-object p2, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 257
    sget-object p2, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_5
    return-object v0

    .line 233
    :catch_1
    sget-object p1, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Invalid IP/port in key agreement descriptor"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v0
.end method

.method public createKeyAgreementListener([B)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;
    .locals 6

    .line 199
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->getLocalSocketAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 201
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 203
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catch_1
    nop

    .line 207
    :goto_1
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    sget-object v2, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 209
    :cond_0
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {v1}, Ljava/net/ServerSocket;->isBound()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 216
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/data/BdfList;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/data/BdfList;-><init>()V

    const/4 v2, 0x1

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 220
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v2, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;-><init>(Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;Lorg/briarproject/bramble/api/data/BdfList;Ljava/net/ServerSocket;Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$1;)V

    return-object v2

    .line 213
    :cond_3
    :goto_3
    sget-object p1, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Could not bind server socket for key agreement"

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 60
    sget-object v0, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

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

    .line 66
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->getLocalProperties()Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v0

    const-string v1, "ipPorts"

    .line 67
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->parseSocketAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->getLocalIpAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 71
    invoke-direct {p0, v3}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isAcceptableAddress(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    .line 74
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v6, v3, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_2
    new-instance v4, Ljava/net/InetSocketAddress;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_3
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->ADDRESS_COMPARATOR:Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanAddressComparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

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

    const-string v0, "ipPorts"

    .line 132
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->parseSocketAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected isConnectable(Ljava/net/InetSocketAddress;)Z
    .locals 2

    .line 146
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->isAcceptableAddress(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->socket:Ljava/net/ServerSocket;

    if-nez v0, :cond_2

    return v1

    .line 150
    :cond_2
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 152
    invoke-virtual {p0, v0, p1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->addressesAreOnSameLan([B[B)Z

    move-result p1

    return p1
.end method

.method protected setLocalSocketAddress(Ljava/net/InetSocketAddress;)V
    .locals 3

    .line 97
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->getIpPortString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    const-string v1, "ipPorts"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 104
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, ","

    .line 107
    invoke-static {v1, p1}, Lorg/briarproject/bramble/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_2

    .line 113
    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :cond_2
    const-string p1, ","

    .line 114
    invoke-static {v1, p1}, Lorg/briarproject/bramble/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, ","

    .line 118
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    const-string v2, "ipPorts"

    .line 120
    invoke-virtual {v1, v2, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->mergeLocalProperties(Lorg/briarproject/bramble/api/properties/TransportProperties;)V

    .line 124
    :goto_0
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "ipPorts"

    .line 125
    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    return-void
.end method

.method public supportsKeyAgreement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
