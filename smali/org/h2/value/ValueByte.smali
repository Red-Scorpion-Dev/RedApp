.class public Lorg/h2/value/ValueByte;
.super Lorg/h2/value/Value;
.source "ValueByte.java"


# static fields
.field static final DISPLAY_SIZE:I = 0x4

.field static final PRECISION:I = 0x3


# instance fields
.field private final value:B


# direct methods
.method private constructor <init>(B)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 34
    iput-byte p1, p0, Lorg/h2/value/ValueByte;->value:B

    return-void
.end method

.method private static checkRange(I)Lorg/h2/value/ValueByte;
    .locals 1

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    int-to-byte p0, p0

    .line 48
    invoke-static {p0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x55f3

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static get(B)Lorg/h2/value/ValueByte;
    .locals 1

    .line 145
    new-instance v0, Lorg/h2/value/ValueByte;

    invoke-direct {v0, p0}, Lorg/h2/value/ValueByte;-><init>(B)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueByte;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 39
    check-cast p1, Lorg/h2/value/ValueByte;

    .line 40
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    iget-byte p1, p1, Lorg/h2/value/ValueByte;->value:B

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueByte;->checkRange(I)Lorg/h2/value/ValueByte;

    move-result-object p1

    return-object p1
.end method

.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    .line 108
    check-cast p1, Lorg/h2/value/ValueByte;

    .line 109
    iget-byte p2, p0, Lorg/h2/value/ValueByte;->value:B

    iget-byte p1, p1, Lorg/h2/value/ValueByte;->value:B

    invoke-static {p2, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 75
    check-cast p1, Lorg/h2/value/ValueByte;

    .line 76
    iget-byte v0, p1, Lorg/h2/value/ValueByte;->value:B

    if-eqz v0, :cond_0

    .line 79
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    iget-byte p1, p1, Lorg/h2/value/ValueByte;->value:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    invoke-static {p1}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    .line 77
    invoke-virtual {p0}, Lorg/h2/value/ValueByte;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 155
    instance-of v0, p1, Lorg/h2/value/ValueByte;

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    check-cast p1, Lorg/h2/value/ValueByte;

    iget-byte p1, p1, Lorg/h2/value/ValueByte;->value:B

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getByte()B
    .locals 1

    .line 103
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 129
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/h2/value/ValueByte;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignum()I
    .locals 1

    .line 53
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 114
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 124
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    return v0
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 84
    check-cast p1, Lorg/h2/value/ValueByte;

    .line 85
    iget-byte v0, p1, Lorg/h2/value/ValueByte;->value:B

    if-eqz v0, :cond_0

    .line 88
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    iget-byte p1, p1, Lorg/h2/value/ValueByte;->value:B

    rem-int/2addr v0, p1

    int-to-byte p1, v0

    invoke-static {p1}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    .line 86
    invoke-virtual {p0}, Lorg/h2/value/ValueByte;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 69
    check-cast p1, Lorg/h2/value/ValueByte;

    .line 70
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    iget-byte p1, p1, Lorg/h2/value/ValueByte;->value:B

    mul-int v0, v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueByte;->checkRange(I)Lorg/h2/value/ValueByte;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 1

    .line 58
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    neg-int v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->checkRange(I)Lorg/h2/value/ValueByte;

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

    .line 135
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setByte(IB)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 63
    check-cast p1, Lorg/h2/value/ValueByte;

    .line 64
    iget-byte v0, p0, Lorg/h2/value/ValueByte;->value:B

    iget-byte p1, p1, Lorg/h2/value/ValueByte;->value:B

    sub-int/2addr v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueByte;->checkRange(I)Lorg/h2/value/ValueByte;

    move-result-object p1

    return-object p1
.end method
