.class public Lorg/h2/value/ValueUuid;
.super Lorg/h2/value/Value;
.source "ValueUuid.java"


# static fields
.field private static final DISPLAY_SIZE:I = 0x24

.field private static final PRECISION:I = 0x10


# instance fields
.field private final high:J

.field private final low:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/h2/value/ValueUuid;->high:J

    .line 38
    iput-wide p3, p0, Lorg/h2/value/ValueUuid;->low:J

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;JI)V
    .locals 2

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, -0x4

    :goto_0
    if-ltz p3, :cond_0

    shr-long v0, p1, p3

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p3, -0x4

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, -0x8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static get(JJ)Lorg/h2/value/ValueUuid;
    .locals 1

    .line 84
    new-instance v0, Lorg/h2/value/ValueUuid;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/h2/value/ValueUuid;-><init>(JJ)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueUuid;

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lorg/h2/value/ValueUuid;
    .locals 12

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    const/4 v11, 0x4

    if-lt v9, v10, :cond_0

    const/16 v10, 0x39

    if-gt v9, v10, :cond_0

    shl-long/2addr v6, v11

    add-int/lit8 v9, v9, -0x30

    int-to-long v9, v9

    or-long/2addr v6, v9

    goto :goto_1

    :cond_0
    const/16 v10, 0x61

    if-lt v9, v10, :cond_1

    const/16 v10, 0x66

    if-gt v9, v10, :cond_1

    shl-long/2addr v6, v11

    add-int/lit8 v9, v9, -0x61

    add-int/lit8 v9, v9, 0xa

    int-to-long v9, v9

    or-long/2addr v6, v9

    goto :goto_1

    :cond_1
    const/16 v10, 0x2d

    if-ne v9, v10, :cond_2

    goto :goto_2

    :cond_2
    const/16 v10, 0x41

    if-lt v9, v10, :cond_4

    const/16 v10, 0x46

    if-gt v9, v10, :cond_4

    shl-long/2addr v6, v11

    add-int/lit8 v9, v9, -0x41

    add-int/lit8 v9, v9, 0xa

    int-to-long v9, v9

    or-long/2addr v6, v9

    :goto_1
    add-int/lit8 v9, v8, 0x1

    const/16 v10, 0xf

    if-ne v8, v10, :cond_3

    move-wide v4, v6

    move v8, v9

    move-wide v6, v2

    goto :goto_2

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    const/16 v10, 0x20

    if-gt v9, v10, :cond_5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/16 v0, 0x5602

    .line 108
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 115
    :cond_6
    new-instance p0, Lorg/h2/value/ValueUuid;

    invoke-direct {p0, v4, v5, v6, v7}, Lorg/h2/value/ValueUuid;-><init>(JJ)V

    invoke-static {p0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueUuid;

    return-object p0
.end method

.method public static get([B)Lorg/h2/value/ValueUuid;
    .locals 4

    .line 68
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 69
    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/value/ValueUuid;->get(Ljava/lang/String;)Lorg/h2/value/ValueUuid;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 71
    invoke-static {p0, v0}, Lorg/h2/util/Utils;->readLong([BI)J

    move-result-wide v0

    const/16 v2, 0x8

    .line 72
    invoke-static {p0, v2}, Lorg/h2/util/Utils;->readLong([BI)J

    move-result-wide v2

    .line 73
    new-instance p0, Lorg/h2/value/ValueUuid;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/h2/value/ValueUuid;-><init>(JJ)V

    invoke-static {p0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueUuid;

    return-object p0
.end method

.method public static getNewRandom()Lorg/h2/value/ValueUuid;
    .locals 6

    .line 52
    invoke-static {}, Lorg/h2/util/MathUtils;->secureRandomLong()J

    move-result-wide v0

    .line 53
    invoke-static {}, Lorg/h2/util/MathUtils;->secureRandomLong()J

    move-result-wide v2

    const-wide/32 v4, -0xf001

    and-long/2addr v0, v4

    const-wide/16 v4, 0x4000

    or-long/2addr v0, v4

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v2, v4

    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    .line 58
    new-instance v4, Lorg/h2/value/ValueUuid;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/h2/value/ValueUuid;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 160
    :cond_0
    check-cast p1, Lorg/h2/value/ValueUuid;

    .line 161
    iget-wide v0, p0, Lorg/h2/value/ValueUuid;->high:J

    iget-wide v2, p1, Lorg/h2/value/ValueUuid;->high:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 162
    iget-wide v0, p0, Lorg/h2/value/ValueUuid;->low:J

    iget-wide p1, p1, Lorg/h2/value/ValueUuid;->low:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p1

    return p1

    .line 164
    :cond_1
    iget-wide v0, p0, Lorg/h2/value/ValueUuid;->high:J

    iget-wide p1, p1, Lorg/h2/value/ValueUuid;->high:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 169
    instance-of v0, p1, Lorg/h2/value/ValueUuid;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/value/Value;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/value/ValueUuid;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 8

    const/16 v0, 0x10

    .line 179
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 181
    iget-wide v3, p0, Lorg/h2/value/ValueUuid;->high:J

    rsub-int/lit8 v5, v1, 0x7

    mul-int/lit8 v5, v5, 0x8

    shr-long v2, v3, v5

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x8

    .line 182
    iget-wide v3, p0, Lorg/h2/value/ValueUuid;->low:J

    shr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public getHigh()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lorg/h2/value/ValueUuid;->high:J

    return-wide v0
.end method

.method public getLow()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lorg/h2/value/ValueUuid;->low:J

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 5

    .line 174
    new-instance v0, Ljava/util/UUID;

    iget-wide v1, p0, Lorg/h2/value/ValueUuid;->high:J

    iget-wide v3, p0, Lorg/h2/value/ValueUuid;->low:J

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x10

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lorg/h2/value/ValueUuid;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    iget-wide v1, p0, Lorg/h2/value/ValueUuid;->high:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueUuid;->appendHex(Ljava/lang/StringBuilder;JI)V

    const/16 v1, 0x2d

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    iget-wide v2, p0, Lorg/h2/value/ValueUuid;->high:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4}, Lorg/h2/value/ValueUuid;->appendHex(Ljava/lang/StringBuilder;JI)V

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    iget-wide v2, p0, Lorg/h2/value/ValueUuid;->high:J

    invoke-static {v0, v2, v3, v4}, Lorg/h2/value/ValueUuid;->appendHex(Ljava/lang/StringBuilder;JI)V

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    iget-wide v2, p0, Lorg/h2/value/ValueUuid;->low:J

    const/16 v5, 0x30

    shr-long/2addr v2, v5

    invoke-static {v0, v2, v3, v4}, Lorg/h2/value/ValueUuid;->appendHex(Ljava/lang/StringBuilder;JI)V

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    iget-wide v1, p0, Lorg/h2/value/ValueUuid;->low:J

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueUuid;->appendHex(Ljava/lang/StringBuilder;JI)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 43
    iget-wide v0, p0, Lorg/h2/value/ValueUuid;->high:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v3, p0, Lorg/h2/value/ValueUuid;->high:J

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lorg/h2/value/ValueUuid;->low:J

    ushr-long v2, v3, v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/value/ValueUuid;->low:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lorg/h2/value/ValueUuid;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    return-void
.end method
