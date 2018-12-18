.class public interface abstract Lorg/briarproject/briar/api/blog/BlogFactory;
.super Ljava/lang/Object;
.source "BlogFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;
.end method

.method public abstract createFeedBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;
.end method

.method public abstract parseBlog(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/blog/Blog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
