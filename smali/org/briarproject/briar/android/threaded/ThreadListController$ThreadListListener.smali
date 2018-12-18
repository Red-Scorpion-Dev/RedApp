.class public interface abstract Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;
.super Ljava/lang/Object;
.source "ThreadListController.java"

# interfaces
.implements Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/threaded/ThreadListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThreadListListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListDataSource;"
    }
.end annotation


# virtual methods
.method public abstract onGroupRemoved()V
.end method

.method public abstract onInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method

.method public abstract onItemReceived(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation
.end method
