.class public Lorg/briarproject/briar/android/StartupFailureActivity;
.super Lorg/briarproject/briar/android/activity/BaseActivity;
.source "StartupFailureActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 34
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->EXTRA_START_RESULT:Ljava/lang/String;

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    .line 36
    sget-object v1, Lorg/briarproject/briar/android/BriarService;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v2, :cond_0

    const-string v1, "notification"

    .line 40
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/StartupFailureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    check-cast v1, Landroid/app/NotificationManager;

    .line 42
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 47
    :cond_0
    sget-object p1, Lorg/briarproject/briar/android/StartupFailureActivity$1;->$SwitchMap$org$briarproject$bramble$api$lifecycle$LifecycleManager$StartResult:[I

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const p1, 0x7f1101c0

    .line 60
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/StartupFailureActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const p1, 0x7f1101bd

    .line 57
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/StartupFailureActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const p1, 0x7f1101bb

    .line 54
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/StartupFailureActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const p1, 0x7f1101bc

    .line 50
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/StartupFailureActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 65
    :goto_0
    invoke-static {p1}, Lorg/briarproject/briar/android/fragment/ErrorFragment;->newInstance(Ljava/lang/String;)Lorg/briarproject/briar/android/fragment/ErrorFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/StartupFailureActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 30
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/StartupFailureActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 24
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/StartupFailureActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lorg/briarproject/briar/android/StartupFailureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/StartupFailureActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public runOnDbThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 70
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Deprecated and should not be used"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
