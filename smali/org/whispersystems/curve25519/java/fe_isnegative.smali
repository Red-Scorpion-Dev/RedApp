.class public Lorg/whispersystems/curve25519/java/fe_isnegative;
.super Ljava/lang/Object;
.source "fe_isnegative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_isnegative([I)I
    .locals 1

    const/16 v0, 0x20

    .line 17
    new-array v0, v0, [B

    .line 18
    invoke-static {v0, p0}, Lorg/whispersystems/curve25519/java/fe_tobytes;->fe_tobytes([B[I)V

    const/4 p0, 0x0

    .line 19
    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method
