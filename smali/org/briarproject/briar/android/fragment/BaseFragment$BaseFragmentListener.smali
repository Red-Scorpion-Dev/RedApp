.class public interface abstract Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;
.super Ljava/lang/Object;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseFragmentListener"
.end annotation


# virtual methods
.method public abstract getActivityComponent()Lorg/briarproject/briar/android/activity/ActivityComponent;
.end method

.method public abstract handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract runOnDbThread(Ljava/lang/Runnable;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V
.end method
