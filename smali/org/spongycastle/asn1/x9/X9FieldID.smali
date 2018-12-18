.class public Lorg/spongycastle/asn1/x9/X9FieldID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X9FieldID.java"

# interfaces
.implements Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private id:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private parameters:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    .line 65
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 66
    sget-object v0, Lorg/spongycastle/asn1/x9/X9FieldID;->characteristic_two_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9FieldID;->id:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 68
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    .line 77
    sget-object p1, Lorg/spongycastle/asn1/x9/X9FieldID;->tpBasis:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance p1, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inconsistent k values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-le p3, p2, :cond_2

    if-le p4, p3, :cond_2

    .line 87
    sget-object p1, Lorg/spongycastle/asn1/x9/X9FieldID;->ppBasis:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    new-instance p1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 89
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 90
    new-instance p2, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v1, p3

    invoke-direct {p2, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 91
    new-instance p2, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    new-instance p2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p2, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    :goto_0
    new-instance p1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9FieldID;->parameters:Lorg/spongycastle/asn1/ASN1Primitive;

    return-void

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inconsistent k values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/x9/X9FieldID;->prime_field:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9FieldID;->id:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9FieldID;->parameters:Lorg/spongycastle/asn1/ASN1Primitive;

    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 141
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9FieldID;->id:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9FieldID;->parameters:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
