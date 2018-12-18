.class public Lorg/briarproject/bramble/api/data/BdfDictionary;
.super Ljava/util/TreeMap;
.source "BdfDictionary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final NULL_VALUE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static varargs of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 29
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 56
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 178
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p1

    .line 179
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getDictionary(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1

    .line 192
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 193
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 92
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 93
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 108
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 109
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 158
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfList;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfList;

    return-object p1

    .line 159
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getList(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1

    .line 171
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 172
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfList;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfList;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 63
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 64
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 66
    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 67
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    .line 82
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 83
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 84
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 85
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 86
    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public getOptionalBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 52
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptionalDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 186
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p1

    .line 188
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptionalDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 100
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 102
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 103
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptionalList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 165
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfList;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfList;

    return-object p1

    .line 167
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptionalLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 73
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 75
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 76
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 77
    :cond_3
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 78
    :cond_4
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptionalRaw(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 143
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    check-cast p1, [B

    return-object p1

    .line 145
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 146
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptionalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 122
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 124
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRaw(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 135
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    return-object p1

    .line 136
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 137
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getRaw(Ljava/lang/String;[B)[B
    .locals 1

    .line 150
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 151
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    return-object p1

    .line 152
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 115
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 116
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 128
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 129
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method
