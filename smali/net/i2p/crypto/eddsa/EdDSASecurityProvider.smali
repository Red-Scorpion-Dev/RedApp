.class public Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;
.super Ljava/security/Provider;
.source "EdDSASecurityProvider.java"


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "EdDSA"

.field private static final serialVersionUID:J = 0x10cae1f85a1b8853L


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "EdDSA"

    const-string v1, "str4d EdDSA security provider wrapper"

    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 29
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 31
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;

    invoke-direct {v0, p0}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;-><init>(Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected setup()V
    .locals 2

    const-string v0, "KeyFactory.EdDSA"

    const-string v1, "net.i2p.crypto.eddsa.KeyFactory"

    .line 42
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.EdDSA"

    const-string v1, "net.i2p.crypto.eddsa.KeyPairGenerator"

    .line 43
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Signature.NONEwithEdDSA"

    const-string v1, "net.i2p.crypto.eddsa.EdDSAEngine"

    .line 44
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyFactory.1.3.101.112"

    const-string v1, "EdDSA"

    .line 52
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyFactory.OID.1.3.101.112"

    const-string v1, "EdDSA"

    .line 53
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyPairGenerator.1.3.101.112"

    const-string v1, "EdDSA"

    .line 54
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyPairGenerator.OID.1.3.101.112"

    const-string v1, "EdDSA"

    .line 55
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.1.3.101.112"

    const-string v1, "NONEwithEdDSA"

    .line 56
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Signature.OID.1.3.101.112"

    const-string v1, "NONEwithEdDSA"

    .line 57
    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
