.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$tKvXP6oSRo6Q6vi3u-bZLkoTNPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/ForumListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$tKvXP6oSRo6Q6vi3u-bZLkoTNPs;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$tKvXP6oSRo6Q6vi3u-bZLkoTNPs;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/forum/ForumListFragment;->lambda$loadAvailableForums$2(Lorg/briarproject/briar/android/forum/ForumListFragment;)V

    return-void
.end method
