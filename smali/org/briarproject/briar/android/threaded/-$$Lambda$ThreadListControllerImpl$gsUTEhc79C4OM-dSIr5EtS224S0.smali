.class public final synthetic Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/api/client/ThreadedMessage;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/api/client/ThreadedMessage;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;->f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;->f$1:Lorg/briarproject/briar/api/client/ThreadedMessage;

    iput-object p3, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;->f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;->f$1:Lorg/briarproject/briar/api/client/ThreadedMessage;

    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->lambda$storePost$5(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/api/client/ThreadedMessage;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
