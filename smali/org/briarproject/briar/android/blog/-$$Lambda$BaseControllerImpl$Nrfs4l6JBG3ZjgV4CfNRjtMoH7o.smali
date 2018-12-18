.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final synthetic f$2:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;->f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    iput-object p3, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;->f$2:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;->f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;->f$2:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->lambda$loadBlogPosts$2(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
