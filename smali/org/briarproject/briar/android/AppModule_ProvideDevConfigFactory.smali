.class public final Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideDevConfigFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/reporting/DevConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/AppModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->module:Lorg/briarproject/briar/android/AppModule;

    .line 27
    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->appProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->cryptoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)",
            "Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;-><init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/reporting/DevConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)",
            "Lorg/briarproject/bramble/api/reporting/DevConfig;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-static {p0, p1, p2}, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->proxyProvideDevConfig(Lorg/briarproject/briar/android/AppModule;Landroid/app/Application;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/reporting/DevConfig;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDevConfig(Lorg/briarproject/briar/android/AppModule;Landroid/app/Application;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/reporting/DevConfig;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/AppModule;->provideDevConfig(Landroid/app/Application;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/reporting/DevConfig;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 52
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/reporting/DevConfig;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->get()Lorg/briarproject/bramble/api/reporting/DevConfig;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/reporting/DevConfig;
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->module:Lorg/briarproject/briar/android/AppModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->appProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->cryptoProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/reporting/DevConfig;

    move-result-object v0

    return-object v0
.end method
