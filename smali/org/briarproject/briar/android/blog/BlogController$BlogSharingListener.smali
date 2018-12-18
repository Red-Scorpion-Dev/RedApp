.class public interface abstract Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;
.super Ljava/lang/Object;
.source "BlogController.java"

# interfaces
.implements Lorg/briarproject/briar/android/blog/BaseController$BlogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/blog/BlogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlogSharingListener"
.end annotation


# virtual methods
.method public abstract onBlogInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method

.method public abstract onBlogLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method
