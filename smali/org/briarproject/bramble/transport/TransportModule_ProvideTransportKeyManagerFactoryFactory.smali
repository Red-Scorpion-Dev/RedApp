.class public final Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;
.super Ljava/lang/Object;
.source "TransportModule_ProvideTransportKeyManagerFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/transport/TransportModule;

.field private final transportKeyManagerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/transport/TransportModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;->module:Lorg/briarproject/bramble/transport/TransportModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;->transportKeyManagerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/transport/TransportModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;-><init>(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/transport/TransportModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;->proxyProvideTransportKeyManagerFactory(Lorg/briarproject/bramble/transport/TransportModule;Ljava/lang/Object;)Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideTransportKeyManagerFactory(Lorg/briarproject/bramble/transport/TransportModule;Ljava/lang/Object;)Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;
    .locals 0

    .line 45
    check-cast p1, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;

    .line 46
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/transport/TransportModule;->provideTransportKeyManagerFactory(Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;)Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;->get()Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;->module:Lorg/briarproject/bramble/transport/TransportModule;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;->transportKeyManagerFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;->provideInstance(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    move-result-object v0

    return-object v0
.end method
