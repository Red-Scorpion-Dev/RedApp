.class Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;
.super Ljava/lang/Object;
.source "ScreenFilterMonitorImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/briar/api/android/ScreenFilterMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$PackageBroadcastReceiver;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field private static final PLAY_SERVICES_PUBLIC_KEY:Ljava/lang/String; = "30820120300D06092A864886F70D01010105000382010D00308201080282010100AB562E00D83BA208AE0A966F124E29DA11F2AB56D08F58E2CCA91303E9B754D372F640A71B1DCB130967624E4656A7776A92193DB2E5BFB724A91E77188B0E6A47A43B33D9609B77183145CCDF7B2E586674C9E1565B1F4C6A5955BFF251A63DABF9C55C27222252E875E4F8154A645F897168C0B1BFC612EABF785769BB34AA7984DC7E2EA2764CAE8307D8C17154D7EE5F64A51A44A602C249054157DC02CD5F5C0E55FBEF8519FBE327F0B1511692C5A06F19D18385F5C4DBC2D6B93F68CC2979C70E18AB93866B3BD5DB8999552A0E3B4C99DF58FB918BEDC182BA35E003C1B4B10DD244A8EE24FFFD333872AB5221985EDAB0FC0D0B145B6AA192858E79020103"

.field private static final PREF_KEY_ALLOWED:Ljava/lang/String; = "allowedOverlayApps"


# instance fields
.field private final androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

.field private final app:Landroid/app/Application;

.field private cachedApps:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/content/pm/PackageManager;

.field private final prefs:Landroid/content/SharedPreferences;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->receiver:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->cachedApps:Ljava/util/Collection;

    .line 97
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->pm:Landroid/content/pm/PackageManager;

    .line 98
    iput-object p1, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->app:Landroid/app/Application;

    .line 99
    iput-object p2, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 100
    iput-object p3, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$002(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->cachedApps:Ljava/util/Collection;

    return-object p1
.end method

.method private getAppName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->pm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isOverlayApp(Landroid/content/pm/PackageInfo;)Z
    .locals 6

    .line 147
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 149
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->isPlayServices(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 151
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_2

    return v1

    .line 153
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-lt v2, v3, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_6

    .line 155
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    const/4 v2, 0x0

    .line 156
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 157
    aget-object v3, v0, v2

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_3

    .line 159
    aget p1, p1, v2

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_6
    array-length p1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_8

    aget-object v3, v0, v2

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 166
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return v1
.end method

.method private isPlayServices(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    const-string v0, "com.google.android.gms"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->pm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 180
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_2

    .line 181
    array-length v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "X509"

    .line 184
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 185
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 186
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 188
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 189
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 190
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "30820120300D06092A864886F70D01010105000382010D00308201080282010100AB562E00D83BA208AE0A966F124E29DA11F2AB56D08F58E2CCA91303E9B754D372F640A71B1DCB130967624E4656A7776A92193DB2E5BFB724A91E77188B0E6A47A43B33D9609B77183145CCDF7B2E586674C9E1565B1F4C6A5955BFF251A63DABF9C55C27222252E875E4F8154A645F897168C0B1BFC612EABF785769BB34AA7984DC7E2EA2764CAE8307D8C17154D7EE5F64A51A44A602C249054157DC02CD5F5C0E55FBEF8519FBE327F0B1511692C5A06F19D18385F5C4DBC2D6B93F68CC2979C70E18AB93866B3BD5DB8999552A0E3B4C99DF58FB918BEDC182BA35E003C1B4B10DD244A8EE24FFFD333872AB5221985EDAB0FC0D0B145B6AA192858E79020103"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 193
    sget-object v0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v2, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return v1
.end method

.method static synthetic lambda$getApps$0(Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;)I
    .locals 0

    .line 119
    iget-object p0, p0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$startService$1(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;)V
    .locals 4

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$PackageBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$PackageBroadcastReceiver;-><init>(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$1;)V

    iput-object v1, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->receiver:Landroid/content/BroadcastReceiver;

    .line 209
    iget-object v1, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->app:Landroid/app/Application;

    iget-object v3, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    iput-object v2, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->cachedApps:Ljava/util/Collection;

    return-void
.end method

.method public static synthetic lambda$stopService$2(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->app:Landroid/app/Application;

    iget-object v1, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allowApps(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->cachedApps:Ljava/util/Collection;

    .line 129
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "allowedOverlayApps"

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 129
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object p1, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "allowedOverlayApps"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getApps()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->cachedApps:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->cachedApps:Ljava/util/Collection;

    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "allowedOverlayApps"

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 107
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v2, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->pm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    .line 111
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 113
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 114
    invoke-direct {p0, v3}, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->isOverlayApp(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-direct {p0, v3}, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->getAppName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    .line 116
    new-instance v5, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$oUzPdtFrw27x0P5mNYphRS1QPdk;->INSTANCE:Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$oUzPdtFrw27x0P5mNYphRS1QPdk;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->cachedApps:Ljava/util/Collection;

    return-object v0
.end method

.method public startService()V
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$zdxdgPpnqsrMRn4sFWDZP83EAFE;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$zdxdgPpnqsrMRn4sFWDZP83EAFE;-><init>(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stopService()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$9CgNjfKk9PW6STTYlAgQxjEs-x8;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$ScreenFilterMonitorImpl$9CgNjfKk9PW6STTYlAgQxjEs-x8;-><init>(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
