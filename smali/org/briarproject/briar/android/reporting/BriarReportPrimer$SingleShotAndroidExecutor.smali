.class Lorg/briarproject/briar/android/reporting/BriarReportPrimer$SingleShotAndroidExecutor;
.super Ljava/lang/Thread;
.source "BriarReportPrimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/reporting/BriarReportPrimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleShotAndroidExecutor"
.end annotation


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 266
    iput-object p1, p0, Lorg/briarproject/briar/android/reporting/BriarReportPrimer$SingleShotAndroidExecutor;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lorg/briarproject/briar/android/reporting/BriarReportPrimer$1;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/reporting/BriarReportPrimer$SingleShotAndroidExecutor;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$run$0()V
    .locals 1

    .line 275
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 271
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 273
    iget-object v1, p0, Lorg/briarproject/briar/android/reporting/BriarReportPrimer$SingleShotAndroidExecutor;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    sget-object v1, Lorg/briarproject/briar/android/reporting/-$$Lambda$BriarReportPrimer$SingleShotAndroidExecutor$-kpuBf8y1zR8yve5RQ0ljQQYCIw;->INSTANCE:Lorg/briarproject/briar/android/reporting/-$$Lambda$BriarReportPrimer$SingleShotAndroidExecutor$-kpuBf8y1zR8yve5RQ0ljQQYCIw;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
