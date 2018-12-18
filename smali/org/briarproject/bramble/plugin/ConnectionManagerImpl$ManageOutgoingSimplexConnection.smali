.class Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;
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
    name = "ManageOutgoingSimplexConnection"
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

.field private final writer:Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 181
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 182
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->writer:Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;-><init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)V

    return-void
.end method

.method private disposeWriter(Z)V
    .locals 2

    .line 218
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->writer:Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->dispose(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$500(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/transport/KeyManager;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v1, v2, v3}, Lorg/briarproject/bramble/api/transport/KeyManager;->getStreamContext(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/transport/StreamContext;

    move-result-object v1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 197
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Could not allocate stream context"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->disposeWriter(Z)V

    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v2}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v2

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->registerConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    .line 205
    :try_start_1
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->writer:Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    invoke-static {v2, v1, v3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$900(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/bramble/api/sync/SyncSession;->run()V

    .line 206
    invoke-direct {p0, v5}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->disposeWriter(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v1, v2, v5}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->unregisterConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 208
    :try_start_2
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 209
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->disposeWriter(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 211
    :goto_2
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v1, v2, v3, v5}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->unregisterConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    .line 213
    throw v0

    :catch_1
    move-exception v1

    .line 192
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 193
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageOutgoingSimplexConnection;->disposeWriter(Z)V

    return-void
.end method
