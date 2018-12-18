.class abstract Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;
.super Ljava/lang/Object;
.source "BluetoothPlugin.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/bramble/api/event/EventListener;",
        "Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

.field private final callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

.field final connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

.field private volatile contactConnections:Z

.field private volatile contactConnectionsUuid:Ljava/lang/String;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final maxLatency:I

.field private volatile running:Z

.field private final secureRandom:Ljava/security/SecureRandom;

.field private volatile socket:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSS;"
        }
    .end annotation
.end field

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;Ljava/util/concurrent/Executor;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;I)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->running:Z

    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->contactConnections:Z

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->contactConnectionsUuid:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->socket:Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    .line 108
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 109
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->secureRandom:Ljava/security/SecureRandom;

    .line 110
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    .line 111
    iput-object p5, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    .line 112
    iput p6, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->maxLatency:I

    return-void
.end method

.method private acceptContactConnections()V
    .locals 3

    .line 221
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->socket:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->acceptConnection(Ljava/lang/Object;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 228
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->contactConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->incomingConnectionCreated(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    .line 230
    :cond_1
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->running:Z

    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 54
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private bind()V
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$5LFrMRmXQDZNSHk-RYMiHxB1iBE;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$5LFrMRmXQDZNSHk-RYMiHxB1iBE;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private connect(Ljava/lang/String;Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 4

    .line 284
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 285
    sget-object p2, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 287
    sget-object p2, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 293
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 301
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectTo(Ljava/lang/String;Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p2

    .line 302
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object p2

    :catch_0
    nop

    .line 306
    sget-object p2, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 307
    sget-object p2, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_4
    return-object v1

    .line 295
    :catch_1
    sget-object p1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UUID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public static synthetic lambda$OIiuuIeeY7fTyLNYh1_q5q8ZOcw(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->updateProperties()V

    return-void
.end method

.method public static synthetic lambda$bind$0(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;)V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->contactConnectionsUuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->openServerSocket(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    iput-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->socket:Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 187
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportEnabled()V

    .line 188
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->acceptContactConnections()V

    return-void

    .line 182
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->tryToClose(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 178
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic lambda$eventOccurred$2(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;)V
    .locals 0

    .line 400
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->onSettingsUpdated(Lorg/briarproject/bramble/api/settings/Settings;)V

    return-void
.end method

.method public static synthetic lambda$poll$1(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->canOpenContactConnection()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 271
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connect(Ljava/lang/String;Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 273
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 274
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {p2, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->contactConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 275
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p2, p3, p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->outgoingConnectionCreated(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private loadSettings(Lorg/briarproject/bramble/api/settings/Settings;)V
    .locals 2

    const-string v0, "enable"

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->contactConnections:Z

    return-void
.end method

.method private onSettingsUpdated(Lorg/briarproject/bramble/api/settings/Settings;)V
    .locals 1

    .line 409
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result v0

    .line 410
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->loadSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    .line 411
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 413
    sget-object p1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Contact connections disabled"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->socket:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->tryToClose(Ljava/lang/Object;)V

    .line 415
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportDisabled()V

    .line 416
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->disableAdapterIfEnabledByUs()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 418
    sget-object p1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Contact connections enabled"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isAdapterEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->bind()V

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->enableAdapter()V

    :cond_2
    :goto_0
    return-void
.end method

.method private parseAddress(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p1

    .line 385
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 386
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->macToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 385
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private shouldAllowContactConnections()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->contactConnections:Z

    return v0
.end method

.method private updateProperties()V
    .locals 7

    .line 193
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->getLocalProperties()Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v0

    const-string v1, "address"

    .line 194
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "uuid"

    .line 195
    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 198
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    .line 199
    sget-object v4, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    sget-object v4, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "address"

    .line 202
    invoke-virtual {v0, v4, v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v2, :cond_2

    const/16 v1, 0x10

    .line 207
    new-array v1, v1, [B

    .line 208
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 209
    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "uuid"

    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 213
    :cond_2
    iput-object v2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->contactConnectionsUuid:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->mergeLocalProperties(Lorg/briarproject/bramble/api/properties/TransportProperties;)V

    :cond_3
    return-void
.end method


# virtual methods
.method abstract acceptConnection(Ljava/lang/Object;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSS;)",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract connectTo(Ljava/lang/String;Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public createConnection(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 3

    .line 314
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->canOpenContactConnection()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "address"

    .line 316
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    const-string v2, "uuid"

    .line 318
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 319
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 320
    :cond_3
    invoke-direct {p0, v0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connect(Ljava/lang/String;Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    .line 323
    :cond_4
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->contactConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move-object p1, v1

    :goto_0
    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public createKeyAgreementConnection([BLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 3

    .line 359
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 361
    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 364
    sget-object p2, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 365
    sget-object p2, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discovering address for key agreement UUID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 366
    :cond_1
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->discoverAndConnect(Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    goto :goto_0

    .line 370
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->parseAddress(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to key agreement UUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 377
    :cond_3
    invoke-direct {p0, p2, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connect(Ljava/lang/String;Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 379
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {p2, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->keyAgreementConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    :cond_4
    return-object p1

    .line 372
    :catch_0
    sget-object p1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Invalid address in key agreement descriptor"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1
.end method

.method public createKeyAgreementListener([B)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;
    .locals 4

    .line 333
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 335
    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key agreement UUID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 340
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->openServerSocket(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 346
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->tryToClose(Ljava/lang/Object;)V

    return-object v1

    .line 349
    :cond_2
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfList;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfList;-><init>()V

    const/4 v2, 0x0

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 352
    invoke-static {v2}, Lorg/briarproject/bramble/util/StringUtils;->macToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_3
    new-instance v2, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;

    invoke-direct {v2, p0, v0, p1, v1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Lorg/briarproject/bramble/api/data/BdfList;Ljava/lang/Object;Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$1;)V

    return-object v2

    :catch_0
    move-exception p1

    .line 342
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v2, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method abstract disableAdapterIfEnabledByUs()V
.end method

.method abstract discoverAndConnect(Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
.end method

.method abstract enableAdapter()V
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 391
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/EnableBluetoothEvent;

    if-eqz v0, :cond_0

    .line 392
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$SBYB5MWJAayNl4Apbm0uRTuxcMM;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$SBYB5MWJAayNl4Apbm0uRTuxcMM;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 393
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/DisableBluetoothEvent;

    if-eqz v0, :cond_1

    .line 394
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$zF9KgNseTLSmzpESLYp98eApJkQ;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$zF9KgNseTLSmzpESLYp98eApJkQ;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 395
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/BluetoothEnabledEvent;

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->setEnabledByUs()V

    goto :goto_0

    .line 397
    :cond_2
    instance-of v0, p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    if-eqz v0, :cond_3

    .line 398
    check-cast p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    .line 399
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getNamespace()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$eok1WN-Z7FUc67I743ntVGTKoYY;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$eok1WN-Z7FUc67I743ntVGTKoYY;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 401
    :cond_3
    instance-of v0, p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;

    if-eqz v0, :cond_4

    .line 402
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$fLUbOxhFoim205pJ9AkyIB_rT8M;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$fLUbOxhFoim205pJ9AkyIB_rT8M;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 403
    :cond_4
    instance-of p1, p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementStoppedListeningEvent;

    if-eqz p1, :cond_5

    .line 404
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$U9Cf_5nmEtYb8tHmPzlylYe6AS0;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$U9Cf_5nmEtYb8tHmPzlylYe6AS0;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method abstract getBluetoothAddress()Ljava/lang/String;
.end method

.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 131
    sget-object v0, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getMaxLatency()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->maxLatency:I

    return v0
.end method

.method public getPollingInterval()I
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->getPollingInterval()I

    move-result v0

    return v0
.end method

.method abstract initialiseAdapter()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract isAdapterEnabled()Z
.end method

.method public isRunning()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->running:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isAdapterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract isValidAddress(Ljava/lang/String;)Z
.end method

.method onAdapterDisabled()V
    .locals 2

    .line 123
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Bluetooth disabled"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->socket:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->tryToClose(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->allConnectionsClosed()V

    .line 126
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportDisabled()V

    return-void
.end method

.method onAdapterEnabled()V
    .locals 2

    .line 116
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Bluetooth enabled"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$OIiuuIeeY7fTyLNYh1_q5q8ZOcw;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$OIiuuIeeY7fTyLNYh1_q5q8ZOcw;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 119
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->bind()V

    :cond_0
    return-void
.end method

.method abstract openServerSocket(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public poll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->increment()V

    .line 262
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    const-string v2, "address"

    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/properties/TransportProperties;

    const-string v3, "uuid"

    invoke-virtual {v2, v3}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    invoke-static {v2}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 267
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactId;

    .line 268
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;

    invoke-direct {v4, p0, v1, v2, v0}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method abstract setEnabledByUs()V
.end method

.method public shouldPoll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/plugin/PluginException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->initialiseAdapter()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->updateProperties()V

    .line 154
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->running:Z

    .line 155
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->loadSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    .line 156
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->shouldAllowContactConnections()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->isAdapterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->bind()V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->enableAdapter()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lorg/briarproject/bramble/api/plugin/PluginException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/plugin/PluginException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->running:Z

    .line 237
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->socket:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->tryToClose(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportDisabled()V

    .line 239
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->disableAdapterIfEnabledByUs()V

    return-void
.end method

.method public supportsKeyAgreement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract tryToClose(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSS;)V"
        }
    .end annotation
.end method
