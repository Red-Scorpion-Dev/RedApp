.class Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;
.super Ljava/nio/channels/FileLock;
.source "FilePathRetryOnInterrupt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FileRetryOnInterrupt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileLockRetry"
.end annotation


# instance fields
.field base:Ljava/nio/channels/FileLock;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileChannel;)V
    .locals 7

    .line 234
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isShared()Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 235
    iput-object p1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;->base:Ljava/nio/channels/FileLock;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;->base:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;->base:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    return-void
.end method
