.class public interface abstract Lorg/briarproject/briar/android/contactselection/ContactSelectorController;
.super Ljava/lang/Object;
.source "ContactSelectorController.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/DbController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/controller/DbController;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract loadContacts(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "TI;>;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method
