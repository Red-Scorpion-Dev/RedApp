.class public Lorg/whispersystems/curve25519/java/ge_p1p1_to_p2;
.super Ljava/lang/Object;
.source "ge_p1p1_to_p2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ge_p1p1_to_p2(Lorg/whispersystems/curve25519/java/ge_p2;Lorg/whispersystems/curve25519/java/ge_p1p1;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p2;->X:[I

    iget-object v1, p1, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    invoke-static {v0, v1, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 14
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p2;->Y:[I

    iget-object v1, p1, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    invoke-static {v0, v1, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 15
    iget-object p0, p0, Lorg/whispersystems/curve25519/java/ge_p2;->Z:[I

    iget-object v0, p1, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object p1, p1, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    invoke-static {p0, v0, p1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    return-void
.end method
