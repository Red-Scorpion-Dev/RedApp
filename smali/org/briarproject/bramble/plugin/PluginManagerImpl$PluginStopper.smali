.class Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;
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
    name = "PluginStopper"
.end annotation


# instance fields
.field private final plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

.field private final startLatch:Ljava/util/concurrent/CountDownLatch;

.field private final stopLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    .line 237
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->startLatch:Ljava/util/concurrent/CountDownLatch;

    .line 238
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 243
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to stop plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/Plugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 247
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 249
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 250
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/Plugin;->stop()V

    .line 251
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v4}, Lorg/briarproject/bramble/api/plugin/Plugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/plugin/PluginException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 259
    :try_start_1
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/plugin/Plugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " did not stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 256
    :catch_1
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Interrupted while waiting for plugin to stop"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 265
    throw v0
.end method
