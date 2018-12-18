.class public Lorg/briarproject/briar/android/util/BriarNotificationBuilder;
.super Landroid/support/v4/app/NotificationCompat$Builder;
.source "BriarNotificationBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 20
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const p2, 0x7f060030

    .line 22
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x2ee

    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 24
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public setColorRes(I)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setNotificationCategory(Ljava/lang/String;)Lorg/briarproject/briar/android/util/BriarNotificationBuilder;
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/util/BriarNotificationBuilder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-object p0
.end method
