.class Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;
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
    name = "ManageIncomingSimplexConnection"
.end annotation


# instance fields
.field private final reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 128
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;-><init>(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)V

    return-void
.end method

.method private disposeReader(ZZ)V
    .locals 1

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->dispose(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 136
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    invoke-static {v2, v3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$400(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)[B

    move-result-object v2

    .line 137
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v3}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$500(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/transport/KeyManager;

    move-result-object v3

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v3, v4, v2}, Lorg/briarproject/bramble/api/transport/KeyManager;->getStreamContext(Lorg/briarproject/bramble/api/plugin/TransportId;[B)Lorg/briarproject/bramble/api/transport/StreamContext;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 144
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Unrecognised tag"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v0, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->disposeReader(ZZ)V

    return-void

    .line 148
    :cond_0
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/StreamContext;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v4}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v4

    iget-object v5, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v4, v3, v5, v1}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->registerConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    .line 152
    :try_start_1
    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    iget-object v5, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->reader:Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    invoke-static {v4, v2, v5}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$800(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;Lorg/briarproject/bramble/api/transport/StreamContext;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)Lorg/briarproject/bramble/api/sync/SyncSession;

    move-result-object v2

    invoke-interface {v2}, Lorg/briarproject/bramble/api/sync/SyncSession;->run()V

    .line 153
    invoke-direct {p0, v0, v1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->disposeReader(ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v0

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v3, v2, v1}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->unregisterConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 155
    :try_start_2
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v4, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 156
    invoke-direct {p0, v1, v1}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->disposeReader(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 158
    :goto_2
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->this$0:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    invoke-static {v2}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v2

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v2, v3, v4, v1}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->unregisterConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    .line 160
    throw v0

    :catch_1
    move-exception v2

    .line 139
    invoke-static {}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;->access$600()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v3, v4, v2}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 140
    invoke-direct {p0, v1, v0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl$ManageIncomingSimplexConnection;->disposeReader(ZZ)V

    return-void
.end method
