.class public final synthetic Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$ipnmy6cxIMHpJYkCoXkYZDVH-Uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$ipnmy6cxIMHpJYkCoXkYZDVH-Uc;->f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$ipnmy6cxIMHpJYkCoXkYZDVH-Uc;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$ipnmy6cxIMHpJYkCoXkYZDVH-Uc;->f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$ipnmy6cxIMHpJYkCoXkYZDVH-Uc;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->lambda$loadSharingContacts$4(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
