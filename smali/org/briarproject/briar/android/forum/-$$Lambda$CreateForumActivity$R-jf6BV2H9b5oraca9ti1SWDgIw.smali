.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$R-jf6BV2H9b5oraca9ti1SWDgIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/CreateForumActivity;

.field private final synthetic f$1:Lorg/briarproject/briar/api/forum/Forum;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/CreateForumActivity;Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$R-jf6BV2H9b5oraca9ti1SWDgIw;->f$0:Lorg/briarproject/briar/android/forum/CreateForumActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$R-jf6BV2H9b5oraca9ti1SWDgIw;->f$1:Lorg/briarproject/briar/api/forum/Forum;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$R-jf6BV2H9b5oraca9ti1SWDgIw;->f$0:Lorg/briarproject/briar/android/forum/CreateForumActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$CreateForumActivity$R-jf6BV2H9b5oraca9ti1SWDgIw;->f$1:Lorg/briarproject/briar/api/forum/Forum;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/forum/CreateForumActivity;->lambda$displayForum$3(Lorg/briarproject/briar/android/forum/CreateForumActivity;Lorg/briarproject/briar/api/forum/Forum;)V

    return-void
.end method
