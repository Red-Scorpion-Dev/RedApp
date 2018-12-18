.class public final synthetic Lorg/briarproject/briar/android/-$$Lambda$BriarService$6JAJ1XgI2dZz-6ywdK90gzhIenI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/BriarService;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/-$$Lambda$BriarService$6JAJ1XgI2dZz-6ywdK90gzhIenI;->f$0:Lorg/briarproject/briar/android/BriarService;

    iput-object p2, p0, Lorg/briarproject/briar/android/-$$Lambda$BriarService$6JAJ1XgI2dZz-6ywdK90gzhIenI;->f$1:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/-$$Lambda$BriarService$6JAJ1XgI2dZz-6ywdK90gzhIenI;->f$0:Lorg/briarproject/briar/android/BriarService;

    iget-object v1, p0, Lorg/briarproject/briar/android/-$$Lambda$BriarService$6JAJ1XgI2dZz-6ywdK90gzhIenI;->f$1:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/BriarService;->lambda$showStartupFailureNotification$1(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;)V

    return-void
.end method
