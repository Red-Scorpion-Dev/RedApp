.class Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;
.super Ljava/lang/Object;
.source "KeyAgreementConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;,
        Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;,
        Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$Callbacks;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private volatile alice:Z

.field private final aliceLatch:Ljava/util/concurrent/CountDownLatch;

.field private final callbacks:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$Callbacks;

.field private final connectionChooser:Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

.field private final keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

.field private final recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;

.field private final recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;

.field private volatile stopped:Z

.field private final waitingSent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$Callbacks;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/keyagreement/ConnectionChooser;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->listeners:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->aliceLatch:Ljava/util/concurrent/CountDownLatch;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->waitingSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-boolean v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->alice:Z

    iput-boolean v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopped:Z

    .line 65
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->callbacks:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$Callbacks;

    .line 66
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    .line 67
    iput-object p3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    .line 68
    iput-object p4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->connectionChooser:Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    .line 69
    iput-object p5, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    .line 70
    iput-object p6, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    return-void
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopped:Z

    return p0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 37
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->aliceLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->alice:Z

    return p0
.end method

.method static synthetic access$600(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->waitingForAlice()V

    return-void
.end method

.method private waitingForAlice()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->waitingSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->callbacks:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$Callbacks;

    invoke-interface {v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$Callbacks;->connectionWaiting()V

    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Lorg/briarproject/bramble/api/keyagreement/Payload;Z)Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;
    .locals 11

    .line 105
    iput-boolean p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->alice:Z

    .line 106
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->aliceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 109
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting outgoing BQP connections as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "Alice"

    goto :goto_0

    :cond_0
    const-string p2, "Bob"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/Payload;->getTransportDescriptors()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;

    .line 114
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/plugin/PluginManager;->getPlugin(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/Plugin;

    move-result-object v2

    .line 115
    instance-of v3, v2, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    if-eqz v3, :cond_2

    .line 116
    sget-object v3, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    sget-object v3, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting via "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 118
    :cond_3
    move-object v7, v2

    check-cast v7, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    .line 119
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/Payload;->getCommitment()[B

    move-result-object v8

    .line 120
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;->getDescriptor()Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v9

    .line 121
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->connectionChooser:Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    new-instance v2, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;

    new-instance v3, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;

    const/4 v10, 0x0

    move-object v5, v3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;[BLorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$1;)V

    invoke-direct {v2, p0, v3, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Ljava/util/concurrent/Callable;Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$1;)V

    invoke-interface {v0, v2}, Lorg/briarproject/bramble/keyagreement/ConnectionChooser;->submit(Ljava/util/concurrent/Callable;)V

    goto :goto_1

    .line 128
    :cond_4
    :try_start_0
    iget-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->connectionChooser:Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    const-wide/32 v2, 0xea60

    .line 129
    invoke-interface {p1, v2, v3}, Lorg/briarproject/bramble/keyagreement/ConnectionChooser;->poll(J)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    .line 141
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopListening()V

    return-object v1

    .line 131
    :cond_5
    :try_start_1
    new-instance p2, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->recordReaderFactory:Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->recordWriterFactory:Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    invoke-direct {p2, v0, v2, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;-><init>(Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopListening()V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 138
    :try_start_2
    sget-object p2, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopListening()V

    return-object v1

    .line 134
    :catch_1
    :try_start_3
    sget-object p1, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Interrupted while waiting for connection"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopListening()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopListening()V

    .line 142
    throw p1
.end method

.method listen(Lorg/briarproject/bramble/api/crypto/KeyPair;)Lorg/briarproject/bramble/api/keyagreement/Payload;
    .locals 7

    .line 74
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Starting BQP listeners"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    .line 77
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object p1

    .line 76
    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;->deriveKeyCommitment(Lorg/briarproject/bramble/api/crypto/PublicKey;)[B

    move-result-object p1

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/PluginManager;->getKeyAgreementPlugins()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    .line 82
    invoke-interface {v2, p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->createKeyAgreementListener([B)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    .line 85
    new-instance v4, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;->getDescriptor()Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/data/BdfList;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v4, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listening via "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->listeners:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->connectionChooser:Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    new-instance v4, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/briarproject/bramble/keyagreement/-$$Lambda$XcXNzFcyeDCrudIde3p0lMV8iGQ;

    invoke-direct {v5, v3}, Lorg/briarproject/bramble/keyagreement/-$$Lambda$XcXNzFcyeDCrudIde3p0lMV8iGQ;-><init>(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;)V

    const/4 v3, 0x0

    invoke-direct {v4, p0, v5, v3}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Ljava/util/concurrent/Callable;Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$1;)V

    invoke-interface {v2, v4}, Lorg/briarproject/bramble/keyagreement/ConnectionChooser;->submit(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 91
    :cond_2
    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/Payload;

    invoke-direct {v1, p1, v0}, Lorg/briarproject/bramble/api/keyagreement/Payload;-><init>([BLjava/util/List;)V

    return-object v1
.end method

.method stopListening()V
    .locals 2

    .line 95
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Stopping BQP listeners"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopped:Z

    .line 97
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->aliceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 98
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;->close()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->connectionChooser:Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    invoke-interface {v0}, Lorg/briarproject/bramble/keyagreement/ConnectionChooser;->stop()V

    return-void
.end method
