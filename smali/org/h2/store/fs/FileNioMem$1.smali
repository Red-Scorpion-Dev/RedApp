.class Lorg/h2/store/fs/FileNioMem$1;
.super Ljava/nio/channels/FileLock;
.source "FilePathNioMem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/store/fs/FileNioMem;->tryLock(JJZ)Ljava/nio/channels/FileLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/store/fs/FileNioMem;


# direct methods
.method constructor <init>(Lorg/h2/store/fs/FileNioMem;Ljava/nio/channels/FileChannel;JJZ)V
    .locals 7

    .line 354
    iput-object p1, p0, Lorg/h2/store/fs/FileNioMem$1;->this$0:Lorg/h2/store/fs/FileNioMem;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMem$1;->this$0:Lorg/h2/store/fs/FileNioMem;

    iget-object v0, v0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->unlock()V

    return-void
.end method
