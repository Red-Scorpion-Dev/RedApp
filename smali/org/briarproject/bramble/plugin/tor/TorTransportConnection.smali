.class Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;
.super Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;
.source "TorTransportConnection.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/net/Socket;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;)V

    .line 20
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method protected closeConnection(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/briarproject/bramble/util/IoUtils;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/briarproject/bramble/util/IoUtils;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
