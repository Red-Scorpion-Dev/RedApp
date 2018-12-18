.class public Lorg/h2/value/ValueString;
.super Lorg/h2/value/Value;
.source "ValueString.java"


# static fields
.field private static final EMPTY:Lorg/h2/value/ValueString;


# instance fields
.field protected final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lorg/h2/value/ValueString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/h2/value/ValueString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/h2/value/ValueString;->EMPTY:Lorg/h2/value/ValueString;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/h2/value/Value;
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-static {p0, v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Z)Lorg/h2/value/Value;
    .locals 1

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 147
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/h2/value/ValueString;->EMPTY:Lorg/h2/value/ValueString;

    :goto_0
    return-object p0

    .line 149
    :cond_1
    new-instance p1, Lorg/h2/value/ValueString;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/h2/value/ValueString;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sget v0, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_MAX_PER_ELEMENT_SIZE:I

    if-le p0, v0, :cond_2

    return-object p1

    .line 153
    :cond_2
    invoke-static {p1}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    .line 46
    check-cast p1, Lorg/h2/value/ValueString;

    .line 47
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    iget-object p1, p1, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lorg/h2/value/CompareMode;->compareString(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 83
    iget-object p3, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    int-to-long v0, p3

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p1, p2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    .line 87
    iget-object p2, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/ValueString;->getNew(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 39
    instance-of v0, p1, Lorg/h2/value/ValueString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    check-cast p1, Lorg/h2/value/ValueString;

    iget-object p1, p1, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDisplaySize()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getMemory()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x30

    return v0
.end method

.method protected getNew(Ljava/lang/String;)Lorg/h2/value/Value;
    .locals 0

    .line 166
    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    return-void
.end method
