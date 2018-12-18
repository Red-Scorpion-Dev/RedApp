.class public final Lorg/spongycastle/crypto/util/DigestFactory;
.super Ljava/lang/Object;
.source "DigestFactory.java"


# direct methods
.method public static createSHA1()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 25
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0
.end method
