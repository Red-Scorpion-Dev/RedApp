.class Lorg/h2/mvstore/MVStoreTool$GenericDataType;
.super Ljava/lang/Object;
.source "MVStoreTool.java"

# interfaces
.implements Lorg/h2/mvstore/type/DataType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/MVStoreTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GenericDataType"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    const-string p1, "Can not compare"

    .line 529
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 534
    :cond_0
    check-cast p1, [B

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    :goto_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    .line 553
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 557
    :cond_0
    new-array v0, v0, [B

    .line 558
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
    .locals 0

    const/4 p3, 0x0

    .line 564
    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_0

    .line 565
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVStoreTool$GenericDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p4

    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 540
    check-cast p2, [B

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    :cond_0
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    .line 546
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object v0, p2, p4

    .line 547
    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/MVStoreTool$GenericDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
