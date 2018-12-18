.class public final synthetic Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$RKHwyJJ1WEvPA1e0vXngqbzfVUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/feed/FeedManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/feed/FeedManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$RKHwyJJ1WEvPA1e0vXngqbzfVUY;->f$0:Lorg/briarproject/briar/feed/FeedManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$RKHwyJJ1WEvPA1e0vXngqbzfVUY;->f$0:Lorg/briarproject/briar/feed/FeedManagerImpl;

    invoke-static {v0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->lambda$startFeedExecutor$0(Lorg/briarproject/briar/feed/FeedManagerImpl;)V

    return-void
.end method
