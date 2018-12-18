.class public interface abstract Lorg/briarproject/briar/android/privategroup/conversation/GroupController;
.super Ljava/lang/Object;
.source "GroupController.java"

# interfaces
.implements Lorg/briarproject/briar/android/threaded/ThreadListController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/threaded/ThreadListController<",
        "Lorg/briarproject/briar/api/privategroup/PrivateGroup;",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isDissolved(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Boolean;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadLocalAuthor(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method
