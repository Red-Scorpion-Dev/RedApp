.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Mk_7Zp6BAxT4AMeaeyuMIrRtiIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/BlogControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Mk_7Zp6BAxT4AMeaeyuMIrRtiIY;->f$0:Lorg/briarproject/briar/android/blog/BlogControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Mk_7Zp6BAxT4AMeaeyuMIrRtiIY;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Mk_7Zp6BAxT4AMeaeyuMIrRtiIY;->f$0:Lorg/briarproject/briar/android/blog/BlogControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogControllerImpl$Mk_7Zp6BAxT4AMeaeyuMIrRtiIY;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/BlogControllerImpl;->lambda$deleteBlog$3(Lorg/briarproject/briar/android/blog/BlogControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
