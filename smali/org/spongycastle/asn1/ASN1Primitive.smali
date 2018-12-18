.class public abstract Lorg/spongycastle/asn1/ASN1Primitive;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ASN1Primitive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
.end method

.method abstract encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract encodedLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract hashCode()I
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method

.method toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method
