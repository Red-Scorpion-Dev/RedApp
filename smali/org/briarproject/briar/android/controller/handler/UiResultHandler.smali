.class public abstract Lorg/briarproject/briar/android/controller/handler/UiResultHandler;
.super Ljava/lang/Object;
.source "UiResultHandler.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/handler/ResultHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final listener:Lorg/briarproject/briar/android/DestroyableContext;


# direct methods
.method protected constructor <init>(Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;->listener:Lorg/briarproject/briar/android/DestroyableContext;

    return-void
.end method

.method public static synthetic lambda$onResult$0(Lorg/briarproject/briar/android/controller/handler/UiResultHandler;Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;->onResultUi(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;->listener:Lorg/briarproject/briar/android/DestroyableContext;

    new-instance v1, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultHandler$6XOPHIfMT-dVxobmUpWMdlAH_EA;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultHandler$6XOPHIfMT-dVxobmUpWMdlAH_EA;-><init>(Lorg/briarproject/briar/android/controller/handler/UiResultHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/DestroyableContext;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract onResultUi(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method
