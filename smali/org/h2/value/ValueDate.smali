.class public Lorg/h2/value/ValueDate;
.super Lorg/h2/value/Value;
.source "ValueDate.java"


# static fields
.field public static final DISPLAY_SIZE:I = 0xa

.field public static final PRECISION:I = 0x8


# instance fields
.field private final dateValue:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/h2/value/ValueDate;->dateValue:J

    return-void
.end method

.method static appendDate(Ljava/lang/StringBuilder;J)V
    .locals 4

    .line 159
    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v0

    .line 160
    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v1

    .line 161
    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result p1

    if-lez v0, :cond_0

    const/16 p2, 0x2710

    if-ge v0, p2, :cond_0

    const/4 p2, 0x4

    int-to-long v2, v0

    .line 163
    invoke-static {p0, p2, v2, v3}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p2, 0x2d

    .line 167
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v0, v1

    const/4 v2, 0x2

    .line 168
    invoke-static {p0, v2, v0, v1}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    .line 169
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long p1, p1

    .line 170
    invoke-static {p0, v2, p1, p2}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    return-void
.end method

.method public static fromDateValue(J)Lorg/h2/value/ValueDate;
    .locals 1

    .line 47
    new-instance v0, Lorg/h2/value/ValueDate;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueDate;-><init>(J)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueDate;

    return-object p0
.end method

.method public static fromMillis(J)Lorg/h2/value/ValueDate;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;
    .locals 2

    .line 57
    invoke-virtual {p0}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/h2/value/ValueDate;
    .locals 5

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/h2/util/DateTimeUtils;->parseDateValue(Ljava/lang/String;II)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const/16 v2, 0x55f7

    const/4 v3, 0x2

    .line 81
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "DATE"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-static {v2, v1, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/h2/value/ValueDate;->dateValue:J

    check-cast p1, Lorg/h2/value/ValueDate;

    iget-wide p1, p1, Lorg/h2/value/ValueDate;->dateValue:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueDate;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lorg/h2/value/ValueDate;->dateValue:J

    check-cast p1, Lorg/h2/value/ValueDate;

    iget-wide v3, p1, Lorg/h2/value/ValueDate;->dateValue:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDate()Ljava/sql/Date;
    .locals 2

    .line 92
    iget-wide v0, p0, Lorg/h2/value/ValueDate;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->convertDateValueToDate(J)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateValue()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/h2/value/ValueDate;->dateValue:J

    return-wide v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lorg/h2/value/ValueDate;->getDate()Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/value/ValueDate;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    iget-wide v1, p0, Lorg/h2/value/ValueDate;->dateValue:J

    invoke-static {v0, v1, v2}, Lorg/h2/value/ValueDate;->appendDate(Ljava/lang/StringBuilder;J)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 138
    iget-wide v0, p0, Lorg/h2/value/ValueDate;->dateValue:J

    iget-wide v2, p0, Lorg/h2/value/ValueDate;->dateValue:J

    const/16 v4, 0x20

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

    .line 149
    invoke-virtual {p0}, Lorg/h2/value/ValueDate;->getDate()Ljava/sql/Date;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    return-void
.end method
