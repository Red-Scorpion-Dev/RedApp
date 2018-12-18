.class public Lorg/whispersystems/curve25519/java/ge_add;
.super Ljava/lang/Object;
.source "ge_add.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ge_add(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p3;Lorg/whispersystems/curve25519/java/ge_cached;)V
    .locals 4

    const/16 v0, 0xa

    .line 13
    new-array v0, v0, [I

    .line 59
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    iget-object v3, p1, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v1, v2, v3}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 64
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    iget-object v3, p1, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v1, v2, v3}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 69
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object v2, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    iget-object v3, p2, Lorg/whispersystems/curve25519/java/ge_cached;->YplusX:[I

    invoke-static {v1, v2, v3}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 74
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    iget-object v2, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    iget-object v3, p2, Lorg/whispersystems/curve25519/java/ge_cached;->YminusX:[I

    invoke-static {v1, v2, v3}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 79
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    iget-object v2, p2, Lorg/whispersystems/curve25519/java/ge_cached;->T2d:[I

    iget-object v3, p1, Lorg/whispersystems/curve25519/java/ge_p3;->T:[I

    invoke-static {v1, v2, v3}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 84
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    iget-object p1, p1, Lorg/whispersystems/curve25519/java/ge_p3;->Z:[I

    iget-object p2, p2, Lorg/whispersystems/curve25519/java/ge_cached;->Z:[I

    invoke-static {v1, p1, p2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 89
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    iget-object p2, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    invoke-static {v0, p1, p2}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 94
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    iget-object p2, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    invoke-static {p1, p2, v1}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 99
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    iget-object p2, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    invoke-static {p1, p2, v1}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 104
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object p2, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    invoke-static {p1, v0, p2}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 109
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    iget-object p0, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    invoke-static {p1, v0, p0}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    return-void
.end method
