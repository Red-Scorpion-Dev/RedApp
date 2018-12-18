.class public Lorg/h2/util/ToChar;
.super Ljava/lang/Object;
.source "ToChar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/ToChar$Capitalization;
    }
.end annotation


# static fields
.field private static final JULIAN_EPOCH:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v7, Ljava/util/GregorianCalendar;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v7, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 36
    new-instance v0, Ljava/sql/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 37
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->clear()V

    const/16 v1, 0x1269

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {v7, v0, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 40
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/h2/util/ToChar;->JULIAN_EPOCH:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSign(Ljava/lang/StringBuilder;IZZZZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    if-gez p1, :cond_0

    const/16 p1, 0x3c

    .line 358
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    .line 359
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    if-eqz p6, :cond_9

    const/16 p1, 0x20

    .line 361
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    const-string p1, "-"

    goto :goto_1

    :cond_3
    if-nez p2, :cond_6

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p6, :cond_5

    const-string p1, " "

    goto :goto_1

    :cond_5
    const-string p1, ""

    goto :goto_1

    :cond_6
    :goto_0
    const-string p1, "+"

    :goto_1
    if-nez p4, :cond_8

    if-eqz p3, :cond_7

    goto :goto_2

    .line 382
    :cond_7
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 380
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    return-void
.end method

.method private static calculateScale(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    .line 403
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 404
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static varargs containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;
    .locals 10

    .line 860
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_5

    aget-object v4, p2, v2

    .line 861
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_4

    move-object v5, v3

    move-object v6, v5

    const/4 v3, 0x0

    .line 865
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    add-int v7, p1, v3

    .line 866
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 867
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_0

    .line 868
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v9, v8, :cond_0

    const/4 v3, 0x0

    goto :goto_3

    .line 871
    :cond_0
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v5, :cond_1

    .line 873
    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    .line 875
    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    .line 880
    invoke-static {v5, v6}, Lorg/h2/util/ToChar$Capitalization;->toCapitalization(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private static findDecimalSeparator(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x2e

    .line 388
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x44

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    .line 392
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getYear(Ljava/util/Calendar;)I
    .locals 2

    const/4 v0, 0x1

    .line 837
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    .line 838
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static toChar(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_36

    const-string v5, "TM"

    .line 130
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    const-string v5, "TM9"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_18

    :cond_1
    const-string v5, "TME"

    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xa

    if-eqz v5, :cond_4

    .line 134
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 135
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "E"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v1, :cond_2

    const/16 v7, 0x2d

    goto :goto_1

    :cond_2
    const/16 v7, 0x2b

    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v6, :cond_3

    const-string v0, "0"

    goto :goto_2

    :cond_3
    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v5, "RN"

    .line 138
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_6

    const-string v2, "r"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/h2/util/ToChar;->toRomanNumeral(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    const-string v3, " "

    invoke-static {v0, v2, v3, v9}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    const-string v5, "FMRN"

    .line 142
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x2

    if-eqz v5, :cond_9

    .line 143
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 144
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/h2/util/ToChar;->toRomanNumeral(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_8

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0

    :cond_9
    const-string v5, "X"

    .line 146
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 147
    invoke-static/range {p0 .. p1}, Lorg/h2/util/ToChar;->toHex(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :cond_a
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    .line 152
    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v11

    .line 153
    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    const-string v12, "S"

    .line 155
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_b
    move-object v12, v1

    :goto_4
    const-string v13, "S"

    .line 160
    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 162
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_c
    const-string v13, "MI"

    .line 165
    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 167
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_d
    const-string v13, "PR"

    .line 170
    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 172
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_e
    const-string v13, "V"

    .line 175
    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x39

    const/16 v2, 0x30

    if-ltz v13, :cond_12

    add-int/lit8 v7, v13, 0x1

    move v8, v7

    const/4 v6, 0x0

    .line 178
    :goto_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_11

    .line 179
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v2, :cond_f

    if-ne v10, v14, :cond_10

    :cond_f
    add-int/lit8 v6, v6, 0x1

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 184
    :cond_11
    invoke-virtual {v0, v6}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_12
    const-string v6, "EEEE"

    .line 189
    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_13

    .line 190
    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v6

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v8

    sub-int/2addr v6, v8

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 191
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 192
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v6

    goto :goto_6

    :cond_13
    const/16 v20, 0x0

    :goto_6
    const-string v6, "FM"

    .line 198
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v4

    if-nez v3, :cond_14

    const/4 v6, 0x2

    .line 200
    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_14
    const-string v6, "[Bb]"

    const-string v8, ""

    .line 204
    invoke-virtual {v12, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-static {v6}, Lorg/h2/util/ToChar;->findDecimalSeparator(Ljava/lang/String;)I

    move-result v8

    .line 209
    invoke-static {v6, v8}, Lorg/h2/util/ToChar;->calculateScale(Ljava/lang/String;I)I

    move-result v10

    .line 210
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v12

    if-ge v10, v12, :cond_15

    .line 211
    invoke-virtual {v0, v10, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 216
    :cond_15
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    :goto_7
    if-ltz v7, :cond_17

    if-ge v7, v8, :cond_17

    .line 217
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v14, :cond_16

    .line 218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 222
    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v12

    sget-object v13, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v12, v13}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v12

    if-gez v12, :cond_18

    invoke-static {v0}, Lorg/h2/util/ToChar;->zeroesAfterDecimalSeparator(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_18
    const-string v12, ""

    :goto_8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v12, v8, -0x1

    .line 230
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v19

    sub-int v13, v13, v19

    sub-int/2addr v13, v4

    move v4, v13

    const/4 v13, 0x1

    :goto_9
    if-ltz v12, :cond_27

    .line 232
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v13, v13, 0x1

    if-eq v9, v14, :cond_24

    if-ne v9, v2, :cond_19

    goto/16 :goto_d

    :cond_19
    const/16 v14, 0x2c

    if-ne v9, v14, :cond_1b

    if-gez v4, :cond_1a

    if-lez v12, :cond_26

    add-int/lit8 v14, v12, -0x1

    .line 244
    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v2, :cond_26

    :cond_1a
    const/4 v14, 0x0

    .line 245
    invoke-virtual {v7, v14, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :cond_1b
    const/16 v14, 0x47

    if-eq v9, v14, :cond_22

    const/16 v14, 0x67

    if-ne v9, v14, :cond_1c

    goto :goto_c

    :cond_1c
    const/16 v14, 0x43

    if-eq v9, v14, :cond_21

    const/16 v14, 0x63

    if-ne v9, v14, :cond_1d

    goto :goto_b

    :cond_1d
    const/16 v14, 0x4c

    if-eq v9, v14, :cond_20

    const/16 v14, 0x6c

    if-eq v9, v14, :cond_20

    const/16 v14, 0x55

    if-eq v9, v14, :cond_20

    const/16 v14, 0x75

    if-ne v9, v14, :cond_1e

    goto :goto_a

    :cond_1e
    const/16 v14, 0x24

    if-ne v9, v14, :cond_1f

    .line 261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v9

    .line 262
    invoke-virtual {v9}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    .line 263
    invoke-virtual {v7, v14, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1f
    const v9, 0x15f9a

    .line 265
    invoke-static {v9, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_20
    :goto_a
    const/4 v14, 0x0

    .line 257
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v9

    .line 258
    invoke-virtual {v9}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v14, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x9

    goto :goto_e

    :cond_21
    :goto_b
    const/4 v14, 0x0

    .line 253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v9

    .line 254
    invoke-virtual {v9}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v14, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x6

    goto :goto_e

    :cond_22
    :goto_c
    if-gez v4, :cond_23

    if-lez v12, :cond_26

    add-int/lit8 v9, v12, -0x1

    .line 249
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v2, :cond_26

    :cond_23
    const/4 v14, 0x0

    .line 250
    invoke-virtual {v7, v14, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_24
    :goto_d
    const/4 v14, 0x0

    if-ltz v4, :cond_25

    .line 236
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 237
    invoke-virtual {v7, v14, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_25
    if-ne v9, v2, :cond_26

    if-nez v20, :cond_26

    .line 240
    invoke-virtual {v7, v14, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_26
    :goto_e
    add-int/lit8 v12, v12, -0x1

    const/16 v14, 0x39

    goto/16 :goto_9

    :cond_27
    if-ltz v4, :cond_28

    const-string v0, ""

    .line 273
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-string v3, "#"

    invoke-static {v0, v1, v3, v2}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_28
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v8, v4, :cond_30

    add-int/lit8 v13, v13, 0x1

    .line 280
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x64

    if-eq v4, v9, :cond_2a

    const/16 v9, 0x44

    if-ne v4, v9, :cond_29

    goto :goto_f

    .line 284
    :cond_29
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 282
    :cond_2a
    :goto_f
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_10
    const/4 v4, 0x1

    add-int/2addr v8, v4

    .line 290
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    sub-int/2addr v4, v5

    .line 291
    :goto_11
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v8, v5, :cond_30

    .line 292
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v13, v13, 0x1

    const/16 v9, 0x39

    if-eq v5, v9, :cond_2c

    if-ne v5, v2, :cond_2b

    goto :goto_12

    :cond_2b
    const v11, 0x15f9a

    .line 305
    invoke-static {v11, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2c
    :goto_12
    const v11, 0x15f9a

    .line 295
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_2d

    .line 296
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 297
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_2d
    if-eq v5, v2, :cond_2e

    if-eqz v3, :cond_2f

    .line 301
    :cond_2e
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2f
    :goto_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_30
    move v1, v13

    .line 311
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v14

    move-object v13, v7

    move/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lorg/h2/util/ToChar;->addSign(Ljava/lang/StringBuilder;IZZZZZ)V

    if-eqz v20, :cond_33

    const/16 v0, 0x45

    .line 315
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_31

    const/16 v0, 0x2d

    goto :goto_14

    :cond_31
    const/16 v0, 0x2b

    :goto_14
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_32

    const-string v0, "0"

    goto :goto_15

    :cond_32
    const-string v0, ""

    :goto_15
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_33
    if-eqz v3, :cond_35

    const/16 v0, 0x20

    if-eqz v20, :cond_34

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_34
    const/4 v2, 0x0

    .line 325
    :goto_16
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v3, v1, :cond_35

    .line 326
    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 331
    :cond_35
    :goto_17
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_36
    :goto_18
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0."

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_37
    return-object v0
.end method

.method public static toChar(Ljava/sql/Timestamp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    const-string v1, "DD-MON-YY HH.MI.SS.FF PM"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 604
    :goto_0
    new-instance v2, Ljava/util/GregorianCalendar;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 609
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_34

    const/4 v8, 0x2

    .line 615
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "A.D."

    aput-object v10, v9, v4

    const-string v10, "B.C."

    aput-object v10, v9, v5

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 616
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_2

    const-string v8, "A.D."

    goto :goto_2

    :cond_2
    const-string v8, "B.C."

    .line 617
    :goto_2
    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    .line 619
    :cond_3
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "AD"

    aput-object v10, v9, v4

    const-string v10, "BC"

    aput-object v10, v9, v5

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 620
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_4

    const-string v8, "AD"

    goto :goto_3

    :cond_4
    const-string v8, "BC"

    .line 621
    :goto_3
    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 626
    :cond_5
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "A.M."

    aput-object v10, v9, v4

    const-string v10, "P.M."

    aput-object v10, v9, v5

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/16 v10, 0x9

    if-eqz v9, :cond_7

    .line 627
    invoke-virtual {v2, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "A.M."

    goto :goto_4

    :cond_6
    const-string v8, "P.M."

    .line 628
    :goto_4
    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    .line 630
    :cond_7
    new-array v9, v8, [Ljava/lang/String;

    const-string v11, "AM"

    aput-object v11, v9, v4

    const-string v11, "PM"

    aput-object v11, v9, v5

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 631
    invoke-virtual {v2, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "AM"

    goto :goto_5

    :cond_8
    const-string v8, "PM"

    .line 632
    :goto_5
    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 637
    :cond_9
    new-array v9, v5, [Ljava/lang/String;

    const-string v11, "DL"

    aput-object v11, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 638
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "EEEE, MMMM d, yyyy"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 640
    :cond_a
    new-array v9, v5, [Ljava/lang/String;

    const-string v11, "DS"

    aput-object v11, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 641
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "MM/dd/yyyy"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 643
    :cond_b
    new-array v9, v5, [Ljava/lang/String;

    const-string v11, "TS"

    aput-object v11, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 644
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "h:mm:ss aa"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 649
    :cond_c
    new-array v9, v5, [Ljava/lang/String;

    const-string v11, "DDD"

    aput-object v11, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/4 v11, 0x6

    if-eqz v9, :cond_d

    .line 650
    invoke-virtual {v2, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 652
    :cond_d
    new-array v9, v5, [Ljava/lang/String;

    const-string v12, "DD"

    aput-object v12, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/4 v12, 0x5

    if-eqz v9, :cond_e

    const-string v8, "%02d"

    .line 653
    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 656
    :cond_e
    new-array v9, v5, [Ljava/lang/String;

    const-string v13, "DY"

    aput-object v13, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 657
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "EEE"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 658
    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 660
    :cond_f
    new-array v9, v5, [Ljava/lang/String;

    const-string v13, "DAY"

    aput-object v13, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 661
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "EEEE"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_10

    const-string v10, "Wednesday"

    .line 663
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, " "

    invoke-static {v8, v10, v11, v5}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 665
    :cond_10
    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 667
    :cond_11
    new-array v9, v5, [Ljava/lang/String;

    const-string v13, "D"

    aput-object v13, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/4 v13, 0x7

    if-eqz v9, :cond_12

    .line 668
    invoke-virtual {v2, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 670
    :cond_12
    new-array v9, v5, [Ljava/lang/String;

    const-string v14, "J"

    aput-object v14, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 671
    invoke-virtual/range {p0 .. p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v8

    sget-wide v10, Lorg/h2/util/ToChar;->JULIAN_EPOCH:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    .line 672
    div-long/2addr v8, v10

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    .line 673
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 678
    :cond_13
    new-array v9, v5, [Ljava/lang/String;

    const-string v14, "HH24"

    aput-object v14, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/16 v14, 0xb

    if-eqz v9, :cond_14

    .line 679
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_1

    .line 681
    :cond_14
    new-array v9, v5, [Ljava/lang/String;

    const-string v15, "HH12"

    aput-object v15, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/16 v15, 0xa

    if-eqz v9, :cond_15

    .line 682
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_1

    .line 684
    :cond_15
    new-array v9, v5, [Ljava/lang/String;

    const-string v16, "HH"

    aput-object v16, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 685
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 690
    :cond_16
    new-array v9, v5, [Ljava/lang/String;

    const-string v16, "MI"

    aput-object v16, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/16 v15, 0xc

    if-eqz v9, :cond_17

    .line 691
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 696
    :cond_17
    new-array v9, v5, [Ljava/lang/String;

    const-string v16, "SSSSS"

    aput-object v16, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/16 v13, 0xd

    if-eqz v9, :cond_18

    .line 697
    invoke-virtual {v2, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    .line 698
    invoke-virtual {v2, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    .line 699
    invoke-virtual {v2, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 700
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x5

    goto/16 :goto_1

    .line 702
    :cond_18
    new-array v9, v5, [Ljava/lang/String;

    const-string v14, "SS"

    aput-object v14, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 703
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 708
    :cond_19
    new-array v9, v10, [Ljava/lang/String;

    const-string v10, "FF1"

    aput-object v10, v9, v4

    const-string v10, "FF2"

    aput-object v10, v9, v5

    const-string v10, "FF3"

    aput-object v10, v9, v8

    const-string v10, "FF4"

    const/4 v13, 0x3

    aput-object v10, v9, v13

    const-string v10, "FF5"

    const/4 v14, 0x4

    aput-object v10, v9, v14

    const-string v10, "FF6"

    aput-object v10, v9, v12

    const-string v10, "FF7"

    aput-object v10, v9, v11

    const-string v10, "FF8"

    const/4 v11, 0x7

    aput-object v10, v9, v11

    const/16 v10, 0x8

    const-string v11, "FF9"

    aput-object v11, v9, v10

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    const/16 v10, 0xe

    if-eqz v9, :cond_1a

    add-int/lit8 v8, v6, 0x2

    add-int/lit8 v6, v6, 0x3

    .line 710
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 711
    invoke-virtual {v2, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    sub-int/2addr v8, v13

    int-to-double v13, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    double-to-int v8, v9

    .line 712
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 714
    :cond_1a
    new-array v9, v5, [Ljava/lang/String;

    const-string v11, "FF"

    aput-object v11, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 715
    invoke-virtual {v2, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 720
    :cond_1b
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "TZR"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 721
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    .line 722
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 724
    :cond_1c
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "TZD"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 725
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    .line 726
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    .line 727
    invoke-virtual {v8, v9, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 732
    :cond_1d
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "IW"

    aput-object v10, v9, v4

    const-string v10, "WW"

    aput-object v10, v9, v5

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_1e

    .line 733
    invoke-virtual {v2, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 735
    :cond_1e
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "W"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_1f

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 736
    invoke-virtual {v2, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    const/4 v11, 0x7

    div-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    add-double/2addr v10, v8

    double-to-int v8, v10

    .line 737
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 742
    :cond_1f
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "Y,YYY"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_20

    .line 743
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "#,###"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x5

    goto/16 :goto_1

    .line 745
    :cond_20
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "SYYYY"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_22

    .line 746
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-nez v8, :cond_21

    const/16 v8, 0x2d

    .line 747
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    :cond_21
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "0000"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x5

    goto/16 :goto_1

    .line 751
    :cond_22
    new-array v9, v13, [Ljava/lang/String;

    const-string v10, "YYYY"

    aput-object v10, v9, v4

    const-string v10, "IYYY"

    aput-object v10, v9, v5

    const-string v10, "RRRR"

    aput-object v10, v9, v8

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 752
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "0000"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_1

    .line 754
    :cond_23
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "YYY"

    aput-object v10, v9, v4

    const-string v10, "IYY"

    aput-object v10, v9, v5

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_24

    .line 755
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "000"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v9

    rem-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 757
    :cond_24
    new-array v9, v13, [Ljava/lang/String;

    const-string v10, "YY"

    aput-object v10, v9, v4

    const-string v10, "IY"

    aput-object v10, v9, v5

    const-string v10, "RR"

    aput-object v10, v9, v8

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 758
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v9

    rem-int/lit8 v9, v9, 0x64

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 760
    :cond_25
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "I"

    aput-object v10, v9, v4

    const-string v10, "Y"

    aput-object v10, v9, v5

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_26

    .line 761
    invoke-static {v2}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v8

    const/16 v9, 0xa

    rem-int/2addr v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 766
    :cond_26
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "MONTH"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_28

    .line 767
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "MMMM"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_27

    const-string v10, "September"

    .line 769
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, " "

    invoke-static {v8, v10, v11, v5}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 771
    :cond_27
    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x5

    goto/16 :goto_1

    .line 773
    :cond_28
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "MON"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_29

    .line 774
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "MMM"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 775
    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 777
    :cond_29
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "MM"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_2a

    const-string v9, "%02d"

    .line 778
    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 780
    :cond_2a
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "RM"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_2b

    .line 781
    invoke-virtual {v2, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    add-int/2addr v8, v5

    .line 782
    invoke-static {v8}, Lorg/h2/util/ToChar;->toRomanNumeral(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 784
    :cond_2b
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "Q"

    aput-object v10, v9, v4

    invoke-static {v1, v6, v9}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v9

    if-eqz v9, :cond_2c

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 785
    invoke-virtual {v2, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    div-int/2addr v8, v13

    int-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    add-double/2addr v11, v9

    double-to-int v8, v11

    .line 786
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 791
    :cond_2c
    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "X"

    aput-object v9, v8, v4

    invoke-static {v1, v6, v8}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v8

    if-eqz v8, :cond_2d

    .line 792
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v8

    .line 793
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 798
    :cond_2d
    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "FM"

    aput-object v9, v8, v4

    invoke-static {v1, v6, v8}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v8

    if-eqz v8, :cond_2e

    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 801
    :cond_2e
    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "FX"

    aput-object v9, v8, v4

    invoke-static {v1, v6, v8}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v8

    if-eqz v8, :cond_2f

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 806
    :cond_2f
    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "\""

    aput-object v9, v8, v4

    invoke-static {v1, v6, v8}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v8

    if-eqz v8, :cond_31

    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 807
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 808
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-eq v8, v9, :cond_30

    .line 810
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 816
    :cond_31
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_33

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_33

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_33

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_33

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3b

    if-eq v8, v9, :cond_33

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_33

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_32

    goto :goto_7

    :cond_32
    const v0, 0x15f9a

    .line 829
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 823
    :cond_33
    :goto_7
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 833
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toHex(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "x"

    .line 432
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    const-string v3, "0"

    .line 433
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 435
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 436
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-eq v7, v8, :cond_0

    const/16 v8, 0x58

    if-eq v7, v8, :cond_0

    const/16 v8, 0x78

    if-ne v7, v8, :cond_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    .line 442
    invoke-virtual {p0, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    .line 443
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 444
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_3

    const-string p0, ""

    add-int/2addr v6, v1

    const-string p1, "#"

    .line 445
    invoke-static {p0, v6, p1, v1}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 448
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_4
    if-eqz v3, :cond_5

    const-string v2, "0"

    .line 451
    invoke-static {p0, v6, v2, v4}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_5
    if-eqz v0, :cond_6

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    const-string v0, " "

    invoke-static {p0, p1, v0, v4}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_1
    return-object p0
.end method

.method private static toRomanNumeral(I)Ljava/lang/String;
    .locals 6

    const/16 v0, 0xd

    .line 413
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 415
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "M"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "CM"

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "D"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "CD"

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string v2, "C"

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const-string v2, "XC"

    const/4 v4, 0x5

    aput-object v2, v0, v4

    const-string v2, "L"

    const/4 v4, 0x6

    aput-object v2, v0, v4

    const-string v2, "XL"

    const/4 v4, 0x7

    aput-object v2, v0, v4

    const-string v2, "X"

    const/16 v4, 0x8

    aput-object v2, v0, v4

    const-string v2, "IX"

    const/16 v4, 0x9

    aput-object v2, v0, v4

    const-string v2, "V"

    const/16 v4, 0xa

    aput-object v2, v0, v4

    const-string v2, "IV"

    const/16 v4, 0xb

    aput-object v2, v0, v4

    const-string v2, "I"

    const/16 v4, 0xc

    aput-object v2, v0, v4

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 419
    aget v4, v1, v3

    .line 420
    aget-object v5, v0, v3

    :goto_1
    if-lt p0, v4, :cond_0

    .line 422
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method private static zeroesAfterDecimalSeparator(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 5

    .line 335
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 342
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    sub-int/2addr p0, v4

    goto :goto_2

    :cond_3
    sub-int/2addr v1, v4

    sub-int p0, v1, v0

    :goto_2
    new-array p0, p0, [C

    .line 349
    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 350
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
