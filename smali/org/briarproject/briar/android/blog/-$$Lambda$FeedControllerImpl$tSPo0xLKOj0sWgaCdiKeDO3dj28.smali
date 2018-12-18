.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$tSPo0xLKOj0sWgaCdiKeDO3dj28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/FeedControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/FeedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$tSPo0xLKOj0sWgaCdiKeDO3dj28;->f$0:Lorg/briarproject/briar/android/blog/FeedControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$tSPo0xLKOj0sWgaCdiKeDO3dj28;->f$0:Lorg/briarproject/briar/android/blog/FeedControllerImpl;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->lambda$onBlogAdded$0(Lorg/briarproject/briar/android/blog/FeedControllerImpl;)V

    return-void
.end method
