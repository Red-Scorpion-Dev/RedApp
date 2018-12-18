.class public final synthetic Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$oCkBMIbclm21XrD3vo5JmUgkV9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$oCkBMIbclm21XrD3vo5JmUgkV9s;->f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$oCkBMIbclm21XrD3vo5JmUgkV9s;->f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    invoke-static {v0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->lambda$eventOccurred$1(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;)V

    return-void
.end method
