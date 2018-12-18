.class public Lorg/whispersystems/curve25519/JCESha512Provider;
.super Ljava/lang/Object;
.source "JCESha512Provider.java"

# interfaces
.implements Lorg/whispersystems/curve25519/java/Sha512;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateDigest([B[BJ)V
    .locals 1

    :try_start_0
    const-string v0, "SHA-512"

    .line 18
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    long-to-int p3, p3

    const/4 p4, 0x0

    .line 19
    invoke-virtual {v0, p2, p4, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 20
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    .line 21
    array-length p3, p2

    invoke-static {p2, p4, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
