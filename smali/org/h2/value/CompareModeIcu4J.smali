.class public Lorg/h2/value/CompareModeIcu4J;
.super Lorg/h2/value/CompareMode;
.source "CompareModeIcu4J.java"


# instance fields
.field private final collator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/value/CompareMode;-><init>(Ljava/lang/String;IZ)V

    .line 25
    invoke-static {p1, p2}, Lorg/h2/value/CompareModeIcu4J;->getIcu4jCollator(Ljava/lang/String;I)Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/value/CompareModeIcu4J;->collator:Ljava/util/Comparator;

    return-void
.end method

.method private static getIcu4jCollator(Ljava/lang/String;I)Ljava/util/Comparator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.ibm.icu.text.Collator"

    .line 48
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    .line 50
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    .line 53
    new-instance v3, Ljava/util/Locale;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-direct {v3, v4, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v3, p0}, Lorg/h2/value/CompareModeIcu4J;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v1, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/16 v3, 0x5f

    .line 59
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 61
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v3, v2

    .line 62
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {v7, p0}, Lorg/h2/value/CompareModeIcu4J;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v7, v3, v5

    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    goto :goto_0

    :cond_1
    move-object v3, v6

    :goto_0
    if-nez v3, :cond_3

    const-string v4, "getAvailableLocales"

    .line 70
    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Locale;

    check-cast v4, [Ljava/util/Locale;

    array-length v7, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v4, v8

    .line 72
    invoke-static {v9, p0}, Lorg/h2/value/CompareModeIcu4J;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 73
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v9, v3, v5

    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Comparator;

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    const-string p0, "setStrength"

    .line 81
    new-array v1, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_4
    const-string p1, "collator"

    .line 79
    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 84
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public compareString(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    if-eqz p3, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 34
    :cond_0
    iget-object p3, p0, Lorg/h2/value/CompareModeIcu4J;->collator:Ljava/util/Comparator;

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equalsChars(Ljava/lang/String;ILjava/lang/String;IZ)Z
    .locals 1

    add-int/lit8 v0, p2, 0x1

    .line 40
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p4, 0x1

    invoke-virtual {p3, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lorg/h2/value/CompareModeIcu4J;->compareString(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
