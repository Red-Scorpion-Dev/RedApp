.class public final synthetic Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$I3f419T-6leJfLOt58BCIIa0UQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/controller/BriarControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/controller/BriarControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$I3f419T-6leJfLOt58BCIIa0UQk;->f$0:Lorg/briarproject/briar/android/controller/BriarControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$I3f419T-6leJfLOt58BCIIa0UQk;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$I3f419T-6leJfLOt58BCIIa0UQk;->f$0:Lorg/briarproject/briar/android/controller/BriarControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$I3f419T-6leJfLOt58BCIIa0UQk;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->lambda$signOut$2(Lorg/briarproject/briar/android/controller/BriarControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    return-void
.end method
