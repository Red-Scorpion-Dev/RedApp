.class Lorg/h2/mvstore/type/ObjectDataType$CharacterType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "ObjectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterType"
.end annotation


# direct methods
.method constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/16 v0, 0xa

    .line 616
    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 621
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 622
    check-cast p1, Ljava/lang/Character;

    .line 623
    check-cast p2, Ljava/lang/Character;

    .line 624
    invoke-virtual {p1, p2}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result p1

    return p1

    .line 626
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 631
    instance-of v0, p1, Ljava/lang/Character;

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

    .line 646
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 636
    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 637
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v0, 0xa

    .line 640
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 641
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putChar(C)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method
