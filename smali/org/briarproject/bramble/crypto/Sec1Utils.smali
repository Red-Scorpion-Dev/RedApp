.class Lorg/briarproject/bramble/crypto/Sec1Utils;
.super Ljava/lang/Object;
.source "Sec1Utils.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertToFixedLength([B[BII)V
    .locals 3

    .line 10
    array-length v0, p0

    if-ge v0, p3, :cond_1

    .line 11
    array-length v0, p0

    sub-int/2addr p3, v0

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 12
    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    array-length p2, p0

    invoke-static {p0, v2, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 15
    :cond_1
    array-length v0, p0

    sub-int/2addr v0, p3

    .line 16
    invoke-static {p0, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void
.end method
