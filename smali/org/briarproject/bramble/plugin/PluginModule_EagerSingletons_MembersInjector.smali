.class public final Lorg/briarproject/bramble/plugin/PluginModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "PluginModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginModule_EagerSingletons_MembersInjector;->pluginManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/briarproject/bramble/plugin/PluginModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/plugin/PluginModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectPluginManager(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;Lorg/briarproject/bramble/api/plugin/PluginManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/PluginModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginModule_EagerSingletons_MembersInjector;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-static {p1, v0}, Lorg/briarproject/bramble/plugin/PluginModule_EagerSingletons_MembersInjector;->injectPluginManager(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;Lorg/briarproject/bramble/api/plugin/PluginManager;)V

    return-void
.end method
