.class public abstract Lorg/briarproject/briar/android/fragment/BaseEventFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "BaseEventFragment.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;


# instance fields
.field protected volatile eventBus:Lorg/briarproject/bramble/api/event/EventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 16
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 17
    iget-object v0, p0, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 22
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStop()V

    .line 23
    iget-object v0, p0, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method
