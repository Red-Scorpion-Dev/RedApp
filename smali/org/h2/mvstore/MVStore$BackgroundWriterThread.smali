.class Lorg/h2/mvstore/MVStore$BackgroundWriterThread;
.super Ljava/lang/Thread;
.source "MVStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/MVStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundWriterThread"
.end annotation


# instance fields
.field private final sleep:I

.field private final store:Lorg/h2/mvstore/MVStore;

.field public final sync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/MVStore;ILjava/lang/String;)V
    .locals 2

    .line 2674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MVStore background writer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2669
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    .line 2675
    iput-object p1, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->store:Lorg/h2/mvstore/MVStore;

    .line 2676
    iput p2, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sleep:I

    const/4 p1, 0x1

    .line 2677
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2683
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->store:Lorg/h2/mvstore/MVStore;

    iget-object v0, v0, Lorg/h2/mvstore/MVStore;->backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    if-nez v0, :cond_0

    return-void

    .line 2687
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 2689
    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    iget v2, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sleep:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2693
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2694
    iget-object v0, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->writeInBackground()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2691
    :catch_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    .line 2693
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
