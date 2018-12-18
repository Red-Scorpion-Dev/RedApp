.class public Lorg/h2/value/ValueTimestampTimeZone;
.super Lorg/h2/value/Value;
.source "ValueTimestampTimeZone.java"


# static fields
.field static final DEFAULT_SCALE:I = 0xa

.field static final DISPLAY_SIZE:I = 0x1e

.field public static final PRECISION:I = 0x1e


# instance fields
.field private final dateValue:J

.field private final timeNanos:J

.field private final timeZoneOffsetMins:S


# direct methods
.method private constructor <init>(JJS)V
    .locals 3

    .line 59
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4e94914f0000L

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    const/16 v0, -0x2d0

    if-lt p5, v0, :cond_0

    const/16 v0, 0x2d0

    if-ge p5, v0, :cond_0

    .line 68
    iput-wide p1, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    .line 69
    iput-wide p3, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    .line 70
    iput-short p5, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "timeZoneOffsetMins out of range "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "timeNanos out of range "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static appendTimeZone(Ljava/lang/StringBuilder;S)V
    .locals 3

    if-gez p1, :cond_0

    const/16 v0, 0x2d

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int p1, p1

    int-to-short p1, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    .line 269
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    :goto_0
    div-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    sub-int/2addr p1, v1

    int-to-short p1, p1

    int-to-long v0, v0

    const/4 v2, 0x2

    .line 274
    invoke-static {p0, v2, v0, v1}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    if-eqz p1, :cond_1

    const/16 v0, 0x3a

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v0, p1

    .line 277
    invoke-static {p0, v2, v0, v1}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    :cond_1
    return-void
.end method

.method public static fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 7

    .line 84
    new-instance v6, Lorg/h2/value/ValueTimestampTimeZone;

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/h2/value/ValueTimestampTimeZone;-><init>(JJS)V

    invoke-static {v6}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTimestampTimeZone;

    return-object p0
.end method

.method public static fromMillis(JS)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 2

    .line 127
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v0

    .line 128
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide p0

    .line 129
    invoke-static {v0, v1, p0, p1, p2}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static fromMillisNanos(JIS)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 4

    .line 113
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v0

    int-to-long v2, p2

    .line 114
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide p0

    add-long/2addr v2, p0

    .line 115
    invoke-static {v0, v1, v2, v3, p3}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lorg/h2/api/TimestampWithTimeZone;)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 6

    .line 95
    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getTime()J

    move-result-wide v0

    .line 96
    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getNanos()I

    move-result v2

    const v3, 0xf4240

    rem-int/2addr v2, v3

    int-to-long v2, v2

    .line 97
    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v4

    .line 98
    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 99
    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getTimeZoneOffsetMins()S

    move-result p0

    invoke-static {v4, v5, v2, v3, p0}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 5

    .line 142
    :try_start_0
    invoke-static {p0}, Lorg/h2/value/ValueTimestampTimeZone;->parseTry(Ljava/lang/String;)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x55f7

    const/4 v2, 0x2

    .line 144
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TIMESTAMP WITH TIMEZONE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static parseTry(Ljava/lang/String;)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 10

    const/16 v0, 0x20

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/16 v1, 0x54

    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_0
    const/4 v2, -0x1

    if-gez v1, :cond_1

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_0
    const/4 v4, 0x0

    .line 162
    invoke-static {p0, v4, v1}, Lorg/h2/util/DateTimeUtils;->parseDateValue(Ljava/lang/String;II)J

    move-result-wide v5

    if-gez v3, :cond_2

    const-wide/16 v0, 0x0

    goto/16 :goto_3

    .line 168
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v7, "Z"

    .line 169
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/2addr v3, v2

    goto/16 :goto_2

    :cond_3
    const/16 v2, 0x2b

    .line 172
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_4

    const/16 v2, 0x2d

    .line 174
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    :cond_4
    const/4 v7, 0x0

    if-ltz v2, :cond_6

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 180
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_1

    .line 181
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    add-int/lit8 v2, v1, 0x1

    .line 186
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_8

    add-int/lit8 v2, v0, 0x1

    .line 188
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 190
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v0

    goto :goto_1

    .line 191
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    if-eqz v7, :cond_9

    .line 197
    invoke-static {v5, v6}, Lorg/h2/util/DateTimeUtils;->convertDateValueToDate(J)Ljava/sql/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Date;->getTime()J

    move-result-wide v8

    .line 198
    invoke-virtual {v7, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    int-to-short v0, v0

    move v4, v0

    :cond_9
    :goto_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 201
    invoke-static {p0, v1, v3, v0}, Lorg/h2/util/DateTimeUtils;->parseTimeNanos(Ljava/lang/String;IIZ)J

    move-result-wide v0

    .line 203
    :goto_3
    invoke-static {v5, v6, v0, v1, v4}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "manipulating TIMESTAMP WITH TIMEZONE values is unsupported"

    .line 366
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 4

    .line 323
    check-cast p1, Lorg/h2/value/ValueTimestampTimeZone;

    .line 324
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    iget-wide v2, p1, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    .line 328
    :cond_0
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    iget-wide v2, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p2

    if-eqz p2, :cond_1

    return p2

    .line 332
    :cond_1
    iget-short p2, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    iget-short p1, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    invoke-static {p2, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1
.end method

.method public convertScale(ZI)Lorg/h2/value/Value;
    .locals 3

    const/16 p1, 0xa

    if-lt p2, p1, :cond_0

    return-object p0

    :cond_0
    if-ltz p2, :cond_2

    .line 309
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    .line 310
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const/16 v2, 0x9

    .line 311
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 312
    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 313
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    return-object p0

    .line 318
    :cond_1
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    iget-short v2, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    invoke-static {v0, v1, p1, p2, v2}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p1

    return-object p1

    .line 307
    :cond_2
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

    .line 339
    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueTimestampTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 342
    :cond_1
    check-cast p1, Lorg/h2/value/ValueTimestampTimeZone;

    .line 343
    iget-wide v3, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-short v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    iget-short p1, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDateValue()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    return-wide v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 355
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x1e

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP WITH TIMEZONE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getString()Ljava/lang/String;

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
    .locals 4

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    iget-wide v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    invoke-static {v0, v1, v2}, Lorg/h2/value/ValueDate;->appendDate(Ljava/lang/StringBuilder;J)V

    const/16 v1, 0x20

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    iget-wide v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueTime;->appendTime(Ljava/lang/StringBuilder;JZ)V

    .line 254
    iget-short v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    invoke-static {v0, v1}, Lorg/h2/value/ValueTimestampTimeZone;->appendTimeZone(Ljava/lang/StringBuilder;S)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeNanos()J
    .locals 2

    .line 223
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    return-wide v0
.end method

.method public getTimeZoneOffsetMins()S
    .locals 1

    .line 232
    iget-short v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    return v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 5

    .line 237
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    iget-wide v2, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/DateTimeUtils;->convertDateValueToTimestamp(JJ)Ljava/sql/Timestamp;

    move-result-object v0

    .line 239
    new-instance v1, Lorg/h2/api/TimestampWithTimeZone;

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeZoneOffsetMins()S

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/h2/api/TimestampWithTimeZone;-><init>(JIS)V

    return-object v1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 349
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    iget-wide v2, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-short v2, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    int-to-long v2, v2

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

    .line 361
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "manipulating TIMESTAMP WITH TIMEZONE values is unsupported"

    .line 373
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
