.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$gLwuFOFOMnyMdOAz6X2ffRZkFhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/ForumControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/forum/ForumItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/briar/android/forum/ForumItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$gLwuFOFOMnyMdOAz6X2ffRZkFhg;->f$0:Lorg/briarproject/briar/android/forum/ForumControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$gLwuFOFOMnyMdOAz6X2ffRZkFhg;->f$1:Lorg/briarproject/briar/android/forum/ForumItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$gLwuFOFOMnyMdOAz6X2ffRZkFhg;->f$0:Lorg/briarproject/briar/android/forum/ForumControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$gLwuFOFOMnyMdOAz6X2ffRZkFhg;->f$1:Lorg/briarproject/briar/android/forum/ForumItem;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->lambda$onForumPostReceived$3(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/briar/android/forum/ForumItem;)V

    return-void
.end method
