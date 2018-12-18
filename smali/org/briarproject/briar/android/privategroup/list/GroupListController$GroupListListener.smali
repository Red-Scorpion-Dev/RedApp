.class public interface abstract Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;
.super Ljava/lang/Object;
.source "GroupListController.java"

# interfaces
.implements Lorg/briarproject/briar/android/DestroyableContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/privategroup/list/GroupListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupListListener"
.end annotation


# virtual methods
.method public abstract onGroupAdded(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method

.method public abstract onGroupDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method

.method public abstract onGroupInvitationReceived()V
.end method

.method public abstract onGroupMessageAdded(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V
.end method

.method public abstract onGroupRemoved(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method
