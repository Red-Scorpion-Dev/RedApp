.class public interface abstract Lorg/briarproject/briar/api/android/LockManager;
.super Ljava/lang/Object;
.source "LockManager.java"


# static fields
.field public static final ACTION_LOCK:Ljava/lang/String; = "lock"


# virtual methods
.method public abstract checkIfLockable()V
.end method

.method public abstract isLockable()Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLocked()Z
.end method

.method public abstract onActivityStart()V
.end method

.method public abstract onActivityStop()V
.end method

.method public abstract setLocked(Z)V
.end method
