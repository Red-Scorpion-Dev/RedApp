.class public Lorg/briarproject/briar/android/logout/HideUiActivity;
.super Lorg/briarproject/briar/android/activity/BaseActivity;
.source "HideUiActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/briar/android/logout/HideUiActivity;->finish()V

    return-void
.end method
