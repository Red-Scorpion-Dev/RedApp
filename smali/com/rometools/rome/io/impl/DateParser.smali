.class public Lcom/rometools/rome/io/impl/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# static fields
.field private static ADDITIONAL_MASKS:[Ljava/lang/String;

.field private static final RFC822_MASKS:[Ljava/lang/String;

.field private static final W3CDATETIME_MASKS:[Ljava/lang/String;

.field private static final masks:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x4

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "EEE, dd MMM yy HH:mm z"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "dd MMM yy HH:mm:ss z"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "dd MMM yy HH:mm z"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/rometools/rome/io/impl/DateParser;->RFC822_MASKS:[Ljava/lang/String;

    const/16 v1, 0x13

    .line 49
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    aput-object v2, v1, v3

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ss.SSSz"

    aput-object v2, v1, v4

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v2, v1, v5

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ss.SSS\'z\'"

    aput-object v2, v1, v6

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssz"

    aput-object v2, v1, v0

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ssz"

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    const/4 v8, 0x6

    aput-object v2, v1, v8

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ssZ"

    const/4 v9, 0x7

    aput-object v2, v1, v9

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const/16 v10, 0x8

    aput-object v2, v1, v10

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ss\'z\'"

    const/16 v11, 0x9

    aput-object v2, v1, v11

    const-string v2, "yyyy-MM-dd\'T\'HH:mmz"

    const/16 v12, 0xa

    aput-object v2, v1, v12

    const-string v2, "yyyy-MM\'T\'HH:mmz"

    const/16 v13, 0xb

    aput-object v2, v1, v13

    const-string v2, "yyyy\'T\'HH:mmz"

    const/16 v14, 0xc

    aput-object v2, v1, v14

    const-string v2, "yyyy-MM-dd\'t\'HH:mmz"

    const/16 v15, 0xd

    aput-object v2, v1, v15

    const-string v2, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    const/16 v16, 0xe

    aput-object v2, v1, v16

    const-string v2, "yyyy-MM-dd\'t\'HH:mm\'z\'"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "yyyy-MM-dd"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "yyyy-MM"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    const-string v2, "yyyy"

    const/16 v17, 0x12

    aput-object v2, v1, v17

    sput-object v1, Lcom/rometools/rome/io/impl/DateParser;->W3CDATETIME_MASKS:[Ljava/lang/String;

    const/16 v1, 0xf

    .line 68
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    aput-object v2, v1, v3

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ss.SSSz"

    aput-object v2, v1, v4

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v2, v1, v5

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ss.SSS\'z\'"

    aput-object v2, v1, v6

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssz"

    aput-object v2, v1, v0

    const-string v0, "yyyy-MM-dd\'t\'HH:mm:ssz"

    aput-object v0, v1, v7

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    aput-object v0, v1, v8

    const-string v0, "yyyy-MM-dd\'t\'HH:mm:ss\'z\'"

    aput-object v0, v1, v9

    const-string v0, "yyyy-MM-dd\'T\'HH:mmz"

    aput-object v0, v1, v10

    const-string v0, "yyyy-MM-dd\'t\'HH:mmz"

    aput-object v0, v1, v11

    const-string v0, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    aput-object v0, v1, v12

    const-string v0, "yyyy-MM-dd\'t\'HH:mm\'z\'"

    aput-object v0, v1, v13

    const-string v0, "yyyy-MM-dd"

    aput-object v0, v1, v14

    const-string v0, "yyyy-MM"

    aput-object v0, v1, v15

    const-string v0, "yyyy"

    aput-object v0, v1, v16

    sput-object v1, Lcom/rometools/rome/io/impl/DateParser;->masks:[Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/rometools/rome/io/impl/PropertiesLoader;->getPropertiesLoader()Lcom/rometools/rome/io/impl/PropertiesLoader;

    move-result-object v0

    const-string v1, "datetime.extra.masks"

    const-string v2, "|"

    invoke-virtual {v0, v1, v2}, Lcom/rometools/rome/io/impl/PropertiesLoader;->getTokenizedProperty(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/DateParser;->ADDITIONAL_MASKS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertUnsupportedTimeZones(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 151
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UT"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Z"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "UTC"

    .line 155
    invoke-static {p0, v1, v0}, Lcom/rometools/rome/io/impl/DateParser;->replaceLastOccurrence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static formatRFC822(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p1, "GMT"

    .line 253
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 254
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 269
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p1, "GMT"

    .line 270
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 271
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;
    .locals 2

    .line 230
    invoke-static {p0, p1}, Lcom/rometools/rome/io/impl/DateParser;->parseW3CDateTime(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    invoke-static {p0, p1}, Lcom/rometools/rome/io/impl/DateParser;->parseRFC822(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    sget-object v1, Lcom/rometools/rome/io/impl/DateParser;->ADDITIONAL_MASKS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 234
    sget-object v0, Lcom/rometools/rome/io/impl/DateParser;->ADDITIONAL_MASKS:[Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/rometools/rome/io/impl/DateParser;->parseUsingMask([Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static parseRFC822(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;
    .locals 1

    .line 146
    invoke-static {p0}, Lcom/rometools/rome/io/impl/DateParser;->convertUnsupportedTimeZones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 147
    sget-object v0, Lcom/rometools/rome/io/impl/DateParser;->RFC822_MASKS:[Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/rometools/rome/io/impl/DateParser;->parseUsingMask([Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static parseUsingMask([Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;
    .locals 6

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 106
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 107
    new-instance v4, Ljava/text/SimpleDateFormat;

    aget-object v5, p0, v3

    invoke-direct {v4, v5, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v5, 0x1

    .line 109
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 111
    :try_start_0
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 112
    invoke-virtual {v4, p1, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v2, v5, :cond_1

    move-object v4, v1

    :catch_0
    :cond_1
    move-object v2, v4

    :catch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static parseW3CDateTime(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;
    .locals 5

    const-string v0, "T"

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    const-string v2, "Z"

    .line 198
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+00:00"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v2, "+"

    .line 201
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v2, "-"

    .line 203
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    :cond_1
    if-le v2, v1, :cond_4

    .line 206
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    .line 207
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v1, :cond_2

    .line 209
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GMT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 215
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "T00:00GMT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 217
    :cond_4
    :goto_0
    sget-object v0, Lcom/rometools/rome/io/impl/DateParser;->W3CDATETIME_MASKS:[Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/rometools/rome/io/impl/DateParser;->parseUsingMask([Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static replaceLastOccurrence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v1, v0, p0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
