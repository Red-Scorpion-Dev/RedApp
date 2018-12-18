.class Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;
.super Ljava/lang/Object;
.source "ConnectionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManageIncomingDuplexConnection"
.end annotation


# instance fields
.field private volatile contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private volatile incomingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

.field private volatile outgoingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

.field private final reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

.field private final writer:Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 232
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->incomingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    .line 233
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->outgoingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    .line 237
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 238
    invoke-interface {p3}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    .line 239
    invoke-interface {p3}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->writer:Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$1;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;-><init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    return-void
.end method

.method private disposeReader(ZZ)V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->outgoingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->outgoingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncSession;->interrupt()V

    .line 307
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->dispose(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private disposeWriter(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->incomingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->incomingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncSession;->interrupt()V

    .line 319
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->writer:Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->dispose(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$2n1wQF6aNGSDqkuD3W7s-LyQhSw(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->runOutgoingSession()V

    return-void
.end method

.method private runOutgoingSession()V
    .locals 4

    const/4 v0, 0x1

    .line 281
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$500(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/transport/KeyManager;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v1, v2, v3}, Lorg/briarproject/bramble/api/transport/KeyManager;->getStreamContext(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/transport/StreamContext;

    move-result-object v1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 288
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Could not allocate stream context"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->disposeWriter(Z)V

    return-void

    .line 294
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->writer:Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    invoke-static {v2, v1, v3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$1100(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object v1

    iput-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->outgoingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    .line 295
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->outgoingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/sync/SyncSession;->run()V

    const/4 v1, 0x0

    .line 296
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->disposeWriter(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 298
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 299
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->disposeWriter(Z)V

    :goto_0
    return-void

    :catch_1
    move-exception v1

    .line 283
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 284
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->disposeWriter(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 247
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    invoke-static {v2, v3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$400(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)[B

    move-result-object v2

    .line 248
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$500(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/transport/KeyManager;

    move-result-object v3

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v3, v4, v2}, Lorg/briarproject/bramble/api/transport/KeyManager;->getStreamContext(Lorg/briarproject/bramble/api/plugin/TransportId;[B)Lorg/briarproject/bramble/api/transport/StreamContext;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 255
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Unrecognised tag"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, v0, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->disposeReader(ZZ)V

    return-void

    .line 259
    :cond_0
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/StreamContext;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    iput-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 260
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v3

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v5, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v3, v4, v5, v1}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->registerConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    .line 262
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$1000(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lorg/briarproject/bramble/plugin/-$$Lambda$ConnectionManagerImpl$ManageIncomingDuplexConnection$2n1wQF6aNGSDqkuD3W7s-LyQhSw;

    invoke-direct {v4, p0}, Lorg/briarproject/bramble/plugin/-$$Lambda$ConnectionManagerImpl$ManageIncomingDuplexConnection$2n1wQF6aNGSDqkuD3W7s-LyQhSw;-><init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 265
    :try_start_1
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    invoke-static {v3, v2, v4}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$800(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object v2

    iput-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->incomingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    .line 266
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->incomingSession:Lorg/briarproject/bramble/api/sync/SyncSession;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/sync/SyncSession;->run()V

    .line 267
    invoke-direct {p0, v0, v1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->disposeReader(ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 269
    :try_start_2
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 270
    invoke-direct {p0, v1, v1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->disposeReader(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v0

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v2, v3, v1}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->unregisterConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    return-void

    :goto_1
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v2}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v2

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v2, v3, v4, v1}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->unregisterConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    .line 274
    throw v0

    :catch_1
    move-exception v2

    .line 250
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v3, v4, v2}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 251
    invoke-direct {p0, v1, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingDuplexConnection;->disposeReader(ZZ)V

    return-void
.end method
