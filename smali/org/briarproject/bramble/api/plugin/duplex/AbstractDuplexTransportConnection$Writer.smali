.class Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;
.super Ljava/lang/Object;
.source "AbstractDuplexTransportConnection.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Writer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;-><init>(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)V

    return-void
.end method


# virtual methods
.method public dispose(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-static {v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->access$200(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-static {v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->access$300(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->closeConnection(Z)V

    :cond_1
    return-void
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-static {v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->access$400(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Lorg/briarproject/bramble/api/plugin/Plugin;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Plugin;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getMaxLatency()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-static {v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->access$400(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Lorg/briarproject/bramble/api/plugin/Plugin;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Plugin;->getMaxLatency()I

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
