.class public interface abstract Lorg/briarproject/briar/android/threaded/ThreadListController;
.super Ljava/lang/Object;
.source "ThreadListController.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/ActivityLifecycleController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListDataSource;,
        Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<G:",
        "Lorg/briarproject/briar/api/client/NamedGroup;",
        "I:",
        "Lorg/briarproject/briar/android/threaded/ThreadItem;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/controller/ActivityLifecycleController;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createAndStoreMessage(Ljava/lang/String;Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TI;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "TI;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteNamedGroup(Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadItems(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/threaded/ThreadItemList<",
            "TI;>;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadNamedGroup(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "TG;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadSharingContacts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract markItemRead(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation
.end method

.method public abstract markItemsRead(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TI;>;)V"
        }
    .end annotation
.end method

.method public abstract setGroupId(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method
