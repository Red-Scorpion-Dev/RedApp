.class public Lorg/briarproject/briar/android/login/SignInReminderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SignInReminderReceiver.java"


# instance fields
.field accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

.field notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/BriarApplication;

    .line 30
    invoke-interface {p1}, Lorg/briarproject/briar/android/BriarApplication;->getApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v0

    .line 31
    invoke-interface {v0, p0}, Lorg/briarproject/briar/android/AndroidComponent;->inject(Lorg/briarproject/briar/android/login/SignInReminderReceiver;)V

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "dismissReminder"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    iget-object p1, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {p1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearSignInNotification()V

    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {p2}, Lorg/briarproject/bramble/api/account/AccountManager;->accountExists()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    .line 38
    invoke-interface {p2}, Lorg/briarproject/bramble/api/account/AccountManager;->hasDatabaseKey()Z

    move-result p2

    if-nez p2, :cond_3

    .line 39
    invoke-interface {p1}, Lorg/briarproject/briar/android/BriarApplication;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_key_notify_sign_in"

    const/4 v0, 0x1

    .line 40
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    iget-object p1, p0, Lorg/briarproject/briar/android/login/SignInReminderReceiver;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {p1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->showSignInNotification()V

    :cond_3
    :goto_1
    return-void
.end method
