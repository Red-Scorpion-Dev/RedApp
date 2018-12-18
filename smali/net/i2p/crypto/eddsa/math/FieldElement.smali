.class public abstract Lnet/i2p/crypto/eddsa/math/FieldElement;
.super Ljava/lang/Object;
.source "FieldElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x46757fa4af8dcL


# instance fields
.field protected final f:Lnet/i2p/crypto/eddsa/math/Field;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "field cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public addOne()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 48
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public divide(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 0

    .line 60
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public abstract invert()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public isNegative()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getEncoding()Lnet/i2p/crypto/eddsa/math/Encoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/i2p/crypto/eddsa/math/Encoding;->isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z

    move-result v0

    return v0
.end method

.method public abstract isNonZero()Z
.end method

.method public abstract multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract negate()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract square()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public subtractOne()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 54
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getEncoding()Lnet/i2p/crypto/eddsa/math/Encoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/i2p/crypto/eddsa/math/Encoding;->encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B

    move-result-object v0

    return-object v0
.end method
