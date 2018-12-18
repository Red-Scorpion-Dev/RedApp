.class public abstract Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;
.super Ljava/lang/Object;
.source "AbstractDuplexTransportConnection.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;,
        Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final halfClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

.field private final reader:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;

.field private final writer:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;


# direct methods
.method protected constructor <init>(Lorg/briarproject/bramble/api/plugin/Plugin;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    .line 24
    new-instance p1, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;-><init>(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$1;)V

    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->reader:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;

    .line 25
    new-instance p1, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;

    invoke-direct {p1, p0, v0}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;-><init>(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$1;)V

    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->writer:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;

    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->halfClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->halfClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;)Lorg/briarproject/bramble/api/plugin/Plugin;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    return-object p0
.end method


# virtual methods
.method protected abstract closeConnection(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->reader:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Reader;

    return-object v0
.end method

.method public getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;->writer:Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection$Writer;

    return-object v0
.end method
