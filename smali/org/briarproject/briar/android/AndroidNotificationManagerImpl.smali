.class Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;
.super Ljava/lang/Object;
.source "AndroidNotificationManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/briar/api/android/AndroidNotificationManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final SOUND_DELAY:J


# instance fields
.field private final androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

.field private final appContext:Landroid/content/Context;

.field private blockBlogs:Z

.field private blockContacts:Z

.field private blockForums:Z

.field private blockGroups:Z

.field private blockIntroductions:Z

.field private blockSignInReminder:Z

.field private blockedContact:Lorg/briarproject/bramble/api/contact/ContactId;

.field private blockedGroup:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final blogCounts:Lorg/briarproject/bramble/api/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/api/Multiset<",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final contactCounts:Lorg/briarproject/bramble/api/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/api/Multiset<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation
.end field

.field private final forumCounts:Lorg/briarproject/bramble/api/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/api/Multiset<",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ">;"
        }
    .end annotation
.end field

.field private final groupCounts:Lorg/briarproject/bramble/api/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/api/Multiset<",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ">;"
        }
    .end annotation
.end field

.field private introductionTotal:I

.field private lastSound:J

.field private nextRequestId:I

.field private final notificationManager:Landroid/app/NotificationManager;

.field private volatile settings:Lorg/briarproject/bramble/api/settings/Settings;

.field private final settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->SOUND_DELAY:J

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/app/Application;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    new-instance v0, Lorg/briarproject/bramble/api/Multiset;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/Multiset;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    .line 99
    new-instance v0, Lorg/briarproject/bramble/api/Multiset;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/Multiset;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->groupCounts:Lorg/briarproject/bramble/api/Multiset;

    .line 100
    new-instance v0, Lorg/briarproject/bramble/api/Multiset;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/Multiset;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->forumCounts:Lorg/briarproject/bramble/api/Multiset;

    .line 101
    new-instance v0, Lorg/briarproject/bramble/api/Multiset;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/Multiset;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blogCounts:Lorg/briarproject/bramble/api/Multiset;

    .line 102
    iput v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->introductionTotal:I

    .line 103
    iput v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedContact:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 105
    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedGroup:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 106
    iput-boolean v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockSignInReminder:Z

    .line 107
    iput-boolean v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockContacts:Z

    iput-boolean v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockGroups:Z

    .line 108
    iput-boolean v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockForums:Z

    iput-boolean v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockBlogs:Z

    .line 109
    iput-boolean v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockIntroductions:Z

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->lastSound:J

    .line 112
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 117
    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 118
    iput-object p2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 119
    iput-object p4, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 120
    invoke-virtual {p3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    .line 121
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-string p2, "notification"

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private clearBlogPostNotification()V
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blogCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->clear()V

    .line 207
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearContactNotification()V
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->clear()V

    .line 189
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearForumPostNotification()V
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->forumCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->clear()V

    .line 201
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearGroupMessageNotification()V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->groupCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->clear()V

    .line 195
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearIntroductionSuccessNotification()V
    .locals 2

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->introductionTotal:I

    .line 213
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 158
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, -0x1

    .line 161
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const/4 p1, 0x1

    .line 162
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 164
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const p2, 0x7f060030

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 165
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private getDefaults()I
    .locals 4

    .line 361
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "notifySound"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 362
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v3, "notifyRingtoneUri"

    invoke-virtual {v1, v3}, Lorg/briarproject/bramble/api/settings/Settings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 363
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 365
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v3, "notifyVibration"

    invoke-virtual {v1, v3, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method private getForegroundNotification(Z)Landroid/app/Notification;
    .locals 5

    if-eqz p1, :cond_0

    const v0, 0x7f110115

    goto :goto_0

    :cond_0
    const v0, 0x7f110149

    :goto_0
    if-eqz p1, :cond_1

    const v1, 0x7f110116

    goto :goto_1

    :cond_1
    const v1, 0x7f110148

    :goto_1
    if-eqz p1, :cond_2

    const p1, 0x7f080937

    goto :goto_2

    :cond_2
    const p1, 0x7f080929

    .line 256
    :goto_2
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-string v4, "zForegroundService"

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 259
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v3, 0x7f060031

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 260
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 261
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-wide/16 v0, 0x0

    .line 262
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p1, 0x1

    .line 263
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 264
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 267
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    const-string p1, "service"

    .line 268
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p1, -0x1

    .line 269
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_3
    const/4 p1, -0x2

    .line 271
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 272
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$LjJFLTpNENk4Eey1s-1RsdUNp_Y(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearForumPostNotification()V

    return-void
.end method

.method public static synthetic lambda$OxwEvQpnUNh22EDxwLBkuc91188(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearBlogPostNotification()V

    return-void
.end method

.method public static synthetic lambda$R9dohoRpW578SAY6IhzCRHkkkJg(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearIntroductionSuccessNotification()V

    return-void
.end method

.method public static synthetic lambda$ZldKeT_WHTBf4KOLpt5WD34ySlY(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearContactNotification()V

    return-void
.end method

.method public static synthetic lambda$blockAllBlogPostNotifications$15(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 1

    const/4 v0, 0x1

    .line 698
    iput-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockBlogs:Z

    return-void
.end method

.method public static synthetic lambda$blockContactNotification$13(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedContact:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method

.method public static synthetic lambda$blockNotification$11(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedGroup:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method

.method public static synthetic lambda$clearBlogPostNotification$9(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blogCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->removeAll(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateBlogPostNotification(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$clearContactNotification$3(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->removeAll(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 295
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateContactNotification(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$clearForumPostNotification$7(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->forumCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->removeAll(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 468
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateForumPostNotification(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$clearGroupMessageNotification$5(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->groupCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->removeAll(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 397
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateGroupMessageNotification(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$s-RGDkol0agICWjVT1-B_bMws8E(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearGroupMessageNotification()V

    return-void
.end method

.method public static synthetic lambda$showBlogPostNotification$8(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 527
    iget-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockBlogs:Z

    if-eqz v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedGroup:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blogCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->add(Ljava/lang/Object;)I

    const/4 p1, 0x1

    .line 530
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateBlogPostNotification(Z)V

    return-void
.end method

.method public static synthetic lambda$showContactNotification$2(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockContacts:Z

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedContact:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->add(Ljava/lang/Object;)I

    const/4 p1, 0x1

    .line 287
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateContactNotification(Z)V

    return-void
.end method

.method public static synthetic lambda$showForumPostNotification$6(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 457
    iget-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockForums:Z

    if-eqz v0, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedGroup:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->forumCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->add(Ljava/lang/Object;)I

    const/4 p1, 0x1

    .line 460
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateForumPostNotification(Z)V

    return-void
.end method

.method public static synthetic lambda$showGroupMessageNotification$4(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 386
    iget-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockGroups:Z

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedGroup:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->groupCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->add(Ljava/lang/Object;)I

    const/4 p1, 0x1

    .line 389
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateGroupMessageNotification(Z)V

    return-void
.end method

.method public static synthetic lambda$showIntroductionNotification$10(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 1

    .line 581
    iget-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockIntroductions:Z

    if-eqz v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->introductionTotal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->introductionTotal:I

    .line 583
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->updateIntroductionNotification()V

    return-void
.end method

.method public static synthetic lambda$startService$0(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "contacts"

    const v1, 0x7f11007a

    .line 137
    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->createNotificationChannel(Ljava/lang/String;I)V

    const-string v0, "groups"

    const v1, 0x7f1100c0

    .line 139
    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->createNotificationChannel(Ljava/lang/String;I)V

    const-string v0, "forums"

    const v1, 0x7f1100be

    .line 141
    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->createNotificationChannel(Ljava/lang/String;I)V

    const-string v0, "blogs"

    const v1, 0x7f110033

    .line 143
    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->createNotificationChannel(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$stopService$1(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearContactNotification()V

    .line 173
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearGroupMessageNotification()V

    .line 174
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearForumPostNotification()V

    .line 175
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearBlogPostNotification()V

    .line 176
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearIntroductionSuccessNotification()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$unblockAllBlogPostNotifications$16(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 703
    iput-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockBlogs:Z

    return-void
.end method

.method public static synthetic lambda$unblockContactNotification$14(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 692
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedContact:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedContact:Lorg/briarproject/bramble/api/contact/ContactId;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$unblockNotification$12(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedGroup:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockedGroup:Lorg/briarproject/bramble/api/sync/GroupId;

    :cond_0
    return-void
.end method

.method private setAlertProperties(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;)V
    .locals 7

    .line 347
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 348
    iget-wide v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->lastSound:J

    sub-long v2, v0, v2

    sget-wide v4, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->SOUND_DELAY:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 349
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v3, "notifySound"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 350
    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v4, "notifyRingtoneUri"

    invoke-virtual {v3, v4}, Lorg/briarproject/bramble/api/settings/Settings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 351
    invoke-static {v3}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 353
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->getDefaults()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 354
    iput-wide v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->lastSound:J

    :cond_1
    return-void
.end method

.method private setDeleteIntent(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;Ljava/lang/String;)V
    .locals 3

    .line 371
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v2, Lorg/briarproject/briar/android/NotificationCleanupService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 373
    iget-object p2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    iget v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private showBlogPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$W2MLdikqSo_y72xURMSktWbAK8k;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$W2MLdikqSo_y72xURMSktWbAK8k;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$RVvKu0BQ9GHxZncRQOL12xNcnwQ;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$RVvKu0BQ9GHxZncRQOL12xNcnwQ;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showForumPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$1xOB_KcQVG71jakJxiO8HvtXDzs;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$1xOB_KcQVG71jakJxiO8HvtXDzs;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showGroupMessageNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 385
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$o-HP3qXafqidPWaMZm_T0Orq_LY;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$o-HP3qXafqidPWaMZm_T0Orq_LY;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showIntroductionNotification()V
    .locals 2

    .line 580
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KrpLFxpQ8C0HcyDKZUgjOlyTejE;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KrpLFxpQ8C0HcyDKZUgjOlyTejE;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBlogPostNotification(Z)V
    .locals 8

    .line 543
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blogCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->getTotal()I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearBlogPostNotification()V

    goto/16 :goto_0

    .line 546
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyBlogPosts"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    new-instance v1, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-string v4, "blogs"

    invoke-direct {v1, v2, v4}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080925

    .line 549
    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f060031

    .line 550
    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setColorRes(I)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    .line 551
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v4, 0x7f11002b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 552
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v4, 0x7f0f0000

    new-array v5, v3, [Ljava/lang/Object;

    .line 554
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 552
    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 555
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "social"

    .line 556
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNotificationCategory(Ljava/lang/String;)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    if-eqz p1, :cond_1

    .line 557
    invoke-direct {p0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setAlertProperties(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;)V

    :cond_1
    const-string p1, "content://org.briarproject.briar/blog"

    .line 558
    invoke-direct {p0, v1, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setDeleteIntent(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;Ljava/lang/String;)V

    .line 560
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v2, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "intent_blogs"

    .line 561
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 562
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "content://org.briarproject.briar/blog"

    .line 563
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 564
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 565
    const-class v2, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 566
    invoke-virtual {v0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 567
    iget p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    invoke-virtual {v0, p1, v7}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 569
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x7

    invoke-virtual {v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateContactNotification(Z)V
    .locals 8

    .line 301
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->getTotal()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearContactNotification()V

    goto/16 :goto_1

    .line 304
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyPrivateMessages"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    new-instance v1, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-string v4, "contacts"

    invoke-direct {v1, v2, v4}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f08092b

    .line 307
    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f060031

    .line 308
    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setColorRes(I)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    .line 309
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v4, 0x7f11002b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 310
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0009

    new-array v5, v3, [Ljava/lang/Object;

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 310
    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 313
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "msg"

    .line 314
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNotificationCategory(Ljava/lang/String;)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    if-eqz p1, :cond_1

    .line 315
    invoke-direct {p0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setAlertProperties(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;)V

    :cond_1
    const-string p1, "content://org.briarproject.briar/contact"

    .line 316
    invoke-direct {p0, v1, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setDeleteIntent(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Multiset;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 318
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/high16 v2, 0x4000000

    if-ne v0, v3, :cond_2

    .line 320
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v4, Lorg/briarproject/briar/android/conversation/ConversationActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/contact/ContactId;

    const-string v3, "briar.CONTACT_ID"

    .line 322
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://org.briarproject.briar/contact/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 324
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object p1

    .line 326
    const-class v2, Lorg/briarproject/briar/android/conversation/ConversationActivity;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 327
    invoke-virtual {p1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 328
    iget v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    invoke-virtual {p1, v0, v7}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 331
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v4, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "intent_contacts"

    .line 332
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "content://org.briarproject.briar/contact"

    .line 334
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 335
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 336
    const-class v2, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 337
    invoke-virtual {v0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 338
    iget p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    invoke-virtual {v0, p1, v7}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 340
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x4

    .line 341
    invoke-virtual {v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 340
    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateForumPostNotification(Z)V
    .locals 8

    .line 474
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->forumCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->getTotal()I

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearForumPostNotification()V

    goto/16 :goto_1

    .line 477
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyForumPosts"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    new-instance v1, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-string v4, "forums"

    invoke-direct {v1, v2, v4}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080926

    .line 480
    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f060031

    .line 481
    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setColorRes(I)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    .line 482
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v4, 0x7f11002b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 483
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0002

    new-array v5, v3, [Ljava/lang/Object;

    .line 485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 483
    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 486
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "social"

    .line 487
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNotificationCategory(Ljava/lang/String;)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    if-eqz p1, :cond_1

    .line 488
    invoke-direct {p0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setAlertProperties(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;)V

    :cond_1
    const-string p1, "content://org.briarproject.briar/forum"

    .line 489
    invoke-direct {p0, v1, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setDeleteIntent(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->forumCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Multiset;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 491
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/high16 v2, 0x4000000

    if-ne v0, v3, :cond_2

    .line 493
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v4, Lorg/briarproject/briar/android/forum/ForumActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/sync/GroupId;

    const-string v3, "briar.GROUP_ID"

    .line 495
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 496
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://org.briarproject.briar/forum/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 498
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 499
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object p1

    .line 500
    const-class v2, Lorg/briarproject/briar/android/forum/ForumActivity;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 501
    invoke-virtual {p1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 502
    iget v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    invoke-virtual {p1, v0, v7}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 505
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v4, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "intent_forums"

    .line 506
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "content://org.briarproject.briar/forum"

    .line 508
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 509
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 510
    const-class v2, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 511
    invoke-virtual {v0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 512
    iget p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    invoke-virtual {v0, p1, v7}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 514
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x6

    invoke-virtual {v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateGroupMessageNotification(Z)V
    .locals 8

    .line 403
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->groupCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->getTotal()I

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->clearGroupMessageNotification()V

    goto/16 :goto_1

    .line 406
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyGroupMessages"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    new-instance v1, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-string v4, "groups"

    invoke-direct {v1, v2, v4}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f08092a

    .line 409
    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f060031

    .line 410
    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setColorRes(I)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    .line 411
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v4, 0x7f11002b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 412
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0004

    new-array v5, v3, [Ljava/lang/Object;

    .line 414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 412
    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 415
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "social"

    .line 416
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNotificationCategory(Ljava/lang/String;)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    if-eqz p1, :cond_1

    .line 417
    invoke-direct {p0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setAlertProperties(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;)V

    :cond_1
    const-string p1, "content://org.briarproject.briar/group"

    .line 418
    invoke-direct {p0, v1, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setDeleteIntent(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->groupCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Multiset;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 420
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/high16 v2, 0x4000000

    if-ne v0, v3, :cond_2

    .line 422
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v4, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/sync/GroupId;

    const-string v3, "briar.GROUP_ID"

    .line 424
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 425
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://org.briarproject.briar/group/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 427
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 428
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object p1

    .line 429
    const-class v2, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 430
    invoke-virtual {p1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 431
    iget v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    invoke-virtual {p1, v0, v7}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 434
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v4, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "intent_groups"

    .line 435
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "content://org.briarproject.briar/group"

    .line 437
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 438
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 439
    const-class v2, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 440
    invoke-virtual {v0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 441
    iget p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    invoke-virtual {v0, p1, v7}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 443
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x5

    .line 444
    invoke-virtual {v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 443
    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateIntroductionNotification()V
    .locals 7

    .line 589
    new-instance v0, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-string v2, "contacts"

    invoke-direct {v0, v1, v2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f080928

    .line 591
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x7f060031

    .line 592
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setColorRes(I)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    .line 593
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v2, 0x7f11002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 594
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->introductionTotal:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->introductionTotal:I

    .line 596
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0f0006

    .line 594
    invoke-virtual {v1, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "msg"

    .line 597
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setNotificationCategory(Ljava/lang/String;)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;

    .line 598
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setAlertProperties(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;)V

    const-string v1, "content://org.briarproject.briar/introduction"

    .line 599
    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->setDeleteIntent(Lorg/briarproject/briar/android/util/BriarNotificationBuilder;Ljava/lang/String;)V

    .line 601
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v4, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "intent_contacts"

    .line 602
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    .line 603
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "content://org.briarproject.briar/contact"

    .line 604
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 605
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v2

    .line 606
    const-class v3, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 607
    invoke-virtual {v2, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 608
    iget v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->nextRequestId:I

    invoke-virtual {v2, v1, v6}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 610
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    .line 611
    invoke-virtual {v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x8

    .line 610
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public blockAllBlogPostNotifications()V
    .locals 2

    .line 698
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$hk_EfssJBKsBzRRDfRjOrEo4ack;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$hk_EfssJBKsBzRRDfRjOrEo4ack;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blockContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 686
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$bNCCi5fT2IYUYRtFV-Sj-ImNKbU;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$bNCCi5fT2IYUYRtFV-Sj-ImNKbU;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 674
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$b6Lyx8qSAhY4l-CBn5OHYTzbpRU;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$b6Lyx8qSAhY4l-CBn5OHYTzbpRU;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blockSignInNotification()V
    .locals 1

    const/4 v0, 0x1

    .line 669
    iput-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockSignInReminder:Z

    return-void
.end method

.method public clearAllBlogPostNotifications()V
    .locals 2

    .line 575
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$OxwEvQpnUNh22EDxwLBkuc91188;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$OxwEvQpnUNh22EDxwLBkuc91188;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearAllContactNotifications()V
    .locals 2

    .line 379
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$ZldKeT_WHTBf4KOLpt5WD34ySlY;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$ZldKeT_WHTBf4KOLpt5WD34ySlY;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearAllForumPostNotifications()V
    .locals 2

    .line 520
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$LjJFLTpNENk4Eey1s-1RsdUNp_Y;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$LjJFLTpNENk4Eey1s-1RsdUNp_Y;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearAllGroupMessageNotifications()V
    .locals 2

    .line 450
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$s-RGDkol0agICWjVT1-B_bMws8E;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$s-RGDkol0agICWjVT1-B_bMws8E;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearAllIntroductionNotifications()V
    .locals 2

    .line 616
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$R9dohoRpW578SAY6IhzCRHkkkJg;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$R9dohoRpW578SAY6IhzCRHkkkJg;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearBlogPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$A3W9g2ghPvPHsSnEHA1eW5sLHxs;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$A3W9g2ghPvPHsSnEHA1eW5sLHxs;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KpjAteN7H3h6Kmjrtw7Elpvyg4Y;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$KpjAteN7H3h6Kmjrtw7Elpvyg4Y;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearForumPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$oXyZckPG75610LoLzDZOz67r3GE;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$oXyZckPG75610LoLzDZOz67r3GE;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearGroupMessageNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 395
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$SqyI4CbO4MPOvoVvHx9L-5wBqKM;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$SqyI4CbO4MPOvoVvHx9L-5wBqKM;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearSignInNotification()V
    .locals 2

    .line 664
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 218
    instance-of v0, p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    if-eqz v0, :cond_0

    .line 219
    check-cast p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    .line 220
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    goto :goto_0

    .line 222
    :cond_0
    instance-of v0, p1, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;

    if-eqz v0, :cond_1

    .line 223
    check-cast p1, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;

    .line 225
    invoke-virtual {p1}, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->showContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 226
    :cond_1
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;

    if-eqz v0, :cond_2

    .line 227
    check-cast p1, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;

    .line 228
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->isLocal()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->showGroupMessageNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    goto :goto_0

    .line 229
    :cond_2
    instance-of v0, p1, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;

    if-eqz v0, :cond_3

    .line 230
    check-cast p1, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;

    .line 231
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->showForumPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    goto :goto_0

    .line 232
    :cond_3
    instance-of v0, p1, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    if-eqz v0, :cond_4

    .line 233
    check-cast p1, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    .line 234
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->showBlogPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    goto :goto_0

    .line 235
    :cond_4
    instance-of p1, p1, Lorg/briarproject/briar/api/introduction/event/IntroductionSucceededEvent;

    if-eqz p1, :cond_5

    .line 236
    invoke-direct {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->showIntroductionNotification()V

    :cond_5
    :goto_0
    return-void
.end method

.method public getForegroundNotification()Landroid/app/Notification;
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->getForegroundNotification(Z)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public showSignInNotification()V
    .locals 5

    .line 622
    iget-boolean v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->blockSignInReminder:Z

    if-eqz v0, :cond_0

    return-void

    .line 623
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    .line 624
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "zSignInReminder"

    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v4, 0x7f11018a

    .line 626
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 629
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 631
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 634
    :cond_1
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-string v3, "zSignInReminder"

    invoke-direct {v0, v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f080907

    .line 636
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 637
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v3, 0x7f060031

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 638
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v3, 0x7f11018d

    .line 639
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 638
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 640
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v3, 0x7f11018c

    .line 641
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 640
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 642
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const-wide/16 v3, 0x0

    .line 643
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 644
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 647
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const v2, 0x7f11018b

    .line 648
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v4, Lorg/briarproject/briar/android/login/SignInReminderReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "dismissReminder"

    .line 650
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 652
    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 653
    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 655
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    const-class v3, Lorg/briarproject/briar/android/splash/SplashScreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    .line 656
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 657
    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 659
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public startService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v1, "android-ui"

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->settings:Lorg/briarproject/bramble/api/settings/Settings;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 136
    new-instance v0, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$0aTr5KK92RibxCrm4_awjUVTi80;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$0aTr5KK92RibxCrm4_awjUVTi80;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    .line 148
    :try_start_1
    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/ServiceException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/lifecycle/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 132
    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/ServiceException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/lifecycle/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stopService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$P-aX1GkFKPrZzz5k9pXVrB9dJtI;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$P-aX1GkFKPrZzz5k9pXVrB9dJtI;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 180
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/ServiceException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/lifecycle/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unblockAllBlogPostNotifications()V
    .locals 2

    .line 703
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$LBwSp4eqx1gxiJBTFwMJQLMCjNE;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$LBwSp4eqx1gxiJBTFwMJQLMCjNE;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unblockContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 691
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$zwmDbf5S9V9LnHvd1lulndEczmU;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$zwmDbf5S9V9LnHvd1lulndEczmU;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unblockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 679
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$nQlidxX_tJGKmoS3IGw-1pETfck;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$AndroidNotificationManagerImpl$nQlidxX_tJGKmoS3IGw-1pETfck;-><init>(Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateForegroundNotification(Z)V
    .locals 2

    .line 278
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->getForegroundNotification(Z)Landroid/app/Notification;

    move-result-object p1

    .line 279
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
