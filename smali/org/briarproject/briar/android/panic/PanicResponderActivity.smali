.class public Lorg/briarproject/briar/android/panic/PanicResponderActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "PanicResponderActivity.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

.field protected androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/briarproject/briar/android/panic/PanicResponderActivity;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method private deleteAllData()V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicResponderActivity$JWb1q5AMNgqfNKz55-qx542i_5o;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicResponderActivity$JWb1q5AMNgqfNKz55-qx542i_5o;-><init>(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$deleteAllData$0(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/account/AccountManager;->deleteAccount()V

    .line 88
    invoke-static {p0}, Linfo/guardianproject/panic/PanicResponder;->deleteAllAppData(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Signing out..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->signOut(Z)V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 81
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Linfo/guardianproject/trustedintents/TrustedIntents;->get(Landroid/content/Context;)Linfo/guardianproject/trustedintents/TrustedIntents;

    move-result-object p1

    .line 42
    const-class v0, Linfo/guardianproject/GuardianProjectRSA4096;

    invoke-virtual {p1, v0}, Linfo/guardianproject/trustedintents/TrustedIntents;->addTrustedSigner(Ljava/lang/Class;)Z

    .line 44
    const-class v0, Lorg/briarproject/briar/android/panic/FDroidSignaturePin;

    invoke-virtual {p1, v0}, Linfo/guardianproject/trustedintents/TrustedIntents;->addTrustedSigner(Ljava/lang/Class;)Z

    .line 46
    invoke-virtual {p1, p0}, Linfo/guardianproject/trustedintents/TrustedIntents;->getIntentFromTrustedSender(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    invoke-static {p1}, Linfo/guardianproject/panic/Panic;->isTriggerIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 53
    sget-object v0, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Received Panic Trigger..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Linfo/guardianproject/panic/PanicResponder;->receivedTriggerFromConnectedApp(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Panic Trigger came from connected app"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const-string v0, "pref_key_purge"

    const/4 v1, 0x0

    .line 59
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Purging all data..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->deleteAllData()V

    :cond_0
    const-string v0, "pref_key_lock"

    const/4 v1, 0x1

    .line 65
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    sget-object p1, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Signing out..."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->signOut(Z)V

    .line 72
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicResponderActivity;->finish()V

    :goto_0
    return-void
.end method
