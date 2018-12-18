.class Lorg/whispersystems/curve25519/NativeCurve25519Provider;
.super Ljava/lang/Object;
.source "NativeCurve25519Provider.java"

# interfaces
.implements Lorg/whispersystems/curve25519/Curve25519Provider;


# static fields
.field private static libraryFailedException:Ljava/lang/Throwable;

.field private static libraryPresent:Z


# instance fields
.field private secureRandomProvider:Lorg/whispersystems/curve25519/SecureRandomProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "curve25519"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->libraryPresent:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->libraryPresent:Z

    .line 20
    sput-object v0, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->libraryFailedException:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/NoSuchProviderException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/whispersystems/curve25519/JCESecureRandomProvider;

    invoke-direct {v0}, Lorg/whispersystems/curve25519/JCESecureRandomProvider;-><init>()V

    iput-object v0, p0, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->secureRandomProvider:Lorg/whispersystems/curve25519/SecureRandomProvider;

    .line 27
    sget-boolean v0, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->libraryPresent:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7a69

    .line 30
    :try_start_0
    invoke-direct {p0, v0}, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->smokeCheck(I)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Lorg/whispersystems/curve25519/NoSuchProviderException;

    invoke-direct {v1, v0}, Lorg/whispersystems/curve25519/NoSuchProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :cond_0
    new-instance v0, Lorg/whispersystems/curve25519/NoSuchProviderException;

    sget-object v1, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->libraryFailedException:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/whispersystems/curve25519/NoSuchProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private native smokeCheck(I)Z
.end method


# virtual methods
.method public native calculateAgreement([B[B)[B
.end method

.method public native calculateSignature([B[B[B)[B
.end method

.method public native calculateVrfSignature([B[B[B)[B
.end method

.method public generatePrivateKey()[B
    .locals 1

    const/16 v0, 0x20

    .line 43
    invoke-virtual {p0, v0}, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->getRandom(I)[B

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->generatePrivateKey([B)[B

    move-result-object v0

    return-object v0
.end method

.method public native generatePrivateKey([B)[B
.end method

.method public native generatePublicKey([B)[B
.end method

.method public getRandom(I)[B
    .locals 1

    .line 49
    new-array p1, p1, [B

    .line 50
    iget-object v0, p0, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->secureRandomProvider:Lorg/whispersystems/curve25519/SecureRandomProvider;

    invoke-interface {v0, p1}, Lorg/whispersystems/curve25519/SecureRandomProvider;->nextBytes([B)V

    return-object p1
.end method

.method public isNative()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setRandomProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/whispersystems/curve25519/NativeCurve25519Provider;->secureRandomProvider:Lorg/whispersystems/curve25519/SecureRandomProvider;

    return-void
.end method

.method public native verifySignature([B[B[B)Z
.end method

.method public native verifyVrfSignature([B[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/VrfSignatureVerificationFailedException;
        }
    .end annotation
.end method
