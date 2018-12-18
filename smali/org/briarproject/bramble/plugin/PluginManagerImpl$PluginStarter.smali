.class Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginStarter"
.end annotation


# instance fields
.field private final plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

.field private final startLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    .line 206
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;->startLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 212
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 213
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/Plugin;->start()V

    .line 214
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v4}, Lorg/briarproject/bramble/api/plugin/Plugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/plugin/PluginException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 219
    :try_start_1
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/plugin/Plugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " did not start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 225
    throw v0
.end method
