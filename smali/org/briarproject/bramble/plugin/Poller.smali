.class Lorg/briarproject/bramble/plugin/Poller;
.super Ljava/lang/Object;
.source "Poller.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/plugin/Poller$PollTask;,
        Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

.field private final connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

.field private final random:Ljava/security/SecureRandom;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;",
            ">;"
        }
    .end annotation
.end field

.field private final transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/briarproject/bramble/plugin/Poller;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/Poller;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/Poller;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 70
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/Poller;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 71
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/Poller;->connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    .line 72
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/Poller;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 73
    iput-object p5, p0, Lorg/briarproject/bramble/plugin/Poller;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    .line 74
    iput-object p6, p0, Lorg/briarproject/bramble/plugin/Poller;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 75
    iput-object p7, p0, Lorg/briarproject/bramble/plugin/Poller;->random:Ljava/security/SecureRandom;

    .line 76
    iput-object p8, p0, Lorg/briarproject/bramble/plugin/Poller;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 77
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/Poller;->lock:Ljava/util/concurrent/locks/Lock;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/Poller;->tasks:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$500(Lorg/briarproject/bramble/plugin/Poller;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/Poller;->lock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/bramble/plugin/Poller;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/Poller;->tasks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lorg/briarproject/bramble/plugin/Poller;)Ljava/security/SecureRandom;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/Poller;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/Plugin;IZ)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/plugin/Poller;->schedule(Lorg/briarproject/bramble/api/plugin/Plugin;IZ)V

    return-void
.end method

.method static synthetic access$900(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/Plugin;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/Poller;->poll(Lorg/briarproject/bramble/api/plugin/Plugin;)V

    return-void
.end method

.method private cancel(Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->tasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;

    if-eqz p1, :cond_0

    .line 196
    invoke-static {p1}, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->access$200(Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/Poller;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    throw p1
.end method

.method private connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/PluginManager;->getSimplexPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;

    .line 114
    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;->shouldPoll()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Lorg/briarproject/bramble/plugin/Poller;->connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/PluginManager;->getDuplexPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    .line 116
    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->shouldPoll()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v1}, Lorg/briarproject/bramble/plugin/Poller;->connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/plugin/PluginManager;->getPlugin(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/Plugin;

    move-result-object p2

    .line 121
    instance-of v0, p2, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/Plugin;->shouldPoll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    check-cast p2, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;

    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/Poller;->connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;)V

    goto :goto_0

    .line 123
    :cond_0
    instance-of v0, p2, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/briarproject/bramble/api/plugin/Plugin;->shouldPoll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    check-cast p2, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/Poller;->connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$6ow-2YyN-m7c5Owkyo75F2lbuFc;

    invoke-direct {v1, p0, p2, p1}, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$6ow-2YyN-m7c5Owkyo75F2lbuFc;-><init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;

    invoke-direct {v1, p0, p2, p1}, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;-><init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$connectToContact$0(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 129
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-interface {v1, p2, v0}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->isConnected(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 133
    invoke-interface {v1, p2, v0}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->getRemoteProperties(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v1

    .line 134
    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;->createWriter(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 136
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller;->connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    invoke-interface {v1, p2, v0, p1}, Lorg/briarproject/bramble/api/plugin/ConnectionManager;->manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    sget-object p2, Lorg/briarproject/bramble/plugin/Poller;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$connectToContact$1(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 145
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-interface {v1, p2, v0}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->isConnected(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 148
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 149
    invoke-interface {v1, p2, v0}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->getRemoteProperties(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v1

    .line 150
    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->createConnection(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller;->connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    invoke-interface {v1, p2, v0, p1}, Lorg/briarproject/bramble/api/plugin/ConnectionManager;->manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    sget-object p2, Lorg/briarproject/bramble/plugin/Poller;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$schedule$2(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/plugin/Poller$PollTask;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->ioExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private poll(Lorg/briarproject/bramble/api/plugin/Plugin;)V
    .locals 4
    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 204
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/Plugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v0

    .line 205
    sget-object v1, Lorg/briarproject/bramble/plugin/Poller;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/briarproject/bramble/plugin/Poller;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Polling plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 207
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 208
    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->getRemoteProperties(Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Map;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/Poller;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 210
    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->getConnectedContacts(Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;

    move-result-object v0

    .line 211
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 212
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 213
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v2}, Lorg/briarproject/bramble/api/plugin/Plugin;->poll(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    sget-object v0, Lorg/briarproject/bramble/plugin/Poller;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private pollNow(Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/plugin/PluginManager;->getPlugin(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/Plugin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/Plugin;->shouldPoll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/bramble/plugin/Poller;->schedule(Lorg/briarproject/bramble/api/plugin/Plugin;IZ)V

    :cond_0
    return-void
.end method

.method private reschedule(Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/plugin/PluginManager;->getPlugin(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/Plugin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/Plugin;->shouldPoll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/Plugin;->getPollingInterval()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/bramble/plugin/Poller;->schedule(Lorg/briarproject/bramble/api/plugin/Plugin;IZ)V

    :cond_0
    return-void
.end method

.method private schedule(Lorg/briarproject/bramble/api/plugin/Plugin;IZ)V
    .locals 11

    .line 173
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long v7, v0, v2

    .line 174
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/Plugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p2

    .line 175
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller;->tasks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;

    if-eqz v0, :cond_0

    .line 178
    invoke-static {v0}, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->access$000(Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;)Lorg/briarproject/bramble/plugin/Poller$PollTask;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/plugin/Poller$PollTask;->access$100(Lorg/briarproject/bramble/plugin/Poller$PollTask;)J

    move-result-wide v4

    cmp-long v1, v7, v4

    if-gez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 181
    invoke-static {v0}, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->access$200(Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 182
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/plugin/Poller$PollTask;

    const/4 v10, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move v9, p3

    invoke-direct/range {v4 .. v10}, Lorg/briarproject/bramble/plugin/Poller$PollTask;-><init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/Plugin;JZLorg/briarproject/bramble/plugin/Poller$1;)V

    .line 183
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/Poller;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$QeumeN38ltbwrGGdkEZNXQMtHvs;

    invoke-direct {p3, p0, v0}, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$QeumeN38ltbwrGGdkEZNXQMtHvs;-><init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/plugin/Poller$PollTask;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p3, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 185
    iget-object p3, p0, Lorg/briarproject/bramble/plugin/Poller;->tasks:Ljava/util/Map;

    new-instance v1, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;-><init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/plugin/Poller$PollTask;Ljava/util/concurrent/Future;Lorg/briarproject/bramble/plugin/Poller$1;)V

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_2
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/Poller;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/briarproject/bramble/plugin/Poller;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    throw p1
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 83
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;

    .line 85
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/Poller;->connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;

    .line 92
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/Poller;->reschedule(Lorg/briarproject/bramble/api/plugin/TransportId;)V

    .line 93
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/briarproject/bramble/plugin/Poller;->connectToContact(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    goto :goto_0

    .line 97
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/ConnectionOpenedEvent;

    if-eqz v0, :cond_2

    .line 98
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/ConnectionOpenedEvent;

    .line 100
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ConnectionOpenedEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/Poller;->reschedule(Lorg/briarproject/bramble/api/plugin/TransportId;)V

    goto :goto_0

    .line 101
    :cond_2
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    if-eqz v0, :cond_3

    .line 102
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    .line 104
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/Poller;->pollNow(Lorg/briarproject/bramble/api/plugin/TransportId;)V

    goto :goto_0

    .line 105
    :cond_3
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;

    if-eqz v0, :cond_4

    .line 106
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;

    .line 108
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/Poller;->cancel(Lorg/briarproject/bramble/api/plugin/TransportId;)V

    :cond_4
    :goto_0
    return-void
.end method
