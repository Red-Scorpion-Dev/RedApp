.class Lorg/h2/expression/AggregateDataCountAll;
.super Lorg/h2/expression/AggregateData;
.source "AggregateDataCountAll.java"


# instance fields
.field private count:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/h2/expression/AggregateData;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
    .locals 0

    if-nez p3, :cond_0

    .line 25
    iget-wide p1, p0, Lorg/h2/expression/AggregateDataCountAll;->count:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/h2/expression/AggregateDataCountAll;->count:J

    return-void

    .line 23
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
    .locals 2

    if-nez p3, :cond_1

    .line 33
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataCountAll;->count:J

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    :goto_0
    return-object p1

    .line 31
    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
