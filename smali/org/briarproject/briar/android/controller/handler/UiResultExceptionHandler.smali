.class public abstract Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.super Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;
.source "UiResultExceptionHandler.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler<",
        "TE;>;",
        "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
        "TR;TE;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method protected constructor <init>(Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method

.method public static synthetic lambda$onResult$0(Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;->onResultUi(Ljava/lang/Object;)V

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

    .line 21
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;->listener:Lorg/briarproject/briar/android/DestroyableContext;

    new-instance v1, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultExceptionHandler$LnL2V9cCPAx9pQzY7oK516j2vdk;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultExceptionHandler$LnL2V9cCPAx9pQzY7oK516j2vdk;-><init>(Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;Ljava/lang/Object;)V

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
