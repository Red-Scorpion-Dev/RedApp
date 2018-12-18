.class public final Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;
.super Ljava/lang/Object;
.source "KeyManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/transport/KeyManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final transportKeyManagerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->pluginConfigProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->transportKeyManagerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;",
            ">;)",
            "Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newKeyManagerImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/PluginConfig;Ljava/lang/Object;)Lorg/briarproject/bramble/transport/KeyManagerImpl;
    .locals 1

    .line 66
    new-instance v0, Lorg/briarproject/bramble/transport/KeyManagerImpl;

    check-cast p3, Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/transport/KeyManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/PluginConfig;Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/KeyManagerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;",
            ">;)",
            "Lorg/briarproject/bramble/transport/KeyManagerImpl;"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/briarproject/bramble/transport/KeyManagerImpl;

    .line 46
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 48
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/plugin/PluginConfig;

    .line 49
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/transport/KeyManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/PluginConfig;Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->get()Lorg/briarproject/bramble/transport/KeyManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/transport/KeyManagerImpl;
    .locals 4

    .line 36
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->pluginConfigProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->transportKeyManagerFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/KeyManagerImpl;

    move-result-object v0

    return-object v0
.end method
