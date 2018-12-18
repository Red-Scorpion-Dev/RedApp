.class public final Lorg/h2/value/ValueTimestampUtc;
.super Lorg/h2/value/Value;
.source "ValueTimestampUtc.java"


# static fields
.field static final DEFAULT_SCALE:I = 0xa

.field static final DISPLAY_SIZE:I = 0x1b

.field public static final PRECISION:I = 0x17


# instance fields
.field private final utcDateTimeNanos:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 45
    iput-wide p1, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    return-void
.end method

.method public static fromMillis(J)Lorg/h2/value/ValueTimestampUtc;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p1, v0}, Lorg/h2/value/ValueTimestampUtc;->fromMillisNanos(JI)Lorg/h2/value/ValueTimestampUtc;

    move-result-object p0

    return-object p0
.end method

.method public static fromMillisNanos(JI)Lorg/h2/value/ValueTimestampUtc;
    .locals 3

    if-ltz p2, :cond_0

    const v0, 0xf4240

    if-ge p2, v0, :cond_0

    .line 59
    new-instance v0, Lorg/h2/value/ValueTimestampUtc;

    const-wide/16 v1, 0x3e8

    mul-long p0, p0, v1

    mul-long p0, p0, v1

    int-to-long v1, p2

    add-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueTimestampUtc;-><init>(J)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTimestampUtc;

    return-object p0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nanos out of range "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromNanos(J)Lorg/h2/value/ValueTimestampUtc;
    .locals 1

    .line 80
    new-instance v0, Lorg/h2/value/ValueTimestampUtc;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueTimestampUtc;-><init>(J)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTimestampUtc;

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestampUtc;
    .locals 2

    .line 92
    invoke-static {p0}, Lorg/h2/value/ValueTimestamp;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/h2/value/ValueTimestampUtc;->fromMillisNanos(JI)Lorg/h2/value/ValueTimestampUtc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    const/16 v0, 0x17

    .line 255
    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTimestampUtc;

    .line 256
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    iget-wide v2, p1, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    add-long/2addr v0, v2

    .line 257
    new-instance p1, Lorg/h2/value/ValueTimestampUtc;

    invoke-direct {p1, v0, v1}, Lorg/h2/value/ValueTimestampUtc;-><init>(J)V

    return-object p1
.end method

.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    .line 218
    check-cast p1, Lorg/h2/value/ValueTimestampUtc;

    .line 219
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    iget-wide p1, p1, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public convertScale(ZI)Lorg/h2/value/Value;
    .locals 0

    const/16 p1, 0xa

    if-lt p2, p1, :cond_0

    return-object p0

    :cond_0
    if-ltz p2, :cond_1

    return-object p0

    .line 201
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "scale"

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 226
    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueTimestampUtc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 229
    :cond_1
    check-cast p1, Lorg/h2/value/ValueTimestampUtc;

    .line 230
    iget-wide v3, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public getLong()J
    .locals 2

    .line 245
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    return-wide v0
.end method

.method getNanosSinceLastMillis()I
    .locals 4

    .line 123
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampUtc;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x17

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP UTC \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampUtc;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 10

    .line 140
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 141
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampUtc;->getUtcDateTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    .line 145
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 146
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 147
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lez v3, :cond_0

    const/16 v7, 0x2710

    if-ge v3, v7, :cond_0

    const/4 v7, 0x4

    int-to-long v8, v3

    .line 149
    invoke-static {v1, v7, v8, v9}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v3, 0x2d

    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v7, v5

    .line 154
    invoke-static {v1, v4, v7, v8}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v5, v6

    .line 156
    invoke-static {v1, v4, v5, v6}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    const/16 v3, 0x20

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 161
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x18

    mul-long v3, v3, v5

    const/16 v5, 0xc

    .line 163
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    mul-long v3, v3, v5

    const/16 v7, 0xd

    .line 165
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    mul-long v3, v3, v5

    const/16 v5, 0xe

    .line 167
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    .line 169
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampUtc;->getNanosSinceLastMillis()I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 170
    invoke-static {v1, v3, v4, v2}, Lorg/h2/value/ValueTime;->appendTime(Ljava/lang/StringBuilder;JZ)V

    const-string v0, " UTC"

    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 3

    .line 128
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampUtc;->getUtcDateTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 129
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampUtc;->getNanosSinceLastMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public getUtcDateTimeMillis()J
    .locals 4

    .line 114
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getUtcDateTimeNanos()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 235
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    iget-wide v2, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

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

    .line 250
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampUtc;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    const/16 v0, 0x17

    .line 262
    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTimestampUtc;

    .line 263
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    iget-wide v2, p1, Lorg/h2/value/ValueTimestampUtc;->utcDateTimeNanos:J

    sub-long/2addr v0, v2

    .line 264
    new-instance p1, Lorg/h2/value/ValueTimestampUtc;

    invoke-direct {p1, v0, v1}, Lorg/h2/value/ValueTimestampUtc;-><init>(J)V

    return-object p1
.end method
