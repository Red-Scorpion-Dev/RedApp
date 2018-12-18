.class public final Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;
.super Ljava/lang/Object;
.source "AndroidSystemModule_ProvideResourceProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/system/ResourceProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/system/AndroidSystemModule;

.field private final providerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/system/AndroidResourceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/system/AndroidSystemModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/system/AndroidResourceProvider;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;->module:Lorg/briarproject/bramble/system/AndroidSystemModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;->providerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/system/AndroidSystemModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/system/AndroidResourceProvider;",
            ">;)",
            "Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;-><init>(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/system/ResourceProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/system/AndroidSystemModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/system/AndroidResourceProvider;",
            ">;)",
            "Lorg/briarproject/bramble/api/system/ResourceProvider;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;->proxyProvideResourceProvider(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/system/ResourceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideResourceProvider(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/system/ResourceProvider;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/system/AndroidResourceProvider;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/system/AndroidSystemModule;->provideResourceProvider(Lorg/briarproject/bramble/system/AndroidResourceProvider;)Lorg/briarproject/bramble/api/system/ResourceProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/system/ResourceProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;->get()Lorg/briarproject/bramble/api/system/ResourceProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/system/ResourceProvider;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;->module:Lorg/briarproject/bramble/system/AndroidSystemModule;

    iget-object v1, p0, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;->providerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;->provideInstance(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/system/ResourceProvider;

    move-result-object v0

    return-object v0
.end method
