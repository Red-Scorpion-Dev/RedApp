.class public Lorg/briarproject/briar/android/NotificationCleanupService;
.super Landroid/app/IntentService;
.source "NotificationCleanupService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.NotificationCleanupService"


# instance fields
.field notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    sget-object v0, Lorg/briarproject/briar/android/NotificationCleanupService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 33
    invoke-virtual {p0}, Lorg/briarproject/briar/android/NotificationCleanupService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/BriarApplication;

    invoke-interface {v0}, Lorg/briarproject/briar/android/BriarApplication;->getApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v0

    .line 34
    invoke-interface {v0, p0}, Lorg/briarproject/briar/android/AndroidComponent;->inject(Lorg/briarproject/briar/android/NotificationCleanupService;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_6

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://org.briarproject.briar/contact"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object p1, p0, Lorg/briarproject/briar/android/NotificationCleanupService;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {p1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllContactNotifications()V

    goto :goto_0

    :cond_1
    const-string v0, "content://org.briarproject.briar/group"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object p1, p0, Lorg/briarproject/briar/android/NotificationCleanupService;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {p1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllGroupMessageNotifications()V

    goto :goto_0

    :cond_2
    const-string v0, "content://org.briarproject.briar/forum"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    iget-object p1, p0, Lorg/briarproject/briar/android/NotificationCleanupService;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {p1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllForumPostNotifications()V

    goto :goto_0

    :cond_3
    const-string v0, "content://org.briarproject.briar/blog"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    iget-object p1, p0, Lorg/briarproject/briar/android/NotificationCleanupService;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {p1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllBlogPostNotifications()V

    goto :goto_0

    :cond_4
    const-string v0, "content://org.briarproject.briar/introduction"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 50
    iget-object p1, p0, Lorg/briarproject/briar/android/NotificationCleanupService;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {p1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllIntroductionNotifications()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method
