.class public final Lcom/rometools/rome/io/impl/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/rometools/rome/io/impl/NumberParser;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static parseFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    if-eqz p0, :cond_0

    .line 81
    :try_start_0
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/rometools/rome/io/impl/NumberParser;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p1

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    if-eqz p0, :cond_0

    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
