.class public Lorg/briarproject/bramble/api/data/BdfList;
.super Ljava/util/ArrayList;
.source "BdfList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private isInRange(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static varargs of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1

    .line 25
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/api/data/BdfList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

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

    .line 41
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getBoolean(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 59
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_1
    return-object p2
.end method

.method public getDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 196
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p1

    .line 197
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 194
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getDictionary(ILorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1

    .line 211
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 213
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p1

    :cond_1
    return-object p2
.end method

.method public getDouble(I)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 98
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 99
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 96
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getDouble(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 116
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 117
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getList(I)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 173
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfList;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfList;

    return-object p1

    .line 174
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 171
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getList(ILorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1

    .line 187
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 189
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfList;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfList;

    return-object p1

    :cond_1
    return-object p2
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 66
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 67
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 68
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 69
    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 70
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 64
    :cond_4
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getLong(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 88
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 89
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 90
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 91
    :cond_3
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method

.method public getOptionalBoolean(I)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 51
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 53
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getOptionalDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 205
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p1

    .line 207
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getOptionalDouble(I)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 107
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 109
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 110
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 105
    :cond_4
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getOptionalList(I)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 181
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/data/BdfList;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfList;

    return-object p1

    .line 183
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getOptionalLong(I)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 77
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 79
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 80
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 81
    :cond_3
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 82
    :cond_4
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_6
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getOptionalRaw(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 156
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    check-cast p1, [B

    return-object p1

    .line 158
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 159
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 154
    :cond_4
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getOptionalString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 132
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 134
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getRaw(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 147
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    return-object p1

    .line 148
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 149
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 145
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getRaw(I[B)[B
    .locals 1

    .line 163
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 165
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    check-cast p1, [B

    return-object p1

    .line 166
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 124
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 125
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 122
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 138
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->isInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 140
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    return-object p2
.end method
