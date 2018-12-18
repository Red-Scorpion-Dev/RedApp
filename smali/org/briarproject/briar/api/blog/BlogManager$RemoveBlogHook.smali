.class public interface abstract Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;
.super Ljava/lang/Object;
.source "BlogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/api/blog/BlogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoveBlogHook"
.end annotation


# virtual methods
.method public abstract removingBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
