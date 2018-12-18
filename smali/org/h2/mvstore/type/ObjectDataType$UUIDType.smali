.class Lorg/h2/mvstore/type/ObjectDataType$UUIDType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "ObjectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UUIDType"
.end annotation


# direct methods
.method constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/16 v0, 0xc

    .line 1150
    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1160
    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 1161
    check-cast p1, Ljava/util/UUID;

    .line 1162
    check-cast p2, Ljava/util/UUID;

    .line 1163
    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1

    .line 1165
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 1155
    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_0

    const/16 p1, 0x28

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 3

    .line 1182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    .line 1183
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v0, v1, p1, p2}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 1170
    instance-of v0, p2, Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 1171
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v0, 0xc

    .line 1174
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 1175
    check-cast p2, Ljava/util/UUID;

    .line 1176
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putLong(J)Lorg/h2/mvstore/WriteBuffer;

    .line 1177
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putLong(J)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method
