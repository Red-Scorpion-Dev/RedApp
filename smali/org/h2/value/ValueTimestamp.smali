.class public Lorg/h2/value/ValueTimestamp;
.super Lorg/h2/value/Value;
.source "ValueTimestamp.java"


# static fields
.field static final DEFAULT_SCALE:I = 0xa

.field static final DISPLAY_SIZE:I = 0x17

.field public static final PRECISION:I = 0x17


# instance fields
.field private final dateValue:J

.field private final timeNanos:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 52
    iput-wide p1, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    const-wide p1, 0x4e94914f0000L

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    .line 56
    iput-wide p3, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timeNanos out of range "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;
    .locals 1

    .line 68
    new-instance v0, Lorg/h2/value/ValueTimestamp;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/h2/value/ValueTimestamp;-><init>(JJ)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTimestamp;

    return-object p0
.end method

.method public static fromMillis(J)Lorg/h2/value/ValueTimestamp;
    .locals 2

    .line 105
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v0

    .line 106
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide p0

    .line 107
    invoke-static {v0, v1, p0, p1}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0
.end method

.method public static fromMillisNanos(JI)Lorg/h2/value/ValueTimestamp;
    .locals 4

    .line 93
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v0

    int-to-long v2, p2

    .line 94
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide p0

    add-long/2addr v2, p0

    .line 95
    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;
    .locals 6

    .line 78
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 79
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    const v2, 0xf4240

    rem-int/2addr p0, v2

    int-to-long v2, p0

    .line 80
    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v4

    .line 81
    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 82
    invoke-static {v4, v5, v2, v3}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;
    .locals 5

    .line 120
    :try_start_0
    invoke-static {p0}, Lorg/h2/value/ValueTimestamp;->parseTry(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x55f7

    const/4 v2, 0x2

    .line 122
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TIMESTAMP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static parseTry(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x20

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    const/16 v2, 0x54

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :cond_0
    if-gez v2, :cond_1

    .line 135
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    :goto_0
    const/4 v4, 0x0

    .line 140
    invoke-static {v0, v4, v2}, Lorg/h2/util/DateTimeUtils;->parseDateValue(Ljava/lang/String;II)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    if-gez v3, :cond_2

    goto/16 :goto_3

    .line 145
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x0

    const-string v9, "Z"

    .line 147
    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v1, "UTC"

    .line 148
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_3
    const/16 v9, 0x2b

    .line 151
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-gez v9, :cond_4

    const/16 v9, 0x2d

    .line 153
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    :cond_4
    if-ltz v9, :cond_6

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 158
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v9

    goto :goto_1

    .line 159
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v9, v2, 0x1

    .line 164
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_8

    add-int/lit8 v3, v1, 0x1

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 168
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v3, v1

    goto :goto_1

    .line 169
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 175
    invoke-static {v0, v2, v3, v1}, Lorg/h2/util/DateTimeUtils;->parseTimeNanos(Ljava/lang/String;IIZ)J

    move-result-wide v0

    if-eqz v8, :cond_a

    .line 177
    invoke-static {v4, v5}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v9

    .line 178
    invoke-static {v4, v5}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v10

    .line 179
    invoke-static {v4, v5}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result v11

    const-wide/32 v2, 0xf4240

    .line 180
    div-long v4, v0, v2

    mul-long v12, v4, v2

    sub-long/2addr v0, v12

    const-wide/16 v12, 0x3e8

    .line 182
    div-long v14, v4, v12

    mul-long v12, v12, v14

    sub-long/2addr v4, v12

    const-wide/16 v12, 0x3c

    .line 184
    div-long v12, v14, v12

    long-to-int v12, v12

    mul-int/lit8 v13, v12, 0x3c

    int-to-long v2, v13

    sub-long/2addr v14, v2

    .line 186
    div-int/lit8 v2, v12, 0x3c

    mul-int/lit8 v3, v2, 0x3c

    sub-int v13, v12, v3

    long-to-int v14, v14

    long-to-int v15, v4

    move v12, v2

    .line 188
    invoke-static/range {v8 .. v15}, Lorg/h2/util/DateTimeUtils;->getMillis(Ljava/util/TimeZone;IIIIIII)J

    move-result-wide v2

    .line 190
    new-instance v4, Ljava/sql/Date;

    invoke-direct {v4, v2, v3}, Ljava/sql/Date;-><init>(J)V

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/h2/util/DateTimeUtils;->convertToLocal(Ljava/util/Date;Ljava/util/Calendar;)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v8, v2, v6

    if-ltz v8, :cond_9

    move-wide v6, v2

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    sub-long v6, v2, v4

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 194
    :goto_2
    div-long/2addr v6, v4

    .line 195
    invoke-static {v6, v7}, Lorg/h2/util/DateTimeUtils;->dateValueFromAbsoluteDay(J)J

    move-result-wide v8

    mul-long v6, v6, v4

    sub-long/2addr v2, v6

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    add-long v6, v0, v2

    move-wide v4, v8

    goto :goto_3

    :cond_a
    move-wide v6, v0

    .line 200
    :goto_3
    invoke-static {v4, v5, v6, v7}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 6

    const/16 v0, 0xb

    .line 320
    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTimestamp;

    .line 321
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->absoluteDayFromDateValue(J)J

    move-result-wide v0

    .line 322
    iget-wide v2, p1, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v2, v3}, Lorg/h2/util/DateTimeUtils;->absoluteDayFromDateValue(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 323
    iget-wide v2, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    iget-wide v4, p1, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/DateTimeUtils;->normalizeTimestamp(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    return-object p1
.end method

.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 4

    .line 283
    check-cast p1, Lorg/h2/value/ValueTimestamp;

    .line 284
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    iget-wide v2, p1, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    .line 288
    :cond_0
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    iget-wide p1, p1, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

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

    .line 269
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    .line 270
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const/16 v2, 0x9

    .line 271
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 272
    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 273
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    return-object p0

    .line 278
    :cond_1
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    return-object p1

    .line 267
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

    .line 295
    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueTimestamp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 298
    :cond_1
    check-cast p1, Lorg/h2/value/ValueTimestamp;

    .line 299
    iget-wide v3, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestamp;->dateValue:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDateValue()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    return-wide v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

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

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getString()Ljava/lang/String;

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

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    iget-wide v1, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1, v2}, Lorg/h2/value/ValueDate;->appendDate(Ljava/lang/StringBuilder;J)V

    const/16 v1, 0x20

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    iget-wide v1, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueTime;->appendTime(Ljava/lang/StringBuilder;JZ)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeNanos()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 4

    .line 224
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    iget-wide v2, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/DateTimeUtils;->convertDateValueToTimestamp(JJ)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 304
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    iget-wide v2, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

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

    .line 315
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 6

    const/16 v0, 0xb

    .line 328
    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTimestamp;

    .line 329
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->absoluteDayFromDateValue(J)J

    move-result-wide v0

    .line 330
    iget-wide v2, p1, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v2, v3}, Lorg/h2/util/DateTimeUtils;->absoluteDayFromDateValue(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 331
    iget-wide v2, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    iget-wide v4, p1, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/DateTimeUtils;->normalizeTimestamp(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    return-object p1
.end method
