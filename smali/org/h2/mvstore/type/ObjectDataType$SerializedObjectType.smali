.class Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "ObjectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedObjectType"
.end annotation


# instance fields
.field private averageSize:I


# direct methods
.method constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/16 v0, 0x13

    .line 1486
    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    const/16 p1, 0x2710

    .line 1483
    iput p1, p0, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;->averageSize:I

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1495
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;->getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v0

    .line 1496
    invoke-virtual {p0, p2}, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;->getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v1

    if-ne v0, p0, :cond_4

    if-eq v1, p0, :cond_1

    goto :goto_0

    .line 1505
    :cond_1
    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_2

    .line 1506
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1507
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 1510
    :cond_2
    instance-of v0, p2, Ljava/lang/Comparable;

    if-eqz v0, :cond_3

    .line 1511
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1512
    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 1515
    :cond_3
    invoke-static {p1}, Lorg/h2/mvstore/type/ObjectDataType;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    .line 1516
    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->serialize(Ljava/lang/Object;)[B

    move-result-object p2

    .line 1517
    invoke-static {p1, p2}, Lorg/h2/mvstore/type/ObjectDataType;->compareNotNull([B[B)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 1499
    invoke-interface {v0, p1, p2}, Lorg/h2/mvstore/type/DataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 1501
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 1522
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;->getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1524
    iget p1, p0, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;->averageSize:I

    return p1

    .line 1526
    :cond_0
    invoke-interface {v0, p1}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 0

    .line 1549
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p2

    .line 1550
    invoke-static {p2}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    .line 1551
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1552
    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 1531
    invoke-virtual {p0, p2}, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;->getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1533
    invoke-interface {v0, p1, p2}, Lorg/h2/mvstore/type/DataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    .line 1536
    :cond_0
    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->serialize(Ljava/lang/Object;)[B

    move-result-object p2

    .line 1539
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    .line 1542
    iget v1, p0, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;->averageSize:I

    mul-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/h2/mvstore/type/ObjectDataType$SerializedObjectType;->averageSize:I

    const/16 v0, 0x13

    .line 1543
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method
