.class public Lorg/whispersystems/curve25519/Curve25519KeyPair;
.super Ljava/lang/Object;
.source "Curve25519KeyPair.java"


# instance fields
.field private final privateKey:[B

.field private final publicKey:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/whispersystems/curve25519/Curve25519KeyPair;->publicKey:[B

    .line 21
    iput-object p2, p0, Lorg/whispersystems/curve25519/Curve25519KeyPair;->privateKey:[B

    return-void
.end method


# virtual methods
.method public getPrivateKey()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519KeyPair;->privateKey:[B

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519KeyPair;->publicKey:[B

    return-object v0
.end method
