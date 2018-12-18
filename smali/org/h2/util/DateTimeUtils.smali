.class public Lorg/h2/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field private static final CACHED_CALENDAR:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHED_CALENDAR_NON_DEFAULT_TIMEZONE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAYS_OFFSET:[I

.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field private static final NORMAL_DAYS_PER_MONTH:[I

.field private static final SHIFT_MONTH:I = 0x5

.field private static final SHIFT_YEAR:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xd

    .line 45
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/h2/util/DateTimeUtils;->NORMAL_DAYS_PER_MONTH:[I

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/h2/util/DateTimeUtils;->DAYS_OFFSET:[I

    .line 62
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/h2/util/DateTimeUtils;->CACHED_CALENDAR:Ljava/lang/ThreadLocal;

    .line 68
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/h2/util/DateTimeUtils;->CACHED_CALENDAR_NON_DEFAULT_TIMEZONE:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3d
        0x5c
        0x7a
        0x99
        0xb8
        0xd6
        0xf5
        0x113
        0x132
        0x151
        0x16e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absoluteDayFromDateValue(J)J
    .locals 7

    .line 859
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v0

    int-to-long v0, v0

    .line 860
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v2

    .line 861
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result p0

    const/4 p1, 0x2

    if-gt v2, p1, :cond_0

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    add-int/lit8 v2, v2, 0xc

    :cond_0
    const-wide/16 v3, 0xb6a

    mul-long v3, v3, v0

    const/4 p1, 0x3

    shr-long/2addr v3, p1

    .line 866
    sget-object p1, Lorg/h2/util/DateTimeUtils;->DAYS_OFFSET:[I

    add-int/lit8 v5, v2, -0x3

    aget p1, p1, v5

    int-to-long v5, p1

    add-long/2addr v3, v5

    int-to-long v5, p0

    add-long/2addr v3, v5

    const-wide/32 v5, 0xafa7c

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x62e

    cmp-long p1, v0, v5

    if-gtz p1, :cond_2

    cmp-long p1, v0, v5

    if-ltz p1, :cond_1

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, p0

    const/16 p0, 0x3ed

    if-ge v2, p0, :cond_2

    :cond_1
    const-wide/16 p0, 0xd

    add-long/2addr v3, p0

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0x76d

    cmp-long v2, v0, p0

    if-ltz v2, :cond_3

    const-wide/16 p0, 0x833

    cmp-long v2, v0, p0

    if-lez v2, :cond_4

    :cond_3
    const-wide/16 p0, 0x190

    .line 872
    div-long p0, v0, p0

    const-wide/16 v5, 0x64

    div-long/2addr v0, v5

    sub-long/2addr p0, v0

    const-wide/16 v0, 0xf

    add-long/2addr p0, v0

    add-long/2addr v3, p0

    :cond_4
    :goto_0
    return-wide v3
.end method

.method public static addMonths(Ljava/sql/Timestamp;I)Ljava/sql/Timestamp;
    .locals 2

    .line 929
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 930
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    .line 931
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 933
    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 934
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object p1
.end method

.method public static convertDate(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 8

    .line 122
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0xa

    .line 125
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueDate;

    .line 126
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 127
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 129
    invoke-virtual {p0}, Lorg/h2/value/ValueDate;->getDateValue()J

    move-result-wide v0

    .line 130
    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result p0

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v2

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move v1, p0

    invoke-static/range {v0 .. v7}, Lorg/h2/util/DateTimeUtils;->setCalendarFields(Ljava/util/Calendar;IIIIIII)V

    .line 134
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 135
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public static convertDate(Ljava/sql/Date;Ljava/util/Calendar;)Lorg/h2/value/ValueDate;
    .locals 2

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 215
    invoke-virtual {p0}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromCalendar(Ljava/util/Calendar;)J

    move-result-wide p0

    .line 217
    invoke-static {p0, p1}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "calendar"

    .line 212
    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static convertDateValueToDate(J)Ljava/sql/Date;
    .locals 8

    .line 679
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v1

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v2

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/h2/util/DateTimeUtils;->getMillis(Ljava/util/TimeZone;IIIIIII)J

    move-result-wide p0

    .line 683
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public static convertDateValueToTimestamp(JJ)Ljava/sql/Timestamp;
    .locals 22

    const-wide/32 v2, 0xf4240

    .line 696
    div-long v4, p2, v2

    mul-long v6, v4, v2

    sub-long v0, p2, v6

    const-wide/16 v6, 0x3e8

    .line 698
    div-long v8, v4, v6

    mul-long v6, v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    .line 700
    div-long v10, v8, v6

    mul-long v12, v10, v6

    sub-long/2addr v8, v12

    .line 702
    div-long v12, v10, v6

    mul-long v6, v6, v12

    sub-long/2addr v10, v6

    .line 704
    invoke-static/range {p0 .. p1}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v15

    invoke-static/range {p0 .. p1}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v16

    invoke-static/range {p0 .. p1}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result v17

    long-to-int v6, v12

    long-to-int v7, v10

    long-to-int v8, v8

    const/4 v14, 0x0

    const/16 v21, 0x0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-static/range {v14 .. v21}, Lorg/h2/util/DateTimeUtils;->getMillis(Ljava/util/TimeZone;IIIIIII)J

    move-result-wide v6

    .line 709
    new-instance v8, Ljava/sql/Timestamp;

    invoke-direct {v8, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    long-to-int v0, v0

    .line 710
    invoke-virtual {v8, v0}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object v8
.end method

.method public static convertNanoToTime(J)Ljava/sql/Time;
    .locals 18

    const-wide/32 v0, 0xf4240

    .line 722
    div-long v0, p0, v0

    const-wide/16 v2, 0x3e8

    .line 723
    div-long v4, v0, v2

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    .line 725
    div-long v6, v4, v2

    mul-long v8, v6, v2

    sub-long/2addr v4, v8

    .line 727
    div-long v8, v6, v2

    mul-long v2, v2, v8

    sub-long/2addr v6, v2

    const-wide/16 v2, 0x18

    .line 729
    rem-long/2addr v8, v2

    long-to-int v14, v8

    long-to-int v15, v6

    long-to-int v2, v4

    long-to-int v0, v0

    const/4 v10, 0x0

    const/16 v11, 0x7b2

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v16, v2

    move/from16 v17, v0

    invoke-static/range {v10 .. v17}, Lorg/h2/util/DateTimeUtils;->getMillis(Ljava/util/TimeZone;IIIIIII)J

    move-result-wide v0

    .line 731
    new-instance v2, Ljava/sql/Time;

    invoke-direct {v2, v0, v1}, Ljava/sql/Time;-><init>(J)V

    return-object v2
.end method

.method public static convertTime(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 10

    .line 146
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x9

    .line 149
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTime;

    .line 150
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 151
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 153
    invoke-virtual {p0}, Lorg/h2/value/ValueTime;->getNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    .line 154
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 156
    div-long v4, v0, v2

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    .line 158
    div-long v6, v4, v2

    mul-long v8, v6, v2

    sub-long/2addr v4, v8

    .line 160
    div-long v8, v6, v2

    mul-long v2, v2, v8

    sub-long/2addr v6, v2

    const/16 p0, 0x7b2

    const/4 v2, 0x1

    const/4 v3, 0x1

    long-to-int v8, v8

    long-to-int v6, v6

    long-to-int v7, v4

    long-to-int v9, v0

    move-object v0, p1

    move v1, p0

    move v4, v8

    move v5, v6

    move v6, v7

    move v7, v9

    .line 162
    invoke-static/range {v0 .. v7}, Lorg/h2/util/DateTimeUtils;->setCalendarFields(Ljava/util/Calendar;IIIIIII)V

    .line 164
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 165
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p0, p1}, Ljava/sql/Time;-><init>(J)V

    return-object v0
.end method

.method public static convertTime(Ljava/sql/Time;Ljava/util/Calendar;)Lorg/h2/value/ValueTime;
    .locals 2

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 232
    invoke-virtual {p0}, Ljava/sql/Time;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 233
    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->nanosFromCalendar(Ljava/util/Calendar;)J

    move-result-wide p0

    .line 234
    invoke-static {p0, p1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "calendar"

    .line 229
    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertTime(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    .line 260
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 261
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 262
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 263
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 264
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 265
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public static convertTimestamp(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 18

    move-object/from16 v0, p0

    .line 176
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0xb

    .line 179
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueTimestamp;

    .line 180
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 181
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x1

    .line 182
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 183
    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getDateValue()J

    move-result-wide v2

    .line 184
    invoke-virtual {v0}, Lorg/h2/value/ValueTimestamp;->getTimeNanos()J

    move-result-wide v4

    const-wide/32 v10, 0xf4240

    .line 185
    div-long v6, v4, v10

    mul-long v8, v6, v10

    sub-long v12, v4, v8

    const-wide/16 v4, 0x3e8

    .line 187
    div-long v8, v6, v4

    mul-long v4, v4, v8

    sub-long v14, v6, v4

    const-wide/16 v4, 0x3c

    .line 189
    div-long v6, v8, v4

    mul-long v16, v6, v4

    sub-long v8, v8, v16

    .line 191
    div-long v10, v6, v4

    mul-long v4, v4, v10

    sub-long/2addr v6, v4

    .line 193
    invoke-static {v2, v3}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v0

    invoke-static {v2, v3}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v4

    invoke-static {v2, v3}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result v5

    long-to-int v10, v10

    long-to-int v7, v6

    long-to-int v8, v8

    long-to-int v9, v14

    move-object v2, v1

    move v3, v0

    move v6, v10

    invoke-static/range {v2 .. v9}, Lorg/h2/util/DateTimeUtils;->setCalendarFields(Ljava/util/Calendar;IIIIIII)V

    .line 197
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 198
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    const-wide/32 v0, 0xf4240

    mul-long v14, v14, v0

    add-long/2addr v12, v14

    long-to-int v0, v12

    .line 199
    invoke-virtual {v2, v0}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object v2
.end method

.method public static convertTimestamp(Ljava/sql/Timestamp;Ljava/util/Calendar;)Lorg/h2/value/ValueTimestamp;
    .locals 4

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 280
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 281
    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromCalendar(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 282
    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->nanosFromCalendar(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 283
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    const p1, 0xf4240

    rem-int/2addr p0, p1

    int-to-long p0, p0

    add-long/2addr v2, p0

    .line 284
    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "calendar"

    .line 277
    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static convertToLocal(Ljava/util/Date;Ljava/util/Calendar;)J
    .locals 1

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 250
    monitor-enter v0

    .line 251
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 252
    invoke-static {v0, p1}, Lorg/h2/util/DateTimeUtils;->convertTime(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 253
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "calendar"

    .line 246
    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static dateValue(JII)J
    .locals 2

    const/16 v0, 0x9

    shl-long/2addr p0, v0

    shl-int/lit8 p2, p2, 0x5

    int-to-long v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static dateValueFromAbsoluteDay(J)J
    .locals 19

    const-wide/32 v0, 0xafa6c

    add-long v0, p0, v0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x8d1f8

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const-wide/32 v4, 0x23ab1

    .line 888
    div-long v6, v0, v4

    mul-long v4, v4, v6

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x8eac

    .line 890
    div-long v8, v0, v4

    mul-long v4, v4, v8

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x190

    mul-long v6, v6, v4

    const-wide/16 v4, 0x64

    mul-long v4, v4, v8

    add-long/2addr v6, v4

    goto :goto_0

    :cond_0
    const-wide v4, 0x44087a2a02L

    add-long/2addr v0, v4

    const-wide/32 v6, -0x2faf0800

    move-wide v8, v2

    :goto_0
    const-wide/16 v4, 0x5b5

    .line 898
    div-long v10, v0, v4

    mul-long v4, v4, v10

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x16d

    .line 900
    div-long v12, v0, v4

    mul-long v14, v12, v4

    sub-long/2addr v0, v14

    const-wide/16 v14, 0x1

    const-wide/16 v16, 0x4

    cmp-long v18, v0, v2

    if-nez v18, :cond_2

    cmp-long v2, v12, v16

    if-eqz v2, :cond_1

    cmp-long v2, v8, v16

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    sub-long/2addr v12, v14

    add-long/2addr v0, v4

    :cond_2
    mul-long v10, v10, v16

    const/4 v2, 0x0

    add-long/2addr v6, v10

    add-long/2addr v12, v6

    long-to-int v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x5

    .line 908
    div-int/lit16 v2, v2, 0x132

    .line 909
    sget-object v3, Lorg/h2/util/DateTimeUtils;->DAYS_OFFSET:[I

    aget v3, v3, v2

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    sub-long/2addr v0, v3

    const/16 v3, 0xa

    if-lt v2, v3, :cond_3

    add-long/2addr v12, v14

    add-int/lit8 v2, v2, -0xc

    :cond_3
    add-int/lit8 v2, v2, 0x3

    long-to-int v0, v0

    .line 914
    invoke-static {v12, v13, v2, v0}, Lorg/h2/util/DateTimeUtils;->dateValue(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method private static dateValueFromCalendar(Ljava/util/Calendar;)J
    .locals 5

    .line 797
    invoke-static {p0}, Lorg/h2/util/DateTimeUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    const/4 v1, 0x2

    .line 798
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    .line 799
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v3, v0

    const/16 v0, 0x9

    shl-long/2addr v3, v0

    shl-int/lit8 v0, v1, 0x5

    int-to-long v0, v0

    or-long/2addr v0, v3

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static dateValueFromDate(J)J
    .locals 1

    .line 784
    invoke-static {}, Lorg/h2/util/DateTimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 785
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 786
    invoke-static {v0}, Lorg/h2/util/DateTimeUtils;->dateValueFromCalendar(Ljava/util/Calendar;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static dayFromDateValue(J)I
    .locals 2

    const-wide/16 v0, 0x1f

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static formatDateTime(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 590
    invoke-static {p1, p2, p3}, Lorg/h2/util/DateTimeUtils;->getDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    .line 591
    monitor-enter p1

    .line 592
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    .line 593
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getCalendar()Ljava/util/Calendar;
    .locals 2

    .line 89
    sget-object v0, Lorg/h2/util/DateTimeUtils;->CACHED_CALENDAR:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 92
    sget-object v1, Lorg/h2/util/DateTimeUtils;->CACHED_CALENDAR:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    return-object v0
.end method

.method private static getCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2

    .line 105
    sget-object v0, Lorg/h2/util/DateTimeUtils;->CACHED_CALENDAR_NON_DEFAULT_TIMEZONE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 108
    sget-object p0, Lorg/h2/util/DateTimeUtils;->CACHED_CALENDAR_NON_DEFAULT_TIMEZONE:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 110
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    return-object v0
.end method

.method private static getDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 5

    if-nez p1, :cond_0

    .line 625
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 627
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 628
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 631
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :goto_1
    const v1, 0x15f9e

    const/4 v2, 0x1

    .line 635
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getDatePart(Ljava/util/Date;I)I
    .locals 2

    .line 469
    invoke-static {}, Lorg/h2/util/DateTimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 472
    invoke-static {v0}, Lorg/h2/util/DateTimeUtils;->getYear(Ljava/util/Calendar;)I

    move-result p0

    return p0

    .line 474
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    add-int/2addr v0, p0

    return v0

    :cond_1
    return v0
.end method

.method public static getIsoDayOfWeek(Ljava/util/Date;)I
    .locals 3

    .line 527
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 528
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x7

    .line 529
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public static getIsoWeek(Ljava/util/Date;)I
    .locals 3

    .line 548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 549
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x2

    .line 550
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 p0, 0x4

    .line 551
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    const/4 p0, 0x3

    .line 552
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getIsoYear(Ljava/util/Date;)I
    .locals 3

    .line 564
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x2

    .line 566
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v1, 0x4

    .line 567
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 568
    invoke-static {v0}, Lorg/h2/util/DateTimeUtils;->getYear(Ljava/util/Calendar;)I

    move-result v1

    .line 569
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v2, 0x3

    .line 570
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez p0, :cond_0

    const/16 v2, 0x33

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    if-ne p0, v2, :cond_1

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static getMillis(Ljava/util/TimeZone;IIIIIII)J
    .locals 13

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    const/4 v1, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 394
    :try_start_0
    invoke-static/range {v1 .. v9}, Lorg/h2/util/DateTimeUtils;->getTimeTry(ZLjava/util/TimeZone;IIIIIII)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 398
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HOUR_OF_DAY"

    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    if-ltz v12, :cond_0

    const/16 v0, 0x17

    if-gt v12, v0, :cond_0

    const/4 v1, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 403
    invoke-static/range {v1 .. v9}, Lorg/h2/util/DateTimeUtils;->getTimeTry(ZLjava/util/TimeZone;IIIIIII)J

    move-result-wide v0

    return-wide v0

    .line 401
    :cond_0
    throw v1

    :cond_1
    const-string v2, "DAY_OF_MONTH"

    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne v10, v0, :cond_3

    .line 408
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    move v3, p1

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_1

    :cond_2
    const/16 v0, 0x1c

    goto :goto_1

    :cond_3
    move v3, p1

    const/4 v0, 0x7

    if-le v10, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v10

    and-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1e

    :goto_1
    if-lt v11, v2, :cond_5

    if-gt v11, v0, :cond_5

    add-int/lit8 v6, v12, 0x6

    const/4 v1, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 419
    invoke-static/range {v1 .. v9}, Lorg/h2/util/DateTimeUtils;->getTimeTry(ZLjava/util/TimeZone;IIIIIII)J

    move-result-wide v0

    return-wide v0

    .line 413
    :cond_5
    throw v1

    :cond_6
    move v3, p1

    const/4 v1, 0x1

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 422
    invoke-static/range {v1 .. v9}, Lorg/h2/util/DateTimeUtils;->getTimeTry(ZLjava/util/TimeZone;IIIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeLocalWithoutDst(Ljava/util/Date;)J
    .locals 5

    .line 503
    invoke-static {}, Lorg/h2/util/DateTimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 504
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/16 p0, 0xf

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private static getTimeTry(ZLjava/util/TimeZone;IIIIIII)J
    .locals 9

    if-nez p1, :cond_0

    .line 433
    invoke-static {}, Lorg/h2/util/DateTimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    :goto_0
    move-object v8, v0

    move v0, p0

    goto :goto_1

    .line 435
    :cond_0
    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 437
    :goto_1
    invoke-virtual {v8, p0}, Ljava/util/Calendar;->setLenient(Z)V

    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 438
    invoke-static/range {v0 .. v7}, Lorg/h2/util/DateTimeUtils;->setCalendarFields(Ljava/util/Calendar;IIIIIII)V

    .line 439
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeUTCWithoutDst(J)J
    .locals 2

    .line 515
    invoke-static {}, Lorg/h2/util/DateTimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private static getYear(Ljava/util/Calendar;)I
    .locals 3

    const/4 v0, 0x1

    .line 488
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    .line 489
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    rsub-int/lit8 v1, v1, 0x1

    :cond_0
    return v1
.end method

.method public static isValidDate(III)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_f

    const/16 v2, 0xc

    if-gt p1, v2, :cond_f

    if-ge p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x1d

    const/4 v3, 0x2

    const/16 v4, 0x62e

    const/16 v5, 0x1c

    if-le p0, v4, :cond_8

    if-eq p1, v3, :cond_2

    .line 655
    sget-object p0, Lorg/h2/util/DateTimeUtils;->NORMAL_DAYS_PER_MONTH:[I

    aget p0, p0, p1

    if-gt p2, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    and-int/lit8 p1, p0, 0x3

    if-eqz p1, :cond_4

    if-gt p2, v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 661
    :cond_4
    rem-int/lit8 p1, p0, 0x64

    if-nez p1, :cond_6

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x1c

    :cond_6
    :goto_0
    if-gt p2, v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    if-ne p0, v4, :cond_b

    const/16 v4, 0xa

    if-ne p1, v4, :cond_b

    const/16 p0, 0x1f

    if-gt p2, p0, :cond_a

    const/4 p0, 0x5

    if-lt p2, p0, :cond_9

    const/16 p0, 0xe

    if-le p2, p0, :cond_a

    :cond_9
    const/4 v0, 0x1

    :cond_a
    return v0

    :cond_b
    if-eq p1, v3, :cond_c

    .line 666
    sget-object v3, Lorg/h2/util/DateTimeUtils;->NORMAL_DAYS_PER_MONTH:[I

    aget p1, v3, p1

    if-gt p2, p1, :cond_c

    return v1

    :cond_c
    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_d

    const/16 v2, 0x1c

    :cond_d
    if-gt p2, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :cond_f
    :goto_1
    return v0
.end method

.method public static monthFromDateValue(J)I
    .locals 1

    const/4 v0, 0x5

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static nanosFromCalendar(Ljava/util/Calendar;)J
    .locals 7

    const/16 v0, 0xb

    .line 823
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    .line 824
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    .line 825
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    .line 826
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v3, v0

    const-wide/16 v5, 0x3c

    mul-long v3, v3, v5

    int-to-long v0, v1

    add-long/2addr v3, v0

    mul-long v3, v3, v5

    int-to-long v0, v2

    add-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    int-to-long v0, p0

    add-long/2addr v3, v0

    const-wide/32 v0, 0xf4240

    mul-long v3, v3, v0

    return-wide v3
.end method

.method public static nanosFromDate(J)J
    .locals 1

    .line 811
    invoke-static {}, Lorg/h2/util/DateTimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 812
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 813
    invoke-static {v0}, Lorg/h2/util/DateTimeUtils;->nanosFromCalendar(Ljava/util/Calendar;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static normalizeTimestamp(JJ)Lorg/h2/value/ValueTimestamp;
    .locals 6

    const-wide v0, 0x4e94914f0000L

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_2

    :cond_0
    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 841
    div-long v2, p2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sub-long v2, p2, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 843
    div-long/2addr v2, v0

    :goto_0
    mul-long v0, v0, v2

    const/4 v4, 0x0

    sub-long/2addr p2, v0

    add-long/2addr p0, v2

    .line 848
    :cond_2
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromAbsoluteDay(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0
.end method

.method public static parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 607
    invoke-static {p1, p2, p3}, Lorg/h2/util/DateTimeUtils;->getDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    .line 609
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 611
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const p2, 0x15f9e

    const/4 p3, 0x1

    .line 614
    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, p3, v0

    invoke-static {p2, p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static parseDateValue(Ljava/lang/String;II)J
    .locals 3

    .line 297
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 302
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 303
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v0, :cond_2

    if-le v1, v0, :cond_2

    .line 307
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 308
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 309
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 310
    invoke-static {p1, v0, p0}, Lorg/h2/util/DateTimeUtils;->isValidDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-long p1, p1

    .line 313
    invoke-static {p1, p2, v0, p0}, Lorg/h2/util/DateTimeUtils;->dateValue(JII)J

    move-result-wide p0

    return-wide p0

    .line 311
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 305
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseTimeNanos(Ljava/lang/String;IIZ)J
    .locals 8

    const/16 v0, 0x3a

    .line 332
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 333
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2e

    .line 334
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v1, :cond_0

    if-gt v0, v1, :cond_1

    .line 338
    :cond_0
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 339
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 340
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v1, :cond_9

    if-le v0, v1, :cond_9

    .line 347
    :cond_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez p1, :cond_3

    if-nez p3, :cond_2

    neg-int p1, p1

    const/4 v5, 0x1

    goto :goto_0

    .line 350
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v1, v4

    .line 357
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v2, :cond_4

    add-int/2addr v0, v4

    .line 359
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_4
    add-int/2addr v0, v4

    .line 361
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v2, v4

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "000000000"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x9

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 363
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-long v2, p2

    move p2, v0

    :goto_1
    const v0, 0x1e8480

    if-ge p1, v0, :cond_8

    if-ltz v1, :cond_8

    const/16 v0, 0x3c

    if-ge v1, v0, :cond_8

    if-ltz p2, :cond_8

    if-ge p2, v0, :cond_8

    if-eqz p3, :cond_6

    const/16 p3, 0x18

    if-ge p1, p3, :cond_5

    goto :goto_2

    .line 370
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    int-to-long p0, p1

    const-wide/16 v6, 0x3c

    mul-long p0, p0, v6

    int-to-long v0, v1

    add-long/2addr p0, v0

    mul-long p0, p0, v6

    int-to-long p2, p2

    add-long/2addr p0, p2

    const-wide/32 p2, 0x3b9aca00

    mul-long p0, p0, p2

    add-long/2addr v2, p0

    if-eqz v5, :cond_7

    neg-long v2, v2

    :cond_7
    return-wide v2

    .line 367
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static resetCalendar()V
    .locals 1

    .line 80
    sget-object v0, Lorg/h2/util/DateTimeUtils;->CACHED_CALENDAR:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private static setCalendarFields(Ljava/util/Calendar;IIIIIII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    .line 445
    invoke-virtual {p0, v0, v0}, Ljava/util/Calendar;->set(II)V

    rsub-int/lit8 p1, p1, 0x1

    .line 446
    invoke-virtual {p0, v1, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 449
    invoke-virtual {p0, v1, p1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/4 p1, 0x2

    sub-int/2addr p2, v1

    .line 452
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 453
    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 454
    invoke-virtual {p0, p1, p4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 455
    invoke-virtual {p0, p1, p5}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 456
    invoke-virtual {p0, p1, p6}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 457
    invoke-virtual {p0, p1, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public static yearFromDateValue(J)I
    .locals 1

    const/16 v0, 0x9

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
