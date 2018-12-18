.class public final synthetic Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiExceptionHandler$m7oYgn1RdHy_XzlaOItq_7UttKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;

.field private final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiExceptionHandler$m7oYgn1RdHy_XzlaOItq_7UttKs;->f$0:Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;

    iput-object p2, p0, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiExceptionHandler$m7oYgn1RdHy_XzlaOItq_7UttKs;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiExceptionHandler$m7oYgn1RdHy_XzlaOItq_7UttKs;->f$0:Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiExceptionHandler$m7oYgn1RdHy_XzlaOItq_7UttKs;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;->lambda$onException$0(Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;Ljava/lang/Exception;)V

    return-void
.end method
