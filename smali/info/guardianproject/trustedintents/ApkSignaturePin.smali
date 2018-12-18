.class public abstract Linfo/guardianproject/trustedintents/ApkSignaturePin;
.super Ljava/lang/Object;
.source "ApkSignaturePin.java"


# instance fields
.field protected certificates:[[B

.field protected fingerprints:[Ljava/lang/String;

.field private signatures:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFingerprintsMatchCertificates()Z
    .locals 4

    .line 78
    iget-object v0, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->fingerprints:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->certificates:[[B

    if-nez v0, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->certificates:[[B

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 81
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 82
    invoke-virtual {p0}, Linfo/guardianproject/trustedintents/ApkSignaturePin;->getSHA256Fingerprint()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->fingerprints:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_3

    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_1

    .line 85
    :cond_2
    iget-object v1, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->fingerprints:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method public getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 34
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 35
    iget-object v0, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->certificates:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 36
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 37
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    shl-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMD5Fingerprint()Ljava/lang/String;
    .locals 1

    const-string v0, "MD5"

    .line 51
    invoke-virtual {p0, v0}, Linfo/guardianproject/trustedintents/ApkSignaturePin;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSHA1Fingerprint()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA1"

    .line 60
    invoke-virtual {p0, v0}, Linfo/guardianproject/trustedintents/ApkSignaturePin;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSHA256Fingerprint()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-256"

    .line 69
    invoke-virtual {p0, v0}, Linfo/guardianproject/trustedintents/ApkSignaturePin;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .locals 4

    .line 18
    iget-object v0, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->certificates:[[B

    array-length v0, v0

    new-array v0, v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v1, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->certificates:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->signatures:[Landroid/content/pm/Signature;

    new-instance v2, Landroid/content/pm/Signature;

    iget-object v3, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->certificates:[[B

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/trustedintents/ApkSignaturePin;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method
