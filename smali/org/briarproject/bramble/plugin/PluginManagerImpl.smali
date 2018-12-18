.class Lorg/briarproject/bramble/plugin/PluginManagerImpl;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/bramble/api/plugin/PluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;,
        Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;,
        Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;,
        Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;,
        Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;
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

.field private final duplexPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

.field private final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/plugin/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/security/SecureRandom;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

.field private final simplexPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final startLatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/PluginConfig;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
        .end annotation
    .end param

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 91
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 92
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 93
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

    .line 94
    iput-object p5, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    .line 95
    iput-object p6, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 96
    iput-object p7, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 97
    iput-object p8, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 98
    iput-object p9, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->random:Ljava/security/SecureRandom;

    .line 99
    iput-object p10, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 100
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->plugins:Ljava/util/Map;

    .line 101
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->simplexPlugins:Ljava/util/List;

    .line 102
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->duplexPlugins:Ljava/util/List;

    .line 103
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->startLatches:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 61
    sget-object v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/settings/SettingsManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    return-object p0
.end method

.method static synthetic access$700(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/event/EventBus;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    return-object p0
.end method


# virtual methods
.method public getDuplexPlugins()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->duplexPlugins:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getKeyAgreementPlugins()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->duplexPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    .line 195
    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->supportsKeyAgreement()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPlugin(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/Plugin;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->plugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/plugin/Plugin;

    return-object p1
.end method

.method public getSimplexPlugins()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->simplexPlugins:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public startService()V
    .locals 12

    .line 109
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 111
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/PluginConfig;->shouldPoll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Starting poller"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lorg/briarproject/bramble/plugin/Poller;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->connectionManager:Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    iget-object v7, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    iget-object v9, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    iget-object v10, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->random:Ljava/security/SecureRandom;

    iget-object v11, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    move-object v3, v0

    move-object v8, p0

    invoke-direct/range {v3 .. v11}, Lorg/briarproject/bramble/plugin/Poller;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 116
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 119
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Starting simplex plugins"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/PluginConfig;->getSimplexFactories()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;

    .line 121
    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v4

    .line 122
    new-instance v5, Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;

    invoke-direct {v5, p0, v4, v3}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V

    invoke-interface {v2, v5}, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;->createPlugin(Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginCallback;)Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;

    move-result-object v2

    if-nez v2, :cond_2

    .line 124
    sget-object v2, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    sget-object v2, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create plugin for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v5, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->plugins:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v5, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->simplexPlugins:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 130
    iget-object v6, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->startLatches:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;

    invoke-direct {v6, p0, v2, v5, v3}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 135
    :cond_3
    sget-object v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Starting duplex plugins"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/PluginConfig;->getDuplexFactories()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;

    .line 137
    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v4

    .line 138
    new-instance v5, Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;

    invoke-direct {v5, p0, v4, v3}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V

    invoke-interface {v2, v5}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;->createPlugin(Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    move-result-object v2

    if-nez v2, :cond_5

    .line 140
    sget-object v2, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    sget-object v2, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create plugin for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_5
    iget-object v5, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->plugins:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v5, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->duplexPlugins:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 146
    iget-object v6, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->startLatches:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;

    invoke-direct {v6, p0, v2, v5, v3}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStarter;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    return-void

    .line 109
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stopService()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation

    .line 154
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 156
    sget-object v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Stopping simplex plugins"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->simplexPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;

    .line 158
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->startLatches:Ljava/util/Map;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    .line 159
    iget-object v8, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 162
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Stopping duplex plugins"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->duplexPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    .line 164
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->startLatches:Ljava/util/Map;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    .line 165
    iget-object v8, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginStopper;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 169
    :cond_1
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Waiting for all the plugins to stop"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/ServiceException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/lifecycle/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
