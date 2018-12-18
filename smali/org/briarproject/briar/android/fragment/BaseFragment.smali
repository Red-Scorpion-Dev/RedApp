.class public abstract Lorg/briarproject/briar/android/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/DestroyableContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;
    }
.end annotation


# instance fields
.field protected listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$runOnUiThreadUnlessDestroyed$0(Lorg/briarproject/briar/android/fragment/BaseFragment;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected finish()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportFinishAfterTransition()V

    :cond_0
    return-void
.end method

.method public abstract getUniqueTag()Ljava/lang/String;
.end method

.method protected handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/android/fragment/BaseFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public abstract injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    iget-object p1, p0, Lorg/briarproject/briar/android/fragment/BaseFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    invoke-interface {p1}, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;->getActivityComponent()Lorg/briarproject/briar/android/activity/ActivityComponent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 30
    check-cast p1, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/fragment/BaseFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 51
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/fragment/BaseFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    invoke-interface {p1}, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;

    invoke-direct {v1, p0, v0, p1}, Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;-><init>(Lorg/briarproject/briar/android/fragment/BaseFragment;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/android/fragment/BaseFragment;->listener:Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method
