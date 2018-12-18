.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$CfGZ9c8dDO4bdEMp3TeCmd6Vi7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/ForumListFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$CfGZ9c8dDO4bdEMp3TeCmd6Vi7M;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    iput p2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$CfGZ9c8dDO4bdEMp3TeCmd6Vi7M;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$CfGZ9c8dDO4bdEMp3TeCmd6Vi7M;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    iget v1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$CfGZ9c8dDO4bdEMp3TeCmd6Vi7M;->f$1:I

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/forum/ForumListFragment;->lambda$displayAvailableForums$3(Lorg/briarproject/briar/android/forum/ForumListFragment;I)V

    return-void
.end method
