.class public Lorg/briarproject/bramble/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field public static final INT_16_BYTES:I = 0x2

.field public static final INT_32_BYTES:I = 0x4

.field public static final INT_64_BYTES:I = 0x8

.field public static final MAX_16_BIT_UNSIGNED:I = 0xffff

.field public static final MAX_32_BIT_UNSIGNED:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readUint([BI)I
    .locals 6

    .line 87
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    if-lt v0, p1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_1

    shr-int/lit8 v3, v0, 0x3

    .line 90
    aget-byte v3, p0, v3

    const/16 v4, 0x80

    and-int/lit8 v5, v0, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    sub-int v3, p1, v0

    sub-int/2addr v3, v2

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_3

    shl-int p0, v2, p1

    if-ge v1, p0, :cond_2

    return v1

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 87
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static readUint16([BI)I
    .locals 2

    .line 59
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-lt v0, v1, :cond_0

    .line 61
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static readUint32([BI)J
    .locals 7

    .line 65
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_0

    .line 67
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static readUint64([BI)J
    .locals 7

    .line 74
    array-length v0, p0

    add-int/lit8 v1, p1, 0x8

    if-lt v0, v1, :cond_0

    .line 76
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static writeUint16(I[BI)V
    .locals 2

    if-ltz p0, :cond_2

    const v0, 0xffff

    if-gt p0, v0, :cond_1

    .line 27
    array-length v0, p1

    add-int/lit8 v1, p2, 0x2

    if-lt v0, v1, :cond_0

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 29
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 30
    aput-byte p0, p1, p2

    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static writeUint32(J[BI)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 36
    array-length v0, p2

    add-int/lit8 v1, p3, 0x4

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 38
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 39
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 40
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    and-long/2addr p0, v3

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 41
    aput-byte p0, p2, p3

    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static writeUint64(J[BI)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    .line 46
    array-length v0, p2

    add-int/lit8 v1, p3, 0x8

    if-lt v0, v1, :cond_0

    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 48
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 49
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 50
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 51
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 52
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 53
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 54
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    and-long/2addr p0, v3

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 55
    aput-byte p0, p2, p3

    return-void

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
