.class public final Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;
.super Ljava/lang/Object;
.source "AndroidAccountManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/account/AndroidAccountManager;",
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

.field private final databaseConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->databaseConfigProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->cryptoProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->prefsProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->appProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;"
        }
    .end annotation

    .line 70
    new-instance v6, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newAndroidAccountManager(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Landroid/content/SharedPreferences;Landroid/app/Application;)Lorg/briarproject/bramble/account/AndroidAccountManager;
    .locals 7

    .line 84
    new-instance v6, Lorg/briarproject/bramble/account/AndroidAccountManager;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/account/AndroidAccountManager;-><init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Landroid/content/SharedPreferences;Landroid/app/Application;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/account/AndroidAccountManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lorg/briarproject/bramble/account/AndroidAccountManager;"
        }
    .end annotation

    .line 56
    new-instance v6, Lorg/briarproject/bramble/account/AndroidAccountManager;

    .line 57
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseConfig;

    .line 58
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 59
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 60
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/content/SharedPreferences;

    .line 61
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/app/Application;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/account/AndroidAccountManager;-><init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Landroid/content/SharedPreferences;Landroid/app/Application;)V

    return-object v6
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->get()Lorg/briarproject/bramble/account/AndroidAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/account/AndroidAccountManager;
    .locals 5

    .line 42
    iget-object v0, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->databaseConfigProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->prefsProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->appProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/briarproject/bramble/account/AndroidAccountManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/account/AndroidAccountManager;

    move-result-object v0

    return-object v0
.end method
