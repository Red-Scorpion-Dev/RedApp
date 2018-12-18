.class Lorg/h2/util/ToDateTokenizer$MonthParslet;
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
    name = "MonthParslet"
.end annotation


# static fields
.field private static final ROMAN_MONTH:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    .line 244
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "I"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "II"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "III"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "IV"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "V"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "VI"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "VII"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "VIII"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "IX"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "X"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "XI"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "XII"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lorg/h2/util/ToDateTokenizer$MonthParslet;->ROMAN_MONTH:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 250
    invoke-virtual/range {p1 .. p1}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 251
    invoke-virtual/range {p1 .. p1}, Lorg/h2/util/ToDateParser;->getInputStr()Ljava/lang/String;

    move-result-object v3

    .line 254
    sget-object v4, Lorg/h2/util/ToDateTokenizer$1;->$SwitchMap$org$h2$util$ToDateTokenizer$FormatTokenEnum:[I

    invoke-virtual/range {p2 .. p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    const-string v1, "%s: Internal Error. Unhandled case: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_0
    sget-object v4, Lorg/h2/util/ToDateTokenizer$MonthParslet;->ROMAN_MONTH:[Ljava/lang/String;

    array-length v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v12, v4, v10

    add-int/2addr v11, v6

    .line 278
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 279
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v14, v13, :cond_0

    invoke-virtual {v3, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 281
    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    move-object v8, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 286
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "Issue happened when parsing token \'%s\'. Expected one of: %s"

    .line 287
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    sget-object v1, Lorg/h2/util/ToDateTokenizer$MonthParslet;->ROMAN_MONTH:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    goto :goto_2

    .line 269
    :pswitch_1
    sget-object v3, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    invoke-static {v3, v0, v1}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v6

    .line 272
    invoke-virtual {v2, v7, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 264
    :pswitch_2
    invoke-static {v2, v0, v7, v6}, Lorg/h2/util/ToDateTokenizer;->setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :pswitch_3
    const-string v2, "token \'%s\' not supported yet."

    .line 260
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    goto :goto_2

    .line 256
    :pswitch_4
    invoke-static {v2, v0, v7, v7}, Lorg/h2/util/ToDateTokenizer;->setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;

    move-result-object v8

    :cond_3
    :goto_2
    move-object/from16 v1, p3

    .line 298
    invoke-virtual {v0, v8, v1}, Lorg/h2/util/ToDateParser;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
