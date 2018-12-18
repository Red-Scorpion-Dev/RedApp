.class public Lorg/h2/value/ValueDecimal;
.super Lorg/h2/value/Value;
.source "ValueDecimal.java"


# static fields
.field private static final BIG_DECIMAL_SCALE_MAX:I = 0x186a0

.field static final DEFAULT_DISPLAY_SIZE:I = 0xffff

.field static final DEFAULT_PRECISION:I = 0xffff

.field static final DEFAULT_SCALE:I = 0x7fff

.field private static final DIVIDE_SCALE_ADD:I = 0x19

.field public static final ONE:Ljava/lang/Object;

.field public static final ZERO:Ljava/lang/Object;


# instance fields
.field private precision:I

.field private final value:Ljava/math/BigDecimal;

.field private valueString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lorg/h2/value/ValueDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/h2/value/ValueDecimal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/h2/value/ValueDecimal;->ZERO:Ljava/lang/Object;

    .line 29
    new-instance v0, Lorg/h2/value/ValueDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/h2/value/ValueDecimal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/h2/value/ValueDecimal;->ONE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/math/BigDecimal;)V
    .locals 4

    .line 57
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    return-void

    :cond_0
    const v0, 0x1600d

    const/4 v1, 0x2

    .line 61
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;
    .locals 1

    .line 229
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object p0, Lorg/h2/value/ValueDecimal;->ZERO:Ljava/lang/Object;

    check-cast p0, Lorg/h2/value/ValueDecimal;

    return-object p0

    .line 231
    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    sget-object p0, Lorg/h2/value/ValueDecimal;->ONE:Ljava/lang/Object;

    check-cast p0, Lorg/h2/value/ValueDecimal;

    return-object p0

    .line 234
    :cond_1
    new-instance v0, Lorg/h2/value/ValueDecimal;

    invoke-direct {v0, p0}, Lorg/h2/value/ValueDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueDecimal;

    return-object p0
.end method

.method public static setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 1

    const v0, 0x186a0

    if-gt p1, v0, :cond_0

    const v0, -0x186a0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    .line 269
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 267
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "scale"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 69
    check-cast p1, Lorg/h2/value/ValueDecimal;

    .line 70
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method

.method public checkPrecision(J)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/32 v1, 0xffff

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getPrecision()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    .line 131
    check-cast p1, Lorg/h2/value/ValueDecimal;

    .line 132
    iget-object p2, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 3

    .line 211
    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getPrecision()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 215
    iget-object p1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p3, 0x55f3

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public convertScale(ZI)Lorg/h2/value/Value;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x7fff

    if-lt p2, p1, :cond_2

    .line 201
    :cond_1
    iget-object p1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-ge p1, p2, :cond_2

    return-object p0

    .line 205
    :cond_2
    iget-object p1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 206
    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 3

    .line 92
    check-cast p1, Lorg/h2/value/ValueDecimal;

    .line 93
    iget-object v0, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    .line 106
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0x55fc

    .line 94
    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 249
    instance-of v0, p1, Lorg/h2/value/ValueDecimal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    check-cast p1, Lorg/h2/value/ValueDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 4

    .line 240
    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getPrecision()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getMemory()I
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    add-int/lit8 v0, v0, 0x78

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    .line 160
    iget v0, p0, Lorg/h2/value/ValueDecimal;->precision:I

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    iput v0, p0, Lorg/h2/value/ValueDecimal;->precision:I

    .line 163
    :cond_0
    iget v0, p0, Lorg/h2/value/ValueDecimal;->precision:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    return v0
.end method

.method public getSignum()I
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->valueString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_0

    .line 150
    iput-object v0, p0, Lorg/h2/value/ValueDecimal;->valueString:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/value/ValueDecimal;->valueString:Ljava/lang/String;

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/h2/value/ValueDecimal;->modulus(Lorg/h2/value/Value;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/ValueDecimal;
    .locals 1

    .line 111
    check-cast p1, Lorg/h2/value/ValueDecimal;

    .line 112
    iget-object v0, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 116
    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    .line 113
    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 86
    check-cast p1, Lorg/h2/value/ValueDecimal;

    .line 87
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 75
    check-cast p1, Lorg/h2/value/ValueDecimal;

    .line 76
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method
