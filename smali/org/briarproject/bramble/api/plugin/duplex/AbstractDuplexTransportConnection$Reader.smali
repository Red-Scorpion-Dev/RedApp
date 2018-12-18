.class Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;
.super Ljava/lang/Object;
.source "AbstractDuplexTransportConnection.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;-><init>(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)V

    return-void
.end method


# virtual methods
.method public dispose(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-static {v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->access$200(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    iget-object p2, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-static {p2}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->access$300(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-virtual {p2, p1}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->closeConnection(Z)V

    :cond_1
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;->this$0:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
