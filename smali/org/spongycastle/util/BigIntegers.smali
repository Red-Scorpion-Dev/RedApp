.class public final Lorg/spongycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 12
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public static asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .locals 3

    .line 45
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 46
    array-length v0, p1

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 51
    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 52
    :cond_1
    array-length v1, p1

    sub-int/2addr v1, v0

    if-gt v1, p0, :cond_2

    .line 59
    new-array p0, p0, [B

    .line 60
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "standard length exceeded for value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .locals 2

    if-nez p1, :cond_0

    .line 114
    array-length v0, p0

    if-eq p2, v0, :cond_1

    .line 116
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 117
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 119
    :cond_1
    new-instance p1, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method
