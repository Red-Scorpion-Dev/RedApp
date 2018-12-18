.class interface abstract Lorg/briarproject/briar/android/privategroup/list/GroupListController;
.super Ljava/lang/Object;
.source "GroupListController.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/DbController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract loadAvailableGroups(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Integer;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadGroups(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/privategroup/list/GroupItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract removeGroup(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setGroupListListener(Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;)V
.end method
