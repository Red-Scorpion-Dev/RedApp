.class public interface abstract Lorg/briarproject/briar/android/sharing/InvitationController;
.super Ljava/lang/Object;
.source "InvitationController.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/ActivityLifecycleController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/api/sharing/InvitationItem;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/controller/ActivityLifecycleController;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract loadInvitations(ZLorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "TI;>;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract respondToInvitation(Lorg/briarproject/briar/api/sharing/InvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method
