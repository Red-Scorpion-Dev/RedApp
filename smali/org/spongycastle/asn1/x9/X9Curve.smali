.class public Lorg/spongycastle/asn1/x9/X9Curve;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X9Curve.java"

# interfaces
.implements Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lorg/spongycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;[B)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 42
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    return-void
.end method

.method private setFieldIdentifier()V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lorg/spongycastle/asn1/x9/X9Curve;->prime_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lorg/spongycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 143
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 145
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/x9/X9Curve;->prime_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    new-instance v1, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_2

    .line 158
    new-instance v1, Lorg/spongycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
