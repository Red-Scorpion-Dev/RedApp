.class Lorg/h2/util/ToDateTokenizer;
.super Ljava/lang/Object;
.source "ToDateTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;,
        Lorg/h2/util/ToDateTokenizer$TimeParslet;,
        Lorg/h2/util/ToDateTokenizer$DayParslet;,
        Lorg/h2/util/ToDateTokenizer$MonthParslet;,
        Lorg/h2/util/ToDateTokenizer$YearParslet;,
        Lorg/h2/util/ToDateTokenizer$ToDateParslet;
    }
.end annotation


# static fields
.field static final MILLIS_IN_HOUR:I = 0x36ee80

.field static final PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

.field static final PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

.field static final PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

.field static final PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

.field static final PATTERN_AM_PM:Ljava/util/regex/Pattern;

.field static final PATTERN_BC_AD:Ljava/util/regex/Pattern;

.field static final PATTERN_FF:Ljava/util/regex/Pattern;

.field static final PATTERN_FOUR_DIGITS:Ljava/util/regex/Pattern;

.field static final PATTERN_NUMBER:Ljava/util/regex/Pattern;

.field static final PATTERN_ONE_DIGIT:Ljava/util/regex/Pattern;

.field static final PATTERN_THREE_DIGITS:Ljava/util/regex/Pattern;

.field static final PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

.field static final PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

.field static final PATTERN_TWO_TO_FOUR_DIGITS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^([+-]?[0-9]+)"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9]{4})"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_FOUR_DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9]{2,4})"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_TO_FOUR_DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9]{3})"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_THREE_DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9]{2})"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9][0-9]?)"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9])"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_ONE_DIGIT:Ljava/util/regex/Pattern;

    const-string v0, "^(FF[0-9]?)"

    const/4 v1, 0x2

    .line 71
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_FF:Ljava/util/regex/Pattern;

    const-string v0, "^(AM|A\\.M\\.|PM|P\\.M\\.)"

    .line 77
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_AM_PM:Ljava/util/regex/Pattern;

    const-string v0, "^(BC|B\\.C\\.|AD|A\\.D\\.)"

    .line 83
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_BC_AD:Ljava/util/regex/Pattern;

    .line 89
    new-instance v0, Lorg/h2/util/ToDateTokenizer$YearParslet;

    invoke-direct {v0}, Lorg/h2/util/ToDateTokenizer$YearParslet;-><init>()V

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    .line 94
    new-instance v0, Lorg/h2/util/ToDateTokenizer$MonthParslet;

    invoke-direct {v0}, Lorg/h2/util/ToDateTokenizer$MonthParslet;-><init>()V

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

    .line 99
    new-instance v0, Lorg/h2/util/ToDateTokenizer$DayParslet;

    invoke-direct {v0}, Lorg/h2/util/ToDateTokenizer$DayParslet;-><init>()V

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    .line 104
    new-instance v0, Lorg/h2/util/ToDateTokenizer$TimeParslet;

    invoke-direct {v0}, Lorg/h2/util/ToDateTokenizer$TimeParslet;-><init>()V

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Lorg/h2/util/ToDateParser;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 484
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getInputStr()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 486
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Issue happened when parsing token \'%s\'"

    .line 487
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 489
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;
    .locals 5

    .line 503
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getInputStr()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, p2, p3, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p3

    .line 506
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 507
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 508
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 514
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "Tried to parse one of \'%s\' but failed (may be an internal error?)"

    const/4 p2, 0x1

    .line 515
    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    :cond_3
    return-object v2
.end method

.method static throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 529
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/util/ToDateParser;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, " %s. Details: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const p0, 0x15fc8

    invoke-static {p0, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method
