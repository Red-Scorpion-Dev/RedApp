.class public final synthetic Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$Zbwg7XjxKRhy4bV8HWp7LyARKI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/forum/ForumManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$Zbwg7XjxKRhy4bV8HWp7LyARKI8;->f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$Zbwg7XjxKRhy4bV8HWp7LyARKI8;->f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;

    invoke-static {v0, p1}, Lorg/briarproject/briar/forum/ForumManagerImpl;->lambda$getForums$4(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
