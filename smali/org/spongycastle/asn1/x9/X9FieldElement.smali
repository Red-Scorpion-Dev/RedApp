.class public Lorg/spongycastle/asn1/x9/X9FieldElement;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X9FieldElement.java"


# static fields
.field private static converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected f:Lorg/spongycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x9/X9FieldElement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->f:Lorg/spongycastle/math/ec/ECFieldElement;

    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 59
    sget-object v0, Lorg/spongycastle/asn1/x9/X9FieldElement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->f:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECFieldElement;)I

    move-result v0

    .line 60
    sget-object v1, Lorg/spongycastle/asn1/x9/X9FieldElement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->f:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 62
    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v1
.end method
