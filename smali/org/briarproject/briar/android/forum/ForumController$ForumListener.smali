.class public interface abstract Lorg/briarproject/briar/android/forum/ForumController$ForumListener;
.super Ljava/lang/Object;
.source "ForumController.java"

# interfaces
.implements Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/forum/ForumController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForumListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener<",
        "Lorg/briarproject/briar/android/forum/ForumItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onForumLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method
