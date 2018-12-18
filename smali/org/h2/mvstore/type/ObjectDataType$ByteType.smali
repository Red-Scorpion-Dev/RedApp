.class Lorg/h2/mvstore/type/ObjectDataType$ByteType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "ObjectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteType"
.end annotation


# direct methods
.method constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/4 v0, 0x2

    .line 575
    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 580
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 581
    check-cast p1, Ljava/lang/Byte;

    .line 582
    check-cast p2, Ljava/lang/Byte;

    .line 583
    invoke-virtual {p1, p2}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    move-result p1

    return p1

    .line 585
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 590
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 0

    .line 605
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 595
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_0

    .line 596
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 599
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 600
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method
