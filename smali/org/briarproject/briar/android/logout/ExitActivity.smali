.class public Lorg/briarproject/briar/android/logout/ExitActivity;
.super Lorg/briarproject/briar/android/activity/BaseActivity;
.source "ExitActivity.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lorg/briarproject/briar/android/logout/ExitActivity;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/logout/ExitActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/logout/ExitActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/logout/ExitActivity;->finish()V

    .line 21
    :goto_0
    sget-object p1, Lorg/briarproject/briar/android/logout/ExitActivity;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Exiting"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
