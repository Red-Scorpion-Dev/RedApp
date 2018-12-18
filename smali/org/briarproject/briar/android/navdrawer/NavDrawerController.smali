.class public interface abstract Lorg/briarproject/briar/android/navdrawer/NavDrawerController;
.super Ljava/lang/Object;
.source "NavDrawerController.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/ActivityLifecycleController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract expiryWarningDismissed()V
.end method

.method public abstract isTransportRunning(Lorg/briarproject/bramble/api/plugin/TransportId;)Z
.end method

.method public abstract shouldAskForDozeWhitelisting(Landroid/content/Context;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showExpiryWarning(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;",
            ">;)V"
        }
    .end annotation
.end method
