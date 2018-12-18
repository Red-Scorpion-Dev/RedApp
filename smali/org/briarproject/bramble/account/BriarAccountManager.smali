.class Lorg/briarproject/bramble/account/BriarAccountManager;
.super Lorg/briarproject/bramble/account/AndroidAccountManager;
.source "BriarAccountManager.java"


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Landroid/content/SharedPreferences;Landroid/app/Application;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/bramble/account/AndroidAccountManager;-><init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Landroid/content/SharedPreferences;Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public deleteAccount()V
    .locals 4

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/account/BriarAccountManager;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    invoke-super {p0}, Lorg/briarproject/bramble/account/AndroidAccountManager;->deleteAccount()V

    .line 28
    invoke-static {}, Lorg/briarproject/briar/android/Localizer;->reinitialize()V

    .line 29
    iget-object v1, p0, Lorg/briarproject/bramble/account/BriarAccountManager;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/briarproject/bramble/account/BriarAccountManager;->appContext:Landroid/content/Context;

    const v3, 0x7f11017e

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lorg/briarproject/briar/android/util/UiUtils;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
