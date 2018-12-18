.class public final Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;
.super Ljava/lang/Object;
.source "CircumventionModule_ProvideCircumventionProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

.field private final providerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;->module:Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;->providerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;",
            ">;)",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;-><init>(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;",
            ">;)",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;->proxyProvideCircumventionProvider(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;Ljava/lang/Object;)Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideCircumventionProvider(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;Ljava/lang/Object;)Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;
    .locals 0

    .line 41
    check-cast p1, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/tor/CircumventionModule;->provideCircumventionProvider(Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;)Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;->get()Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;->module:Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;->providerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;->provideInstance(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    move-result-object v0

    return-object v0
.end method
