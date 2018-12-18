.class Lorg/h2/mvstore/type/ObjectDataType$FloatType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "ObjectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatType"
.end annotation


# direct methods
.method constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/4 v0, 0x7

    .line 826
    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 831
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 832
    check-cast p1, Ljava/lang/Float;

    .line 833
    check-cast p2, Ljava/lang/Float;

    .line 834
    invoke-virtual {p1, p2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    return p1

    .line 836
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 841
    instance-of v0, p1, Ljava/lang/Float;

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

    packed-switch p2, :pswitch_data_0

    .line 876
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->reverse(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 874
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 872
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x0

    .line 870
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 846
    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 847
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    .line 850
    :cond_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 851
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 852
    sget v1, Lorg/h2/mvstore/type/ObjectDataType;->FLOAT_ZERO_BITS:I

    if-ne v0, v1, :cond_1

    const/16 p2, 0x28

    .line 853
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    .line 854
    :cond_1
    sget v1, Lorg/h2/mvstore/type/ObjectDataType;->FLOAT_ONE_BITS:I

    if-ne v0, v1, :cond_2

    const/16 p2, 0x29

    .line 855
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    .line 857
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->reverse(I)I

    move-result v0

    if-ltz v0, :cond_3

    const v1, 0x1fffff

    if-gt v0, v1, :cond_3

    const/4 p2, 0x7

    .line 859
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    :cond_3
    const/16 v0, 0x2a

    .line 861
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putFloat(F)Lorg/h2/mvstore/WriteBuffer;

    :goto_0
    return-void
.end method
