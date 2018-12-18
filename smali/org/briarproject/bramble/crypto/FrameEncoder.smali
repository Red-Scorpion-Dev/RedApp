.class Lorg/briarproject/bramble/crypto/FrameEncoder;
.super Ljava/lang/Object;
.source "FrameEncoder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeHeader([BZII)V
    .locals 2

    .line 26
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    const/16 v1, 0x3dc

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 32
    invoke-static {p2, p0, v0}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint16(I[BI)V

    const/4 p2, 0x2

    .line 33
    invoke-static {p3, p0, p2}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint16(I[BI)V

    if-eqz p1, :cond_0

    .line 34
    aget-byte p1, p0, v0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    :cond_0
    return-void

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 29
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 28
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 27
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static encodeNonce([BJZ)V
    .locals 4

    .line 16
    array-length v0, p0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 19
    invoke-static {p1, p2, p0, v0}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint64(J[BI)V

    if-eqz p3, :cond_0

    .line 20
    aget-byte p1, p0, v0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    if-ge p1, v1, :cond_1

    .line 21
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static getPaddingLength([B)I
    .locals 2

    .line 50
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 52
    invoke-static {p0, v0}, Lorg/briarproject/bramble/util/ByteUtils;->readUint16([BI)I

    move-result p0

    return p0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static getPayloadLength([B)I
    .locals 2

    .line 44
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Lorg/briarproject/bramble/util/ByteUtils;->readUint16([BI)I

    move-result p0

    and-int/lit16 p0, p0, 0x7fff

    return p0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static isFinalFrame([B)Z
    .locals 2

    .line 38
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 40
    aget-byte p0, p0, v0

    const/16 v1, 0x80

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
