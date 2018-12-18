.class public final synthetic Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$xeR7vlCyG2PF2ZIe0dk502tfErw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

.field private final synthetic f$1:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$xeR7vlCyG2PF2ZIe0dk502tfErw;->f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$xeR7vlCyG2PF2ZIe0dk502tfErw;->f$1:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$xeR7vlCyG2PF2ZIe0dk502tfErw;->f$0:Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$xeR7vlCyG2PF2ZIe0dk502tfErw;->f$1:Ljava/util/Collection;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->lambda$markItemsRead$4(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Ljava/util/Collection;)V

    return-void
.end method
