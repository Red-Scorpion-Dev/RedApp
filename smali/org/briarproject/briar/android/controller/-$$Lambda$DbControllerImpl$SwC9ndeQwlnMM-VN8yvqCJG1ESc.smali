.class public final synthetic Lorg/briarproject/briar/android/controller/-$$Lambda$DbControllerImpl$SwC9ndeQwlnMM-VN8yvqCJG1ESc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/controller/DbControllerImpl;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/controller/DbControllerImpl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$DbControllerImpl$SwC9ndeQwlnMM-VN8yvqCJG1ESc;->f$0:Lorg/briarproject/briar/android/controller/DbControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$DbControllerImpl$SwC9ndeQwlnMM-VN8yvqCJG1ESc;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$DbControllerImpl$SwC9ndeQwlnMM-VN8yvqCJG1ESc;->f$0:Lorg/briarproject/briar/android/controller/DbControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/-$$Lambda$DbControllerImpl$SwC9ndeQwlnMM-VN8yvqCJG1ESc;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/controller/DbControllerImpl;->lambda$runOnDbThread$0(Lorg/briarproject/briar/android/controller/DbControllerImpl;Ljava/lang/Runnable;)V

    return-void
.end method
