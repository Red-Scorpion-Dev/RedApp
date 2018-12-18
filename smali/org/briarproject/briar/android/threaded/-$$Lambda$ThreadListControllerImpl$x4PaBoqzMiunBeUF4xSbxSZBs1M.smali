.class public final synthetic Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$x4PaBoqzMiunBeUF4xSbxSZBs1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$x4PaBoqzMiunBeUF4xSbxSZBs1M;->f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$x4PaBoqzMiunBeUF4xSbxSZBs1M;->f$1:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$x4PaBoqzMiunBeUF4xSbxSZBs1M;->f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$x4PaBoqzMiunBeUF4xSbxSZBs1M;->f$1:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->lambda$deleteNamedGroup$6(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method
