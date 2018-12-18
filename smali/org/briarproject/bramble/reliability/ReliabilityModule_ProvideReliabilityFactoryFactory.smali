.class public final Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;
.super Ljava/lang/Object;
.source "ReliabilityModule_ProvideReliabilityFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/reliability/ReliabilityModule;

.field private final reliabilityLayerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/reliability/ReliabilityModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/reliability/ReliabilityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;->module:Lorg/briarproject/bramble/reliability/ReliabilityModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;->reliabilityLayerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/reliability/ReliabilityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/reliability/ReliabilityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;-><init>(Lorg/briarproject/bramble/reliability/ReliabilityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/reliability/ReliabilityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/reliability/ReliabilityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;->proxyProvideReliabilityFactory(Lorg/briarproject/bramble/reliability/ReliabilityModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideReliabilityFactory(Lorg/briarproject/bramble/reliability/ReliabilityModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;
    .locals 0

    .line 46
    check-cast p1, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;

    .line 47
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/reliability/ReliabilityModule;->provideReliabilityFactory(Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;)Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 46
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;->get()Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;->module:Lorg/briarproject/bramble/reliability/ReliabilityModule;

    iget-object v1, p0, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;->reliabilityLayerFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/reliability/ReliabilityModule_ProvideReliabilityFactoryFactory;->provideInstance(Lorg/briarproject/bramble/reliability/ReliabilityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;

    move-result-object v0

    return-object v0
.end method
