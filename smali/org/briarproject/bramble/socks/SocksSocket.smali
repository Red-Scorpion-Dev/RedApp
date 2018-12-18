.class Lorg/briarproject/bramble/socks/SocksSocket;
.super Ljava/net/Socket;
.source "SocksSocket.java"


# static fields
.field private static final ERRORS:[Ljava/lang/String;

.field private static final UNSPECIFIED_ADDRESS:[B


# instance fields
.field private final connectToProxyTimeout:I

.field private final extraSocketTimeout:I

.field private final proxy:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    .line 17
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Succeeded"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "General SOCKS server failure"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Connection not allowed by ruleset"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Network unreachable"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Host unreachable"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Connection refused"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "TTL expired"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "Command not supported"

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "Address type not supported"

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sput-object v0, Lorg/briarproject/bramble/socks/SocksSocket;->ERRORS:[Ljava/lang/String;

    .line 29
    new-array v0, v2, [B

    sput-object v0, Lorg/briarproject/bramble/socks/SocksSocket;->UNSPECIFIED_ADDRESS:[B

    return-void
.end method

.method constructor <init>(Ljava/net/SocketAddress;II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/briarproject/bramble/socks/SocksSocket;->proxy:Ljava/net/SocketAddress;

    .line 37
    iput p2, p0, Lorg/briarproject/bramble/socks/SocksSocket;->connectToProxyTimeout:I

    .line 38
    iput p3, p0, Lorg/briarproject/bramble/socks/SocksSocket;->extraSocketTimeout:I

    return-void
.end method

.method private receiveConnectResponse(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 117
    new-array v1, v0, [B

    .line 118
    invoke-static {p1, v1}, Lorg/briarproject/bramble/util/IoUtils;->read(Ljava/io/InputStream;[B)V

    const/4 v2, 0x0

    .line 119
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    .line 120
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x3

    .line 121
    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    if-eqz v4, :cond_1

    .line 125
    sget-object p1, Lorg/briarproject/bramble/socks/SocksSocket;->ERRORS:[Ljava/lang/String;

    array-length p1, p1

    if-ge v4, p1, :cond_0

    .line 126
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/briarproject/bramble/socks/SocksSocket;->ERRORS:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v1, v3, :cond_2

    .line 129
    new-array v0, v0, [B

    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/IoUtils;->read(Ljava/io/InputStream;[B)V

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    const/16 v0, 0x10

    .line 130
    new-array v0, v0, [B

    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/IoUtils;->read(Ljava/io/InputStream;[B)V

    :goto_0
    const/4 v0, 0x2

    .line 132
    new-array v0, v0, [B

    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/IoUtils;->read(Ljava/io/InputStream;[B)V

    return-void

    .line 131
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported address type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported SOCKS version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receiveMethodResponse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 90
    new-array v0, v0, [B

    .line 91
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/IoUtils;->read(Ljava/io/InputStream;[B)V

    const/4 p1, 0x0

    .line 92
    aget-byte p1, v0, p1

    const/4 v1, 0x1

    .line 93
    aget-byte v0, v0, v1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported auth method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Proxy requires authentication"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SOCKS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendConnectRequest(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 105
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 106
    aput-byte v1, v0, v1

    const/4 v1, 0x3

    .line 107
    aput-byte v1, v0, v1

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    .line 109
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x5

    .line 110
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    array-length p2, v0

    add-int/lit8 p2, p2, -0x2

    invoke-static {p3, v0, p2}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint16(I[BI)V

    .line 112
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 113
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private sendMethodRequest(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 80
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 86
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x1t
        0x0t
    .end array-data
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_3

    .line 48
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 49
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/socks/SocksSocket;->UNSPECIFIED_ADDRESS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_2

    .line 56
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    .line 59
    iget-object v1, p0, Lorg/briarproject/bramble/socks/SocksSocket;->proxy:Ljava/net/SocketAddress;

    iget v2, p0, Lorg/briarproject/bramble/socks/SocksSocket;->connectToProxyTimeout:I

    invoke-super {p0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 60
    invoke-static {p0}, Lorg/briarproject/bramble/util/IoUtils;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v1

    .line 61
    invoke-static {p0}, Lorg/briarproject/bramble/util/IoUtils;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v2

    .line 64
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/socks/SocksSocket;->sendMethodRequest(Ljava/io/OutputStream;)V

    .line 65
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/socks/SocksSocket;->receiveMethodResponse(Ljava/io/InputStream;)V

    .line 68
    invoke-virtual {p0}, Lorg/briarproject/bramble/socks/SocksSocket;->getSoTimeout()I

    move-result v3

    .line 69
    iget v4, p0, Lorg/briarproject/bramble/socks/SocksSocket;->extraSocketTimeout:I

    add-int/2addr p2, v4

    invoke-virtual {p0, p2}, Lorg/briarproject/bramble/socks/SocksSocket;->setSoTimeout(I)V

    .line 72
    invoke-direct {p0, v1, v0, p1}, Lorg/briarproject/bramble/socks/SocksSocket;->sendConnectRequest(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 73
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/socks/SocksSocket;->receiveConnectResponse(Ljava/io/InputStream;)V

    .line 76
    iget p1, p0, Lorg/briarproject/bramble/socks/SocksSocket;->extraSocketTimeout:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lorg/briarproject/bramble/socks/SocksSocket;->setSoTimeout(I)V

    return-void

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
