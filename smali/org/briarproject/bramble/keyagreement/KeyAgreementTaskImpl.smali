.class Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;
.super Ljava/lang/Thread;
.source "KeyAgreementTaskImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;
.implements Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$Callbacks;
.implements Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final connector:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

.field private final localKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

.field private localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

.field private final payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

.field private remotePayload:Lorg/briarproject/bramble/api/keyagreement/Payload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/keyagreement/ConnectionChooser;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;)V
    .locals 7

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 59
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    .line 60
    iput-object p3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 61
    iput-object p4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    .line 62
    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->generateAgreementKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    .line 63
    new-instance p1, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$Callbacks;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/keyagreement/ConnectionChooser;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;)V

    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->connector:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    return-void
.end method


# virtual methods
.method public declared-synchronized connectAndRunProtocol(Lorg/briarproject/bramble/api/keyagreement/Payload;)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->remotePayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    if-nez v0, :cond_0

    .line 93
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->remotePayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 94
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already provided remote payload for this task"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must listen before connecting"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 86
    monitor-exit p0

    throw p1
.end method

.method public connectionWaiting()V
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementWaitingEvent;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementWaitingEvent;-><init>()V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method

.method public initialRecordReceived()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementStartedEvent;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementStartedEvent;-><init>()V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method

.method public declared-synchronized listen()V
    .locals 3

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->connector:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->listen(Lorg/briarproject/bramble/api/crypto/KeyPair;)Lorg/briarproject/bramble/api/keyagreement/Payload;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 72
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;-><init>(Lorg/briarproject/bramble/api/keyagreement/Payload;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 13

    .line 99
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->remotePayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/keyagreement/Payload;->compareTo(Lorg/briarproject/bramble/api/keyagreement/Payload;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->connector:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->remotePayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 103
    invoke-virtual {v1, v2, v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->connect(Lorg/briarproject/bramble/api/keyagreement/Payload;Z)Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    move-result-object v11

    if-nez v11, :cond_1

    .line 105
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Key agreement failed. Transport was null."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFailedEvent;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFailedEvent;-><init>()V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 112
    :cond_1
    sget-object v1, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Starting BQP protocol"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    new-instance v12, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;

    iget-object v3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    iget-object v4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    iget-object v5, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    iget-object v7, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->remotePayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    iget-object v8, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    iget-object v9, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    move-object v1, v12

    move-object v2, p0

    move-object v6, v11

    move v10, v0

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;Lorg/briarproject/bramble/api/keyagreement/Payload;Lorg/briarproject/bramble/api/keyagreement/Payload;Lorg/briarproject/bramble/api/crypto/KeyPair;Z)V

    .line 117
    :try_start_0
    invoke-virtual {v12}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->perform()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v1

    .line 118
    new-instance v2, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;

    .line 119
    invoke-virtual {v11}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v3

    .line 120
    invoke-virtual {v11}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    .line 121
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Finished BQP protocol"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFinishedEvent;

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFinishedEvent;-><init>(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/keyagreement/AbortException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFailedEvent;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFailedEvent;-><init>()V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 125
    sget-object v1, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 127
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v2, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementAbortedEvent;

    iget-boolean v0, v0, Lorg/briarproject/bramble/keyagreement/AbortException;->receivedAbort:Z

    invoke-direct {v2, v0}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementAbortedEvent;-><init>(Z)V

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    :goto_1
    return-void
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->localPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->remotePayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->connector:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-virtual {v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->stopListening()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->interrupt()V

    .line 81
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementStoppedListeningEvent;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementStoppedListeningEvent;-><init>()V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 77
    monitor-exit p0

    throw v0
.end method
