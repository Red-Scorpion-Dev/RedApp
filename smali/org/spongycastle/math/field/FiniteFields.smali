.class public abstract Lorg/spongycastle/math/field/FiniteFields;
.super Ljava/lang/Object;
.source "FiniteFields.java"


# static fields
.field static final GF_2:Lorg/spongycastle/math/field/FiniteField;

.field static final GF_3:Lorg/spongycastle/math/field/FiniteField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lorg/spongycastle/math/field/PrimeField;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/spongycastle/math/field/FiniteFields;->GF_2:Lorg/spongycastle/math/field/FiniteField;

    .line 8
    new-instance v0, Lorg/spongycastle/math/field/PrimeField;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/spongycastle/math/field/FiniteFields;->GF_3:Lorg/spongycastle/math/field/FiniteField;

    return-void
.end method

.method public static getPrimeField(Ljava/math/BigInteger;)Lorg/spongycastle/math/field/FiniteField;
    .locals 2

    .line 34
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 35
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    sget-object p0, Lorg/spongycastle/math/field/FiniteFields;->GF_3:Lorg/spongycastle/math/field/FiniteField;

    return-object p0

    .line 45
    :pswitch_1
    sget-object p0, Lorg/spongycastle/math/field/FiniteFields;->GF_2:Lorg/spongycastle/math/field/FiniteField;

    return-object p0

    .line 51
    :cond_0
    :goto_0
    new-instance v0, Lorg/spongycastle/math/field/PrimeField;

    invoke-direct {v0, p0}, Lorg/spongycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'characteristic\' must be >= 2"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
