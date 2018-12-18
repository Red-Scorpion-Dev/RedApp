.class Lorg/briarproject/bramble/account/AndroidAccountManager;
.super Lorg/briarproject/bramble/account/AccountManagerImpl;
.source "AndroidAccountManager.java"

# interfaces
.implements Lorg/briarproject/bramble/api/account/AccountManager;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PREF_DB_KEY:Ljava/lang/String; = "key"


# instance fields
.field protected final appContext:Landroid/content/Context;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lorg/briarproject/bramble/account/AndroidAccountManager;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Landroid/content/SharedPreferences;Landroid/app/Application;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/account/AccountManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    .line 36
    iput-object p4, p0, Lorg/briarproject/bramble/account/AndroidAccountManager;->prefs:Landroid/content/SharedPreferences;

    .line 37
    invoke-virtual {p5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/account/AndroidAccountManager;->appContext:Landroid/content/Context;

    return-void
.end method

.method private varargs deleteAppData([Landroid/content/SharedPreferences;)V
    .locals 6

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 88
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    sget-object v3, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Could not clear shared preferences"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/briarproject/bramble/account/AndroidAccountManager;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 95
    sget-object v0, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Could not list files in app data dir"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_2
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 98
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lib"

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "shared_prefs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 100
    invoke-static {v3}, Lorg/briarproject/bramble/util/IoUtils;->deleteFileOrDir(Ljava/io/File;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_4
    :goto_2
    new-instance v0, Ljava/io/File;

    const-string v1, "cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_5

    .line 106
    sget-object p1, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Could not recreate cache dir"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private getDatabaseKeyFromPreferences()Ljava/lang/String;
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/briarproject/bramble/account/AndroidAccountManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    sget-object v1, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    const-string v2, "No database key in preferences"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object v1, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Found database key in preferences"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private migrateDatabaseKeyToFile(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/account/AndroidAccountManager;->storeEncryptedDatabaseKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lorg/briarproject/bramble/account/AndroidAccountManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    sget-object p1, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Database key migrated to file"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    sget-object p1, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Database key not removed from preferences"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    sget-object p1, Lorg/briarproject/bramble/account/AndroidAccountManager;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Database key not migrated to file"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteAccount()V
    .locals 5

    .line 72
    iget-object v0, p0, Lorg/briarproject/bramble/account/AndroidAccountManager;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-super {p0}, Lorg/briarproject/bramble/account/AccountManagerImpl;->deleteAccount()V

    .line 74
    invoke-virtual {p0}, Lorg/briarproject/bramble/account/AndroidAccountManager;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x2

    .line 75
    new-array v2, v2, [Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/briarproject/bramble/account/AndroidAccountManager;->prefs:Landroid/content/SharedPreferences;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {p0, v2}, Lorg/briarproject/bramble/account/AndroidAccountManager;->deleteAppData([Landroid/content/SharedPreferences;)V

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDefaultSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/briarproject/bramble/account/AndroidAccountManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected loadEncryptedDatabaseKey()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/briarproject/bramble/account/AndroidAccountManager;->getDatabaseKeyFromPreferences()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-super {p0}, Lorg/briarproject/bramble/account/AccountManagerImpl;->loadEncryptedDatabaseKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/account/AndroidAccountManager;->migrateDatabaseKeyToFile(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
