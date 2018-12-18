.class public interface abstract Lorg/briarproject/briar/android/controller/BriarController;
.super Ljava/lang/Object;
.source "BriarController.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/ActivityLifecycleController;


# virtual methods
.method public abstract accountSignedIn()Z
.end method

.method public abstract doNotAskAgainForDozeWhiteListing()V
.end method

.method public abstract hasDozed(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract signOut(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startAndBindService()V
.end method
