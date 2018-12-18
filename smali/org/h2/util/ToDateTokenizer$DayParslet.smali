.class Lorg/h2/util/ToDateTokenizer$DayParslet;
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
    name = "DayParslet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V
    .locals 7

    .line 309
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 312
    sget-object v1, Lorg/h2/util/ToDateTokenizer$1;->$SwitchMap$org$h2$util$ToDateTokenizer$FormatTokenEnum:[I

    invoke-virtual {p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    .line 351
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v4

    aput-object p2, p3, v6

    const-string p2, "%s: Internal Error. Unhandled case: %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :pswitch_0
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 343
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "Myydd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to parse Julian date: %s"

    .line 346
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-static {v0, p1, v2, v6}, Lorg/h2/util/ToDateTokenizer;->setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-static {v0, p1, v2, v5}, Lorg/h2/util/ToDateTokenizer;->setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 326
    :pswitch_3
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_ONE_DIGIT:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 329
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 320
    :pswitch_4
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 322
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 323
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 314
    :pswitch_5
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 316
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    .line 317
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 355
    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/h2/util/ToDateParser;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
