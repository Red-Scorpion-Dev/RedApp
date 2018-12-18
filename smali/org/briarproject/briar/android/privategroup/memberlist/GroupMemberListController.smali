.class public interface abstract Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;
.super Ljava/lang/Object;
.source "GroupMemberListController.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/DbController;


# virtual methods
.method public abstract loadMembers(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method
