.class public interface abstract Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;
.super Ljava/lang/Object;
.source "GroupController.java"

# interfaces
.implements Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/privategroup/conversation/GroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener<",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onContactRelationshipRevealed(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/Visibility;)V
.end method

.method public abstract onGroupDissolved()V
.end method
