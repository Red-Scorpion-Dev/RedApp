.class public Lorg/whispersystems/curve25519/java/fe_isnonzero;
.super Ljava/lang/Object;
.source "fe_isnonzero.java"


# static fields
.field static final zero:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 16
    new-array v0, v0, [B

    sput-object v0, Lorg/whispersystems/curve25519/java/fe_isnonzero;->zero:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_isnonzero([I)I
    .locals 1

    const/16 v0, 0x20

    .line 20
    new-array v0, v0, [B

    .line 21
    invoke-static {v0, p0}, Lorg/whispersystems/curve25519/java/fe_tobytes;->fe_tobytes([B[I)V

    .line 22
    sget-object p0, Lorg/whispersystems/curve25519/java/fe_isnonzero;->zero:[B

    invoke-static {v0, p0}, Lorg/whispersystems/curve25519/java/crypto_verify_32;->crypto_verify_32([B[B)I

    move-result p0

    return p0
.end method
