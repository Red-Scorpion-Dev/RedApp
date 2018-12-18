.class public Lorg/briarproject/briar/android/login/OpenDatabaseActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "OpenDatabaseActivity.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private imageView:Landroid/widget/ImageView;

.field lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

.field private showingCompaction:Z

.field private showingMigration:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showingMigration:Z

    iput-boolean v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showingCompaction:Z

    return-void
.end method

.method private finishAndStartApp()V
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public static synthetic lambda$1-UXy8EJVla0qUNBJ9kM5C_FJJw(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->finishAndStartApp()V

    return-void
.end method

.method public static synthetic lambda$NWLZW3QpZy_XGuMdIJKxJ_GhNAk(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showMigration()V

    return-void
.end method

.method public static synthetic lambda$OVbrMsz6HRPQ_aemRyQjDi_HPWk(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showCompaction()V

    return-void
.end method

.method private showCompaction()V
    .locals 2

    .line 93
    iget-boolean v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showingCompaction:Z

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->textView:Landroid/widget/TextView;

    const v1, 0x7f1101b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080938

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showingCompaction:Z

    return-void
.end method

.method private showMigration()V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showingMigration:Z

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->textView:Landroid/widget/TextView;

    const v1, 0x7f1101c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080938

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showingMigration:Z

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 74
    instance-of v0, p1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    if-eqz v0, :cond_2

    .line 75
    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;->getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    move-result-object p1

    .line 76
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING_SERVICES:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->isAfter(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance p1, Lorg/briarproject/briar/android/login/-$$Lambda$OpenDatabaseActivity$1-UXy8EJVla0qUNBJ9kM5C_FJJw;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$OpenDatabaseActivity$1-UXy8EJVla0qUNBJ9kM5C_FJJw;-><init>(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->MIGRATING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    if-ne p1, v0, :cond_1

    .line 79
    new-instance p1, Lorg/briarproject/briar/android/login/-$$Lambda$OpenDatabaseActivity$NWLZW3QpZy_XGuMdIJKxJ_GhNAk;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$OpenDatabaseActivity$NWLZW3QpZy_XGuMdIJKxJ_GhNAk;-><init>(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->COMPACTING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    if-ne p1, v0, :cond_2

    .line 81
    new-instance p1, Lorg/briarproject/briar/android/login/-$$Lambda$OpenDatabaseActivity$OVbrMsz6HRPQ_aemRyQjDi_HPWk;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$OpenDatabaseActivity$OVbrMsz6HRPQ_aemRyQjDi_HPWk;-><init>(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 50
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->setContentView(I)V

    const p1, 0x7f090190

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->textView:Landroid/widget/TextView;

    const p1, 0x7f0900d0

    .line 45
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 55
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    move-result-object v0

    .line 57
    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING_SERVICES:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->isAfter(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->finishAndStartApp()V

    goto :goto_1

    .line 60
    :cond_0
    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->MIGRATING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showMigration()V

    goto :goto_0

    .line 61
    :cond_1
    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->COMPACTING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->showCompaction()V

    .line 62
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    :goto_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 68
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStop()V

    .line 69
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method
