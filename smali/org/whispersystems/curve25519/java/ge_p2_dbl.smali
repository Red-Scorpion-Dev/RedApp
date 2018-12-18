.class public Lorg/whispersystems/curve25519/java/ge_p2_dbl;
.super Ljava/lang/Object;
.source "ge_p2_dbl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ge_p2_dbl(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p2;)V
    .locals 3

    const/16 v0, 0xa

    .line 13
    new-array v0, v0, [I

    .line 45
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p2;->X:[I

    invoke-static {v1, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 50
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p2;->Y:[I

    invoke-static {v1, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 55
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p2;->Z:[I

    invoke-static {v1, v2}, Lorg/whispersystems/curve25519/java/fe_sq2;->fe_sq2([I[I)V

    .line 60
    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p2;->X:[I

    iget-object p1, p1, Lorg/whispersystems/curve25519/java/ge_p2;->Y:[I

    invoke-static {v1, v2, p1}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 65
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    invoke-static {v0, p1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 70
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object v2, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    invoke-static {p1, v1, v2}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 75
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    iget-object v2, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    invoke-static {p1, v1, v2}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 80
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->X:[I

    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Y:[I

    invoke-static {p1, v0, v1}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 85
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->T:[I

    iget-object p0, p0, Lorg/whispersystems/curve25519/java/ge_p1p1;->Z:[I

    invoke-static {p1, v0, p0}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    return-void
.end method
