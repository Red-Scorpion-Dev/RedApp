.class Lorg/h2/store/fs/FileNioMemData$CompressItem;
.super Ljava/lang/Object;
.source "FilePathNioMem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FileNioMemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompressItem"
.end annotation


# instance fields
.field data:[Ljava/nio/ByteBuffer;

.field page:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 500
    instance-of v0, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 501
    check-cast p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;

    .line 502
    iget-object v0, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:[Ljava/nio/ByteBuffer;

    if-ne v0, v2, :cond_0

    iget p1, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    iget v0, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 495
    iget v0, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    return v0
.end method
