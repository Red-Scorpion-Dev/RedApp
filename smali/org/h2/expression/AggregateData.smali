.class abstract Lorg/h2/expression/AggregateData;
.super Ljava/lang/Object;
.source "AggregateData.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(I)Lorg/h2/expression/AggregateData;
    .locals 1

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    .line 24
    new-instance p0, Lorg/h2/expression/AggregateDataSelectivity;

    invoke-direct {p0}, Lorg/h2/expression/AggregateDataSelectivity;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 26
    new-instance p0, Lorg/h2/expression/AggregateDataGroupConcat;

    invoke-direct {p0}, Lorg/h2/expression/AggregateDataGroupConcat;-><init>()V

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 28
    new-instance p0, Lorg/h2/expression/AggregateDataCountAll;

    invoke-direct {p0}, Lorg/h2/expression/AggregateDataCountAll;-><init>()V

    return-object p0

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 30
    new-instance p0, Lorg/h2/expression/AggregateDataCount;

    invoke-direct {p0}, Lorg/h2/expression/AggregateDataCount;-><init>()V

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 32
    new-instance p0, Lorg/h2/expression/AggregateDataHistogram;

    invoke-direct {p0}, Lorg/h2/expression/AggregateDataHistogram;-><init>()V

    return-object p0

    .line 34
    :cond_4
    new-instance v0, Lorg/h2/expression/AggregateDataDefault;

    invoke-direct {v0, p0}, Lorg/h2/expression/AggregateDataDefault;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method abstract add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
.end method

.method abstract getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
.end method
