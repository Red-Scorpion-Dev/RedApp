.class Lorg/briarproject/bramble/db/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateExpiry(JII)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_5

    if-lez p2, :cond_4

    if-ltz p3, :cond_3

    int-to-long v2, p2

    const-wide/16 v4, 0x2

    mul-long v2, v2, v4

    const/4 p2, 0x0

    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    if-ge p2, p3, :cond_1

    const/4 v6, 0x1

    shl-long/2addr v2, v6

    cmp-long v6, v2, v0

    if-gez v6, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    add-long/2addr p0, v2

    cmp-long p2, p0, v0

    if-gez p2, :cond_2

    move-wide p0, v4

    :cond_2
    return-wide p0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
