.class public final Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;
.super Ljava/lang/Object;
.source "AccountModule_ProvideAccountManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/account/AccountManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/account/AccountManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/account/AccountModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/account/AccountModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/account/AccountModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/account/AccountManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;->module:Lorg/briarproject/bramble/account/AccountModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;->accountManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/account/AccountModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/account/AccountModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/account/AccountManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;-><init>(Lorg/briarproject/bramble/account/AccountModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/account/AccountModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/account/AccountManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/account/AccountModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/account/AccountManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/account/AccountManager;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;->proxyProvideAccountManager(Lorg/briarproject/bramble/account/AccountModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/account/AccountManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAccountManager(Lorg/briarproject/bramble/account/AccountModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/account/AccountManager;
    .locals 0

    .line 41
    check-cast p1, Lorg/briarproject/bramble/account/AccountManagerImpl;

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/account/AccountModule;->provideAccountManager(Lorg/briarproject/bramble/account/AccountManagerImpl;)Lorg/briarproject/bramble/api/account/AccountManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/account/AccountManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;->get()Lorg/briarproject/bramble/api/account/AccountManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/account/AccountManager;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;->module:Lorg/briarproject/bramble/account/AccountModule;

    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;->accountManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/account/AccountModule_ProvideAccountManagerFactory;->provideInstance(Lorg/briarproject/bramble/account/AccountModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/account/AccountManager;

    move-result-object v0

    return-object v0
.end method
