.class interface abstract Lorg/whispersystems/curve25519/Curve25519Provider;
.super Ljava/lang/Object;
.source "Curve25519Provider.java"


# static fields
.field public static final PRIVATE_KEY_LEN:I = 0x20


# virtual methods
.method public abstract calculateAgreement([B[B)[B
.end method

.method public abstract calculateSignature([B[B[B)[B
.end method

.method public abstract calculateVrfSignature([B[B[B)[B
.end method

.method public abstract generatePrivateKey()[B
.end method

.method public abstract generatePrivateKey([B)[B
.end method

.method public abstract generatePublicKey([B)[B
.end method

.method public abstract getRandom(I)[B
.end method

.method public abstract isNative()Z
.end method

.method public abstract setRandomProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)V
.end method

.method public abstract verifySignature([B[B[B)Z
.end method

.method public abstract verifyVrfSignature([B[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/VrfSignatureVerificationFailedException;
        }
    .end annotation
.end method
