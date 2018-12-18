.class Lorg/h2/mvstore/type/ObjectDataType$ShortType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "ObjectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShortType"
.end annotation


# direct methods
.method constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/4 v0, 0x3

    .line 657
    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 662
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 663
    check-cast p1, Ljava/lang/Short;

    .line 664
    check-cast p2, Ljava/lang/Short;

    .line 665
    invoke-virtual {p1, p2}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result p1

    return p1

    .line 667
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 672
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 0

    .line 687
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 677
    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_0

    .line 678
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 681
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 682
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putShort(S)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method
