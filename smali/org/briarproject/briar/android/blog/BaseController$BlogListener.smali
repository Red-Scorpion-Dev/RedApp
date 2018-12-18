.class public interface abstract Lorg/briarproject/briar/android/blog/BaseController$BlogListener;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Lorg/briarproject/briar/android/DestroyableContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/blog/BaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlogListener"
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
.end method

.method public abstract onBlogRemoved()V
.end method
