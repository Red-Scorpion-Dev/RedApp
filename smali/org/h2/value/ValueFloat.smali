.class public Lorg/h2/value/ValueFloat;
.super Lorg/h2/value/Value;
.source "ValueFloat.java"


# static fields
.field static final DISPLAY_SIZE:I = 0xf

.field private static final ONE:Lorg/h2/value/ValueFloat;

.field static final PRECISION:I = 0x7

.field private static final ZERO:Lorg/h2/value/ValueFloat;

.field public static final ZERO_BITS:I


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    sput v1, Lorg/h2/value/ValueFloat;->ZERO_BITS:I

    .line 35
    new-instance v1, Lorg/h2/value/ValueFloat;

    invoke-direct {v1, v0}, Lorg/h2/value/ValueFloat;-><init>(F)V

    sput-object v1, Lorg/h2/value/ValueFloat;->ZERO:Lorg/h2/value/ValueFloat;

    .line 36
    new-instance v0, Lorg/h2/value/ValueFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lorg/h2/value/ValueFloat;-><init>(F)V

    sput-object v0, Lorg/h2/value/ValueFloat;->ONE:Lorg/h2/value/ValueFloat;

    return-void
.end method

.method private constructor <init>(F)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 41
    iput p1, p0, Lorg/h2/value/ValueFloat;->value:F

    return-void
.end method

.method public static get(F)Lorg/h2/value/ValueFloat;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 159
    sget-object p0, Lorg/h2/value/ValueFloat;->ONE:Lorg/h2/value/ValueFloat;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 162
    sget-object p0, Lorg/h2/value/ValueFloat;->ZERO:Lorg/h2/value/ValueFloat;

    return-object p0

    .line 164
    :cond_1
    new-instance v0, Lorg/h2/value/ValueFloat;

    invoke-direct {v0, p0}, Lorg/h2/value/ValueFloat;-><init>(F)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueFloat;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 46
    check-cast p1, Lorg/h2/value/ValueFloat;

    .line 47
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    iget p1, p1, Lorg/h2/value/ValueFloat;->value:F

    add-float/2addr v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p1

    return-object p1
.end method

.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    .line 105
    check-cast p1, Lorg/h2/value/ValueFloat;

    .line 106
    iget p2, p0, Lorg/h2/value/ValueFloat;->value:F

    iget p1, p1, Lorg/h2/value/ValueFloat;->value:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 5

    .line 69
    check-cast p1, Lorg/h2/value/ValueFloat;

    .line 70
    iget v0, p1, Lorg/h2/value/ValueFloat;->value:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 73
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    iget p1, p1, Lorg/h2/value/ValueFloat;->value:F

    div-float/2addr v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    .line 71
    invoke-virtual {p0}, Lorg/h2/value/ValueFloat;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 174
    instance-of v0, p1, Lorg/h2/value/ValueFloat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 177
    :cond_0
    check-cast p1, Lorg/h2/value/ValueFloat;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/value/ValueFloat;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getFloat()F
    .locals 1

    .line 116
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 142
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x7

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 87
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, "POWER(0, -1)"

    return-object v0

    .line 89
    :cond_0
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const-string v0, "(-POWER(0, -1))"

    return-object v0

    .line 91
    :cond_1
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SQRT(-1)"

    return-object v0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lorg/h2/value/ValueFloat;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSignum()I
    .locals 2

    .line 111
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 121
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 136
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 2

    .line 78
    check-cast p1, Lorg/h2/value/ValueFloat;

    .line 79
    iget v0, p1, Lorg/h2/value/ValueFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 82
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    iget p1, p1, Lorg/h2/value/ValueFloat;->value:F

    rem-float/2addr v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    .line 80
    invoke-virtual {p0}, Lorg/h2/value/ValueFloat;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 63
    check-cast p1, Lorg/h2/value/ValueFloat;

    .line 64
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    iget p1, p1, Lorg/h2/value/ValueFloat;->value:F

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 1

    .line 58
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    neg-float v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

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

    .line 148
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    .line 52
    check-cast p1, Lorg/h2/value/ValueFloat;

    .line 53
    iget v0, p0, Lorg/h2/value/ValueFloat;->value:F

    iget p1, p1, Lorg/h2/value/ValueFloat;->value:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p1

    return-object p1
.end method
