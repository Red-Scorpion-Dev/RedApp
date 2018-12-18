.class Lorg/briarproject/bramble/socks/SocksSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SocksSocketFactory.java"


# instance fields
.field private final connectToProxyTimeout:I

.field private final extraSocketTimeout:I

.field private final proxy:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Ljava/net/SocketAddress;II)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/bramble/socks/SocksSocketFactory;->proxy:Ljava/net/SocketAddress;

    .line 19
    iput p2, p0, Lorg/briarproject/bramble/socks/SocksSocketFactory;->connectToProxyTimeout:I

    .line 20
    iput p3, p0, Lorg/briarproject/bramble/socks/SocksSocketFactory;->extraSocketTimeout:I

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 4

    .line 25
    new-instance v0, Lorg/briarproject/bramble/socks/SocksSocket;

    iget-object v1, p0, Lorg/briarproject/bramble/socks/SocksSocketFactory;->proxy:Ljava/net/SocketAddress;

    iget v2, p0, Lorg/briarproject/bramble/socks/SocksSocketFactory;->connectToProxyTimeout:I

    iget v3, p0, Lorg/briarproject/bramble/socks/SocksSocketFactory;->extraSocketTimeout:I

    invoke-direct {v0, v1, v2, v3}, Lorg/briarproject/bramble/socks/SocksSocket;-><init>(Ljava/net/SocketAddress;II)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/briarproject/bramble/socks/SocksSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 31
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
