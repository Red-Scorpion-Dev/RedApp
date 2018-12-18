.class Lorg/h2/mvstore/type/ObjectDataType$DoubleType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "ObjectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoubleType"
.end annotation


# direct methods
.method constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/16 v0, 0x8

    .line 888
    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 893
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 894
    check-cast p1, Ljava/lang/Double;

    .line 895
    check-cast p2, Ljava/lang/Double;

    .line 896
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    .line 898
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 903
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 0

    packed-switch p2, :pswitch_data_0

    .line 940
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverse(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 938
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 936
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-wide/16 p1, 0x0

    .line 934
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 6

    .line 908
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 909
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    .line 912
    :cond_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 913
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 914
    sget-wide v4, Lorg/h2/mvstore/type/ObjectDataType;->DOUBLE_ZERO_BITS:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_1

    const/16 p2, 0x2b

    .line 915
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    .line 916
    :cond_1
    sget-wide v4, Lorg/h2/mvstore/type/ObjectDataType;->DOUBLE_ONE_BITS:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_2

    const/16 p2, 0x2c

    .line 917
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    .line 919
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-ltz p2, :cond_3

    const-wide v4, 0x1ffffffffffffL

    cmp-long p2, v2, v4

    if-gtz p2, :cond_3

    const/16 p2, 0x8

    .line 921
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 922
    invoke-virtual {p1, v2, v3}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    :cond_3
    const/16 p2, 0x2d

    .line 924
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 925
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putDouble(D)Lorg/h2/mvstore/WriteBuffer;

    :goto_0
    return-void
.end method
