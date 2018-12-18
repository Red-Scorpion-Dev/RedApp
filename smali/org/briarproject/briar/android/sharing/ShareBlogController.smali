.class public interface abstract Lorg/briarproject/briar/android/sharing/ShareBlogController;
.super Ljava/lang/Object;
.source "ShareBlogController.java"

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


# virtual methods
.method public abstract share(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method
