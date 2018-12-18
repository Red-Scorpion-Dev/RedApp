.class public final Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;
.super Ljava/lang/Object;
.source "PluginModule_ProvideConnectionManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/plugin/PluginModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/PluginModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;->module:Lorg/briarproject/bramble/plugin/PluginModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;->connectionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/PluginModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;-><init>(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/PluginModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;->proxyProvideConnectionManager(Lorg/briarproject/bramble/plugin/PluginModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideConnectionManager(Lorg/briarproject/bramble/plugin/PluginModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/PluginModule;->provideConnectionManager(Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;->get()Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/plugin/ConnectionManager;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;->module:Lorg/briarproject/bramble/plugin/PluginModule;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;->connectionManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;->provideInstance(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    move-result-object v0

    return-object v0
.end method
