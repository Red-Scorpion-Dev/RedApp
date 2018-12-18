.class public Lorg/whispersystems/curve25519/Curve25519;
.super Ljava/lang/Object;
.source "Curve25519.java"


# static fields
.field public static final BEST:Ljava/lang/String; = "best"

.field public static final J2ME:Ljava/lang/String; = "j2me"

.field public static final JAVA:Ljava/lang/String; = "java"

.field public static final NATIVE:Ljava/lang/String; = "native"


# instance fields
.field private final provider:Lorg/whispersystems/curve25519/Curve25519Provider;


# direct methods
.method private constructor <init>(Lorg/whispersystems/curve25519/Curve25519Provider;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    return-void
.end method

.method private static constructClass(Ljava/lang/String;Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/NoSuchProviderException;
        }
    .end annotation

    .line 177
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.whispersystems.curve25519."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/whispersystems/curve25519/Curve25519Provider;

    if-eqz p1, :cond_0

    .line 180
    invoke-interface {p0, p1}, Lorg/whispersystems/curve25519/Curve25519Provider;->setRandomProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 189
    new-instance p1, Lorg/whispersystems/curve25519/NoSuchProviderException;

    invoke-direct {p1, p0}, Lorg/whispersystems/curve25519/NoSuchProviderException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 187
    new-instance p1, Lorg/whispersystems/curve25519/NoSuchProviderException;

    invoke-direct {p1, p0}, Lorg/whispersystems/curve25519/NoSuchProviderException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 185
    new-instance p1, Lorg/whispersystems/curve25519/NoSuchProviderException;

    invoke-direct {p1, p0}, Lorg/whispersystems/curve25519/NoSuchProviderException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static constructJ2meProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "J2meCurve25519Provider"

    .line 168
    invoke-static {v0, p0}, Lorg/whispersystems/curve25519/Curve25519;->constructClass(Ljava/lang/String;Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;

    move-result-object p0

    return-object p0
.end method

.method private static constructJavaProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "JavaCurve25519Provider"

    .line 164
    invoke-static {v0, p0}, Lorg/whispersystems/curve25519/Curve25519;->constructClass(Ljava/lang/String;Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;

    move-result-object p0

    return-object p0
.end method

.method private static constructNativeProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "NativeCurve25519Provider"

    .line 160
    invoke-static {v0, p0}, Lorg/whispersystems/curve25519/Curve25519;->constructClass(Ljava/lang/String;Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;

    move-result-object p0

    return-object p0
.end method

.method private static constructOpportunisticProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "OpportunisticCurve25519Provider"

    .line 172
    invoke-static {v0, p0}, Lorg/whispersystems/curve25519/Curve25519;->constructClass(Ljava/lang/String;Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/whispersystems/curve25519/Curve25519;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/NoSuchProviderException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-static {p0, v0}, Lorg/whispersystems/curve25519/Curve25519;->getInstance(Ljava/lang/String;Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "native"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/whispersystems/curve25519/Curve25519;

    invoke-static {p1}, Lorg/whispersystems/curve25519/Curve25519;->constructNativeProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/whispersystems/curve25519/Curve25519;-><init>(Lorg/whispersystems/curve25519/Curve25519Provider;)V

    return-object p0

    :cond_0
    const-string v0, "java"

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/whispersystems/curve25519/Curve25519;

    invoke-static {p1}, Lorg/whispersystems/curve25519/Curve25519;->constructJavaProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/whispersystems/curve25519/Curve25519;-><init>(Lorg/whispersystems/curve25519/Curve25519Provider;)V

    return-object p0

    :cond_1
    const-string v0, "j2me"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lorg/whispersystems/curve25519/Curve25519;

    invoke-static {p1}, Lorg/whispersystems/curve25519/Curve25519;->constructJ2meProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/whispersystems/curve25519/Curve25519;-><init>(Lorg/whispersystems/curve25519/Curve25519Provider;)V

    return-object p0

    :cond_2
    const-string v0, "best"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lorg/whispersystems/curve25519/Curve25519;

    invoke-static {p1}, Lorg/whispersystems/curve25519/Curve25519;->constructOpportunisticProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)Lorg/whispersystems/curve25519/Curve25519Provider;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/whispersystems/curve25519/Curve25519;-><init>(Lorg/whispersystems/curve25519/Curve25519Provider;)V

    return-object p0

    .line 33
    :cond_3
    new-instance p1, Lorg/whispersystems/curve25519/NoSuchProviderException;

    invoke-direct {p1, p0}, Lorg/whispersystems/curve25519/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public calculateAgreement([B[B)[B
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 77
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p2, p1}, Lorg/whispersystems/curve25519/Curve25519Provider;->calculateAgreement([B[B)[B

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Keys must be 32 bytes!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Keys must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public calculateSignature([B[B)[B
    .locals 2

    if-eqz p1, :cond_0

    .line 92
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lorg/whispersystems/curve25519/Curve25519Provider;->getRandom(I)[B

    move-result-object v0

    .line 97
    iget-object v1, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v1, v0, p1, p2}, Lorg/whispersystems/curve25519/Curve25519Provider;->calculateSignature([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid private key length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public calculateVrfSignature([B[B)[B
    .locals 2

    if-eqz p1, :cond_0

    .line 128
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lorg/whispersystems/curve25519/Curve25519Provider;->getRandom(I)[B

    move-result-object v0

    .line 133
    iget-object v1, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v1, v0, p1, p2}, Lorg/whispersystems/curve25519/Curve25519Provider;->calculateVrfSignature([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid private key!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateKeyPair()Lorg/whispersystems/curve25519/Curve25519KeyPair;
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0}, Lorg/whispersystems/curve25519/Curve25519Provider;->generatePrivateKey()[B

    move-result-object v0

    .line 60
    iget-object v1, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v1, v0}, Lorg/whispersystems/curve25519/Curve25519Provider;->generatePublicKey([B)[B

    move-result-object v1

    .line 62
    new-instance v2, Lorg/whispersystems/curve25519/Curve25519KeyPair;

    invoke-direct {v2, v1, v0}, Lorg/whispersystems/curve25519/Curve25519KeyPair;-><init>([B[B)V

    return-object v2
.end method

.method public isNative()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0}, Lorg/whispersystems/curve25519/Curve25519Provider;->isNative()Z

    move-result v0

    return v0
.end method

.method public verifySignature([B[B[B)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 109
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 113
    array-length v0, p3

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1, p2, p3}, Lorg/whispersystems/curve25519/Curve25519Provider;->verifySignature([B[B[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid public key!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyVrfSignature([B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/VrfSignatureVerificationFailedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 148
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 152
    array-length v0, p3

    const/16 v1, 0x60

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lorg/whispersystems/curve25519/Curve25519;->provider:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1, p2, p3}, Lorg/whispersystems/curve25519/Curve25519Provider;->verifyVrfSignature([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    new-instance p1, Lorg/whispersystems/curve25519/VrfSignatureVerificationFailedException;

    const-string p2, "Invalid message or signature format"

    invoke-direct {p1, p2}, Lorg/whispersystems/curve25519/VrfSignatureVerificationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid public key!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
