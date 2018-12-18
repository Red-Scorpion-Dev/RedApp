.class public interface abstract Lorg/briarproject/briar/api/forum/ForumManager$RemoveForumHook;
.super Ljava/lang/Object;
.source "ForumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/api/forum/ForumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoveForumHook"
.end annotation


# virtual methods
.method public abstract removingForum(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/forum/Forum;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
