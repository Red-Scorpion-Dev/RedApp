.class public abstract Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;
.super Ljava/lang/Object;
.source "UiExceptionHandler.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final listener:Lorg/briarproject/briar/android/DestroyableContext;


# direct methods
.method protected constructor <init>(Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;->listener:Lorg/briarproject/briar/android/DestroyableContext;

    return-void
.end method

.method public static synthetic lambda$onException$0(Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;Ljava/lang/Exception;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;->onExceptionUi(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;->listener:Lorg/briarproject/briar/android/DestroyableContext;

    new-instance v1, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiExceptionHandler$m7oYgn1RdHy_XzlaOItq_7UttKs;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiExceptionHandler$m7oYgn1RdHy_XzlaOItq_7UttKs;-><init>(Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/DestroyableContext;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract onExceptionUi(Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method
