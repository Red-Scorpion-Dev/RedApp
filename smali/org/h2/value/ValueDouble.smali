.class public Lorg/h2/value/ValueDouble;
.super Lorg/h2/value/Value;
.source "ValueDouble.java"


# static fields
.field public static final DISPLAY_SIZE:I = 0x18

.field private static final NAN:Lorg/h2/value/ValueDouble;

.field private static final ONE:Lorg/h2/value/ValueDouble;

.field public static final PRECISION:I = 0x11

.field private static final ZERO:Lorg/h2/value/ValueDouble;

.field public static final ZERO_BITS:J


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sput-wide v2, Lorg/h2/value/ValueDouble;->ZERO_BITS:J

    .line 35
    new-instance v2, Lorg/h2/value/ValueDouble;

    invoke-direct {v2, v0, v1}, Lorg/h2/value/ValueDouble;-><init>(D)V

    sput-object v2, Lorg/h2/value/ValueDouble;->ZERO:Lorg/h2/value/ValueDouble;

    .line 36
    new-instance v0, Lorg/h2/value/ValueDouble;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/h2/value/ValueDouble;-><init>(D)V

    sput-object v0, Lorg/h2/value/ValueDouble;->ONE:Lorg/h2/value/ValueDouble;

    .line 37
    new-instance v0, Lorg/h2/value/ValueDouble;

    const-wide/high16 v1, 0x7ff8000000000000L    # NaN

    invoke-direct {v0, v1, v2}, Lorg/h2/value/ValueDouble;-><init>(D)V

    sput-object v0, Lorg/h2/value/ValueDouble;->NAN:Lorg/h2/value/ValueDouble;

    return-void
.end method

.method private constructor <init>(D)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 42
    iput-wide p1, p0, Lorg/h2/value/ValueDouble;->value:D

    return-void
.end method

.method public static get(D)Lorg/h2/value/ValueDouble;
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    .line 159
    sget-object p0, Lorg/h2/value/ValueDouble;->ONE:Lorg/h2/value/ValueDouble;

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    .line 162
    sget-object p0, Lorg/h2/value/ValueDouble;->ZERO:Lorg/h2/value/ValueDouble;

    return-object p0

    .line 163
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    sget-object p0, Lorg/h2/value/ValueDouble;->NAN:Lorg/h2/value/ValueDouble;

    return-object p0

    .line 166
    :cond_2
    new-instance v0, Lorg/h2/value/ValueDouble;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueDouble;-><init>(D)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueDouble;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    .line 47
    check-cast p1, Lorg/h2/value/ValueDouble;

    .line 48
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    iget-wide v2, p1, Lorg/h2/value/ValueDouble;->value:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1
.end method

.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    .line 105
    check-cast p1, Lorg/h2/value/ValueDouble;

    .line 106
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    iget-wide p1, p1, Lorg/h2/value/ValueDouble;->value:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 5

    .line 70
    check-cast p1, Lorg/h2/value/ValueDouble;

    .line 71
    iget-wide v0, p1, Lorg/h2/value/ValueDouble;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 74
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    iget-wide v2, p1, Lorg/h2/value/ValueDouble;->value:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    .line 72
    invoke-virtual {p0}, Lorg/h2/value/ValueDouble;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 176
    instance-of v0, p1, Lorg/h2/value/ValueDouble;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    check-cast p1, Lorg/h2/value/ValueDouble;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/value/ValueDouble;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getDouble()D
    .locals 2

    .line 116
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2

    .line 142
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x11

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 5

    .line 88
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "POWER(0, -1)"

    return-object v0

    .line 90
    :cond_0
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "(-POWER(0, -1))"

    return-object v0

    .line 92
    :cond_1
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SQRT(-1)"

    return-object v0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lorg/h2/value/ValueDouble;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSignum()I
    .locals 5

    .line 111
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 121
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 136
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/h2/value/ValueDouble;->modulus(Lorg/h2/value/Value;)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/ValueDouble;
    .locals 5

    .line 79
    check-cast p1, Lorg/h2/value/ValueDouble;

    .line 80
    iget-wide v0, p1, Lorg/h2/value/ValueDouble;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 83
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    iget-wide v2, p1, Lorg/h2/value/ValueDouble;->value:D

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    .line 81
    invoke-virtual {p0}, Lorg/h2/value/ValueDouble;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    .line 64
    check-cast p1, Lorg/h2/value/ValueDouble;

    .line 65
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    iget-wide v2, p1, Lorg/h2/value/ValueDouble;->value:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 148
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    invoke-interface {p1, p2, v0, v1}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    .line 53
    check-cast p1, Lorg/h2/value/ValueDouble;

    .line 54
    iget-wide v0, p0, Lorg/h2/value/ValueDouble;->value:D

    iget-wide v2, p1, Lorg/h2/value/ValueDouble;->value:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1
.end method
