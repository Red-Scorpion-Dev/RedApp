.class Lorg/h2/util/ToDateTokenizer$TimeParslet;
.super Ljava/lang/Object;
.source "ToDateTokenizer.java"

# interfaces
.implements Lorg/h2/util/ToDateTokenizer$ToDateParslet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/ToDateTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeParslet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V
    .locals 10

    .line 367
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 370
    sget-object v1, Lorg/h2/util/ToDateTokenizer$1;->$SwitchMap$org$h2$util$ToDateTokenizer$FormatTokenEnum:[I

    invoke-virtual {p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0x9

    const v6, 0x36ee80

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    .line 467
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v8

    aput-object p2, p3, v7

    const-string p2, "%s: Internal Error. Unhandled case: %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string v0, "token \'%s\' not supported yet."

    .line 463
    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 447
    :pswitch_1
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getInputStr()Ljava/lang/String;

    move-result-object p2

    .line 448
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 449
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 450
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 451
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v6, :cond_0

    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    invoke-virtual {v1, v5}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v9, v5

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 435
    :pswitch_2
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    .line 437
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 438
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 441
    rem-int/2addr v2, v6

    mul-int p2, p2, v6

    add-int/2addr p2, v2

    .line 442
    invoke-virtual {v1, p2}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 443
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_1

    .line 424
    :pswitch_3
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    .line 426
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 427
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 430
    div-int/2addr v2, v6

    mul-int v2, v2, v6

    add-int/2addr v2, p2

    .line 431
    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 432
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_1

    .line 415
    :pswitch_4
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_AM_PM:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    .line 417
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v1, "A"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 418
    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 420
    :cond_1
    invoke-virtual {v0, v5, v7}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 405
    :pswitch_5
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    const-string p2, "%-9s"

    .line 407
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 408
    invoke-virtual {p2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 409
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 410
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/h2/util/ToDateParser;->setNanos(I)V

    .line 411
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int p2, v1

    const/16 v1, 0xe

    .line 412
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 397
    :pswitch_6
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    .line 399
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 400
    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 401
    invoke-virtual {v0, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 402
    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 391
    :pswitch_7
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    .line 393
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 394
    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 385
    :pswitch_8
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    .line 387
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 388
    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 379
    :pswitch_9
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    .line 381
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v1, 0xa

    .line 382
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 372
    :pswitch_a
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    .line 374
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 375
    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 471
    :cond_2
    :goto_1
    invoke-virtual {p1, v9, p3}, Lorg/h2/util/ToDateParser;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
