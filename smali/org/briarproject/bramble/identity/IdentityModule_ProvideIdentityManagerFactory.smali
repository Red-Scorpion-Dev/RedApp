.class public final Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;
.super Ljava/lang/Object;
.source "IdentityModule_ProvideIdentityManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/identity/IdentityManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final identityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/identity/IdentityManagerImpl;",
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
            "Lorg/briarproject/bramble/identity/IdentityManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;->module:Lorg/briarproject/bramble/identity/IdentityModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;->identityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/identity/IdentityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/identity/IdentityManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;-><init>(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/identity/IdentityManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/identity/IdentityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/identity/IdentityManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;->proxyProvideIdentityManager(Lorg/briarproject/bramble/identity/IdentityModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/identity/IdentityManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideIdentityManager(Lorg/briarproject/bramble/identity/IdentityModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/identity/IdentityManager;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/identity/IdentityManagerImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/identity/IdentityModule;->provideIdentityManager(Lorg/briarproject/bramble/identity/IdentityManagerImpl;)Lorg/briarproject/bramble/api/identity/IdentityManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/identity/IdentityManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;->get()Lorg/briarproject/bramble/api/identity/IdentityManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/identity/IdentityManager;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;->module:Lorg/briarproject/bramble/identity/IdentityModule;

    iget-object v1, p0, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;->identityManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;->provideInstance(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/identity/IdentityManager;

    move-result-object v0

    return-object v0
.end method
