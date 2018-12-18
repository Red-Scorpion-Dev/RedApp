.class public Lorg/spongycastle/asn1/x9/X9ECPoint;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field private c:Lorg/spongycastle/math/ec/ECCurve;

.field private final encoding:Lorg/spongycastle/asn1/ASN1OctetString;

.field private p:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;[B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->c:Lorg/spongycastle/math/ec/ECCurve;

    .line 41
    new-instance p1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->encoding:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public declared-synchronized getPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->p:Lorg/spongycastle/math/ec/ECPoint;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->c:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->encoding:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->p:Lorg/spongycastle/math/ec/ECPoint;

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->p:Lorg/spongycastle/math/ec/ECPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    throw v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->encoding:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method
