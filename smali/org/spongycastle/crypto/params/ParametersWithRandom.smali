.class public Lorg/spongycastle/crypto/params/ParametersWithRandom;
.super Ljava/lang/Object;
.source "ParametersWithRandom.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/spongycastle/crypto/CipherParameters;

.field private random:Ljava/security/SecureRandom;


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithRandom;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    return-object v0
.end method
