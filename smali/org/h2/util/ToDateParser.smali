.class public Lorg/h2/util/ToDateParser;
.super Ljava/lang/Object;
.source "ToDateParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/ToDateParser$ConfigParam;
    }
.end annotation


# instance fields
.field private formatStr:Ljava/lang/String;

.field private final functionName:Lorg/h2/util/ToDateParser$ConfigParam;

.field private inputStr:Ljava/lang/String;

.field private nanos:Ljava/lang/Integer;

.field private final resultCalendar:Ljava/util/Calendar;

.field private final unmodifiedFormatStr:Ljava/lang/String;

.field private final unmodifiedInputStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/h2/util/ToDateParser$ConfigParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    .line 35
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, 0x7b2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 36
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 37
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 38
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 39
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 40
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 41
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 42
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 43
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 44
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 45
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 46
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 48
    iput-object p1, p0, Lorg/h2/util/ToDateParser;->functionName:Lorg/h2/util/ToDateParser$ConfigParam;

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    .line 51
    iget-object p2, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    iput-object p2, p0, Lorg/h2/util/ToDateParser;->unmodifiedInputStr:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser$ConfigParam;->getDefaultFormatStr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    .line 59
    :goto_1
    iget-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->unmodifiedFormatStr:Ljava/lang/String;

    return-void
.end method

.method private static getDateParser(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/util/ToDateParser;
    .locals 2

    .line 63
    new-instance v0, Lorg/h2/util/ToDateParser;

    sget-object v1, Lorg/h2/util/ToDateParser$ConfigParam;->TO_DATE:Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-direct {v0, v1, p0, p1}, Lorg/h2/util/ToDateParser;-><init>(Lorg/h2/util/ToDateParser$ConfigParam;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lorg/h2/util/ToDateParser;->parse(Lorg/h2/util/ToDateParser;)Lorg/h2/util/ToDateParser;

    return-object v0
.end method

.method private getResultingTimestamp()Ljava/sql/Timestamp;
    .locals 5

    .line 75
    invoke-virtual {p0}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 76
    iget-object v1, p0, Lorg/h2/util/ToDateParser;->nanos:Ljava/lang/Integer;

    const/16 v2, 0xe

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const v3, 0xf4240

    mul-int v1, v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/util/ToDateParser;->nanos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const/4 v3, 0x0

    .line 78
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 79
    new-instance v2, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    .line 80
    invoke-virtual {v2, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object v2
.end method

.method private static getTimestampParser(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/util/ToDateParser;
    .locals 2

    .line 69
    new-instance v0, Lorg/h2/util/ToDateParser;

    sget-object v1, Lorg/h2/util/ToDateParser$ConfigParam;->TO_TIMESTAMP:Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-direct {v0, v1, p0, p1}, Lorg/h2/util/ToDateParser;-><init>(Lorg/h2/util/ToDateParser$ConfigParam;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Lorg/h2/util/ToDateParser;->parse(Lorg/h2/util/ToDateParser;)Lorg/h2/util/ToDateParser;

    return-object v0
.end method

.method private hasToParseData()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parse(Lorg/h2/util/ToDateParser;)Lorg/h2/util/ToDateParser;
    .locals 3

    .line 118
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->hasToParseData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {p0}, Lorg/h2/util/ToDateParser;->getFormatStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->getTokensInQuestion(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->removeFirstChar()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 127
    invoke-virtual {v2, p0}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->parseFormatStrWithToken(Lorg/h2/util/ToDateParser;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_0

    .line 133
    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->removeFirstChar()V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method private removeFirstChar()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0

    .line 196
    invoke-static {p0, p1}, Lorg/h2/util/ToDateParser;->getDateParser(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/util/ToDateParser;

    move-result-object p0

    .line 197
    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->getResultingTimestamp()Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static toTimestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lorg/h2/util/ToDateParser;->getTimestampParser(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/util/ToDateParser;

    move-result-object p0

    .line 185
    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->getResultingTimestamp()Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getFormatStr()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    return-object v0
.end method

.method getFunctionName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->functionName:Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-virtual {v0}, Lorg/h2/util/ToDateParser$ConfigParam;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInputStr()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    return-object v0
.end method

.method getResultCalendar()Ljava/util/Calendar;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 150
    iget-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 151
    iget-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method setNanos(I)V
    .locals 0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->nanos:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 157
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 158
    iget-object v1, p0, Lorg/h2/util/ToDateParser;->unmodifiedInputStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 162
    :goto_0
    iget-object v2, p0, Lorg/h2/util/ToDateParser;->unmodifiedFormatStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 163
    iget-object v3, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    %s(\'%s\', \'%s\')"

    const/4 v5, 0x3

    .line 166
    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/h2/util/ToDateParser;->functionName:Lorg/h2/util/ToDateParser$ConfigParam;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lorg/h2/util/ToDateParser;->unmodifiedInputStr:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/h2/util/ToDateParser;->unmodifiedFormatStr:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n      %s^%s ,  %s^ <-- Parsing failed at this point"

    .line 168
    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/h2/util/ToDateParser;->functionName:Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-virtual {v7}, Lorg/h2/util/ToDateParser$ConfigParam;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    if-gtz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v9

    if-gtz v2, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
