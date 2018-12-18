.class public Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;
.super Ljava/lang/Object;
.source "BriarService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/BriarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BriarServiceConnection"
.end annotation


# instance fields
.field private volatile binder:Landroid/os/IBinder;

.field private final binderLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;->binderLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 322
    iput-object p2, p0, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;->binder:Landroid/os/IBinder;

    .line 323
    iget-object p1, p0, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;->binderLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public waitForBinder()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;->binderLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 335
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;->binder:Landroid/os/IBinder;

    return-object v0
.end method
