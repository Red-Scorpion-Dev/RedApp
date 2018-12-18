.class public interface abstract Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;
.super Ljava/lang/Object;
.source "CreateGroupController.java"

# interfaces
.implements Lorg/briarproject/briar/android/contactselection/ContactSelectorController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/contactselection/ContactSelectorController<",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createGroup(Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Void;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method
