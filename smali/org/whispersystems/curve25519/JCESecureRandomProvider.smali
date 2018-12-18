.class public Lorg/whispersystems/curve25519/JCESecureRandomProvider;
.super Ljava/lang/Object;
.source "JCESecureRandomProvider.java"

# interfaces
.implements Lorg/whispersystems/curve25519/SecureRandomProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 1

    .line 15
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public nextInt(I)I
    .locals 1

    .line 20
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p1

    return p1
.end method
