.class public Lorg/h2/value/ValueStringFixed;
.super Lorg/h2/value/ValueString;
.source "ValueStringFixed.java"


# static fields
.field private static final EMPTY:Lorg/h2/value/ValueStringFixed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lorg/h2/value/ValueStringFixed;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/h2/value/ValueStringFixed;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/h2/value/ValueStringFixed;->EMPTY:Lorg/h2/value/ValueStringFixed;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/h2/value/ValueString;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;
    .locals 2

    .line 45
    invoke-static {p0}, Lorg/h2/value/ValueStringFixed;->trimRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object p0, Lorg/h2/value/ValueStringFixed;->EMPTY:Lorg/h2/value/ValueStringFixed;

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lorg/h2/value/ValueStringFixed;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/h2/value/ValueStringFixed;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sget v1, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_MAX_PER_ELEMENT_SIZE:I

    if-le p0, v1, :cond_1

    return-object v0

    .line 53
    :cond_1
    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueStringFixed;

    return-object p0
.end method

.method private static trimRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 28
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method protected bridge synthetic getNew(Ljava/lang/String;)Lorg/h2/value/Value;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/h2/value/ValueStringFixed;->getNew(Ljava/lang/String;)Lorg/h2/value/ValueString;

    move-result-object p1

    return-object p1
.end method

.method protected getNew(Ljava/lang/String;)Lorg/h2/value/ValueString;
    .locals 0

    .line 58
    invoke-static {p1}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method
