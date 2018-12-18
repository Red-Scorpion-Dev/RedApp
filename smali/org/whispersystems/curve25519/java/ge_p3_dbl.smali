.class public Lorg/whispersystems/curve25519/java/ge_p3_dbl;
.super Ljava/lang/Object;
.source "ge_p3_dbl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ge_p3_dbl(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p3;)V
    .locals 1

    .line 13
    new-instance v0, Lorg/whispersystems/curve25519/java/ge_p2;

    invoke-direct {v0}, Lorg/whispersystems/curve25519/java/ge_p2;-><init>()V

    .line 14
    invoke-static {v0, p1}, Lorg/whispersystems/curve25519/java/ge_p3_to_p2;->ge_p3_to_p2(Lorg/whispersystems/curve25519/java/ge_p2;Lorg/whispersystems/curve25519/java/ge_p3;)V

    .line 15
    invoke-static {p0, v0}, Lorg/whispersystems/curve25519/java/ge_p2_dbl;->ge_p2_dbl(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p2;)V

    return-void
.end method
