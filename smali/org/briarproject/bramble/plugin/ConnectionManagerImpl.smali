.class Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;
.super Ljava/lang/Object;
.source "ConnectionManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingDuplexConnection;,
        Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;,
        Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;,
        Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

.field private final streamReaderFactory:Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

.field private final streamWriterFactory:Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

.field private final syncSessionFactory:Lorg/briarproject/bramble/api/sync/SyncSessionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;Lorg/briarproject/bramble/api/sync/SyncSessionFactory;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 51
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

    .line 52
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->streamReaderFactory:Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

    .line 53
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->streamWriterFactory:Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    .line 54
    iput-object p5, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->syncSessionFactory:Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    .line 55
    iput-object p6, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    return-void
.end method

.method static synthetic access$1000(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->createDuplexOutgoingSession(Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->readTag(Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/transport/KeyManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/logging/Logger;
    .locals 1

    .line 32
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->createIncomingSession(Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->createSimplexOutgoingSession(Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object p0

    return-object p0
.end method

.method private createDuplexOutgoingSession(Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->streamWriterFactory:Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    .line 114
    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 113
    invoke-interface {v0, v1, p1}, Lorg/briarproject/bramble/api/transport/StreamWriterFactory;->createStreamWriter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/transport/StreamWriter;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->syncSessionFactory:Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    .line 116
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/StreamContext;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->getMaxLatency()I

    move-result v2

    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->getMaxIdleTime()I

    move-result p2

    .line 115
    invoke-interface {v1, p1, v2, p2, v0}, Lorg/briarproject/bramble/api/sync/SyncSessionFactory;->createDuplexOutgoingSession(Lorg/briarproject/bramble/api/contact/ContactId;IILorg/briarproject/bramble/api/transport/StreamWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object p1

    return-object p1
.end method

.method private createIncomingSession(Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->streamReaderFactory:Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

    .line 98
    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 97
    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/transport/StreamReaderFactory;->createStreamReader(Ljava/io/InputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Ljava/io/InputStream;

    move-result-object p2

    .line 99
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->syncSessionFactory:Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/StreamContext;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/sync/SyncSessionFactory;->createIncomingSession(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/io/InputStream;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object p1

    return-object p1
.end method

.method private createSimplexOutgoingSession(Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->streamWriterFactory:Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    .line 106
    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 105
    invoke-interface {v0, v1, p1}, Lorg/briarproject/bramble/api/transport/StreamWriterFactory;->createStreamWriter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/transport/StreamWriter;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->syncSessionFactory:Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    .line 108
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/StreamContext;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->getMaxLatency()I

    move-result p2

    .line 107
    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/sync/SyncSessionFactory;->createSimplexOutgoingSession(Lorg/briarproject/bramble/api/contact/ContactId;ILorg/briarproject/bramble/api/transport/StreamWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object p1

    return-object p1
.end method

.method private readTag(Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 84
    new-array v0, v0, [B

    .line 85
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v1, 0x0

    .line 87
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 88
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public manageIncomingConnection(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;-><init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public manageIncomingConnection(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;-><init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)V
    .locals 8

    .line 73
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;-><init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$1;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 8

    .line 79
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingDuplexConnection;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingDuplexConnection;-><init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$1;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
