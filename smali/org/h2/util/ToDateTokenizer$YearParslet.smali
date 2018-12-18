.class Lorg/h2/util/ToDateTokenizer$YearParslet;
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
    name = "YearParslet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V
    .locals 6

    .line 135
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 138
    sget-object v1, Lorg/h2/util/ToDateTokenizer$1;->$SwitchMap$org$h2$util$ToDateTokenizer$FormatTokenEnum:[I

    invoke-virtual {p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 232
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    aput-object p2, p3, v4

    const-string p2, "%s: Internal Error. Unhandled case: %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :pswitch_0
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_BC_AD:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v0, v3, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_6

    .line 228
    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_6

    .line 215
    :pswitch_1
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_ONE_DIGIT:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 220
    :goto_0
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_6

    .line 208
    :pswitch_2
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    .line 211
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_6

    .line 199
    :pswitch_3
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 204
    :goto_1
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_6

    :pswitch_4
    const-string v0, "token \'%s\' not supported yet."

    .line 194
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v0, "token \'%s\' not supported yet."

    .line 190
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    :goto_2
    const/4 p2, 0x0

    goto/16 :goto_6

    .line 182
    :pswitch_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    div-int/2addr v1, v2

    .line 184
    sget-object v3, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

    invoke-static {v3, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v3, v1

    .line 187
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_6

    .line 166
    :pswitch_7
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_TO_FOUR_DIGITS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    if-ge v3, v5, :cond_4

    const/16 v3, 0x32

    if-ge v1, v3, :cond_3

    add-int/lit16 v1, v1, 0x7d0

    goto :goto_3

    :cond_3
    if-ge v1, v2, :cond_4

    add-int/lit16 v1, v1, 0x76c

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    const-string v2, "Year may not be zero"

    .line 177
    invoke-static {p1, v2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 179
    :cond_5
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_6

    .line 158
    :pswitch_8
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_THREE_DIGITS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 163
    :goto_4
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_6

    .line 142
    :pswitch_9
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_FOUR_DIGITS:Ljava/util/regex/Pattern;

    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "+"

    .line 145
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 148
    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    const-string v2, "Year may not be zero"

    .line 152
    invoke-static {p1, v2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    :cond_8
    if-ltz v1, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 154
    :goto_5
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 236
    :goto_6
    invoke-virtual {p1, p2, p3}, Lorg/h2/util/ToDateParser;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
