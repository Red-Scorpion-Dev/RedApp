.class public final Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;
.super Ljava/lang/Object;
.source "IdentityModule_ProvideAuthorFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/identity/AuthorFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/identity/IdentityModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/identity/IdentityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/identity/AuthorFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->module:Lorg/briarproject/bramble/identity/IdentityModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->authorFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/identity/IdentityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/identity/AuthorFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;-><init>(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/identity/AuthorFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/identity/IdentityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/identity/AuthorFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->proxyProvideAuthorFactory(Lorg/briarproject/bramble/identity/IdentityModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/identity/AuthorFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAuthorFactory(Lorg/briarproject/bramble/identity/IdentityModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/identity/AuthorFactory;
    .locals 0

    .line 41
    check-cast p1, Lorg/briarproject/bramble/identity/AuthorFactoryImpl;

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/identity/IdentityModule;->provideAuthorFactory(Lorg/briarproject/bramble/identity/AuthorFactoryImpl;)Lorg/briarproject/bramble/api/identity/AuthorFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/identity/AuthorFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->get()Lorg/briarproject/bramble/api/identity/AuthorFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/identity/AuthorFactory;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->module:Lorg/briarproject/bramble/identity/IdentityModule;

    iget-object v1, p0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->authorFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->provideInstance(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/identity/AuthorFactory;

    move-result-object v0

    return-object v0
.end method
