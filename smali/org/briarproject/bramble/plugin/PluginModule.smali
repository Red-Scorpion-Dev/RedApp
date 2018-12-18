.class public Lorg/briarproject/bramble/plugin/PluginModule;
.super Ljava/lang/Object;
.source "PluginModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideBackoffFactory()Lorg/briarproject/bramble/api/plugin/BackoffFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 25
    new-instance v0, Lorg/briarproject/bramble/plugin/BackoffFactoryImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/BackoffFactoryImpl;-><init>()V

    return-object v0
.end method

.method provideConnectionManager(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideConnectionRegistry(Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method providePluginManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/plugin/PluginManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 46
    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    return-object p2
.end method
