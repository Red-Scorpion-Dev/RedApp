.class Lorg/h2/expression/AggregateDataDefault;
.super Lorg/h2/expression/AggregateData;
.source "AggregateDataDefault.java"


# instance fields
.field private final aggregateType:I

.field private count:J

.field private distinctValues:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "Lorg/h2/expression/AggregateDataDefault;",
            ">;"
        }
    .end annotation
.end field

.field private m2:D

.field private mean:D

.field private value:Lorg/h2/value/Value;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/h2/expression/AggregateData;-><init>()V

    .line 32
    iput p1, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    return-void
.end method

.method private static divide(Lorg/h2/value/Value;J)Lorg/h2/value/Value;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 188
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v0

    .line 191
    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/value/ValueLong;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 192
    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0
.end method

.method private groupDistinct(Lorg/h2/engine/Database;I)V
    .locals 3

    .line 197
    iget-object v0, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 200
    iput-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    .line 201
    iget-object v0, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->keys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/h2/expression/AggregateDataDefault;->add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
    .locals 4

    .line 37
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p4, v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    if-eqz p3, :cond_2

    .line 42
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez p1, :cond_1

    .line 43
    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    .line 45
    :cond_1
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p1, p4, p0}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_2
    iget p3, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_0

    .line 112
    :pswitch_0
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p1, :cond_3

    .line 113
    invoke-virtual {p4, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_0

    .line 115
    :cond_3
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    invoke-virtual {p4}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p3

    and-long/2addr p3, v0

    invoke-static {p3, p4}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/value/ValueLong;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_0

    .line 119
    :pswitch_1
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p1, :cond_4

    .line 120
    invoke-virtual {p4, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_0

    .line 122
    :cond_4
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    invoke-virtual {p4}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p3

    or-long/2addr p3, v0

    invoke-static {p3, p4}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/value/ValueLong;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {p4, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p2, :cond_5

    .line 96
    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_0

    .line 98
    :cond_5
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_0

    .line 103
    :pswitch_3
    invoke-virtual {p4, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p2, :cond_7

    .line 105
    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_0

    .line 107
    :cond_7
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_0

    .line 82
    :pswitch_4
    invoke-virtual {p4}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    .line 83
    iget-wide p3, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    cmp-long v0, p3, v2

    if-nez v0, :cond_a

    .line 84
    iput-wide p1, p0, Lorg/h2/expression/AggregateDataDefault;->mean:D

    const-wide/16 p1, 0x0

    .line 85
    iput-wide p1, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    goto/16 :goto_0

    .line 87
    :cond_a
    iget-wide p3, p0, Lorg/h2/expression/AggregateDataDefault;->mean:D

    sub-double p3, p1, p3

    .line 88
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->mean:D

    iget-wide v2, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, p3, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->mean:D

    .line 89
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    iget-wide v2, p0, Lorg/h2/expression/AggregateDataDefault;->mean:D

    sub-double/2addr p1, v2

    mul-double p3, p3, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    goto :goto_0

    .line 58
    :pswitch_5
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p1, :cond_b

    .line 59
    invoke-static {p2}, Lorg/h2/value/DataType;->getAddProofType(I)I

    move-result p1

    invoke-virtual {p4, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto :goto_0

    .line 61
    :cond_b
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result p1

    invoke-virtual {p4, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p2, p1}, Lorg/h2/value/Value;->add(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto :goto_0

    .line 71
    :pswitch_6
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p1, p4, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    if-lez p1, :cond_f

    .line 72
    :cond_c
    iput-object p4, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto :goto_0

    .line 66
    :pswitch_7
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p1, p4, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    if-gez p1, :cond_f

    .line 67
    :cond_d
    iput-object p4, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto :goto_0

    .line 50
    :pswitch_8
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p1, :cond_e

    .line 51
    invoke-virtual {p4, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto :goto_0

    .line 53
    :cond_e
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result p1

    invoke-virtual {p4, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p2, p1}, Lorg/h2/value/Value;->add(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    :cond_f
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
    .locals 6

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    .line 134
    invoke-direct {p0, p1, p2}, Lorg/h2/expression/AggregateDataDefault;->groupDistinct(Lorg/h2/engine/Database;I)V

    :cond_0
    const/4 p1, 0x0

    .line 137
    iget p3, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    const-wide/16 v0, 0x2

    const-wide/16 v2, 0x1

    packed-switch p3, :pswitch_data_0

    .line 181
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_0

    .line 174
    :pswitch_0
    iget-wide v4, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    cmp-long p1, v4, v0

    if-gez p1, :cond_1

    .line 175
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 177
    :cond_1
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    iget-wide v4, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    goto :goto_0

    .line 167
    :pswitch_1
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 168
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 170
    :cond_2
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    iget-wide v2, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    goto :goto_0

    .line 160
    :pswitch_2
    iget-wide v4, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    cmp-long p1, v4, v0

    if-gez p1, :cond_3

    .line 161
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 163
    :cond_3
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    iget-wide v4, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    goto :goto_0

    .line 153
    :pswitch_3
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    .line 154
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 156
    :cond_4
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    iget-wide v2, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    goto :goto_0

    .line 148
    :pswitch_4
    iget-object p3, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-eqz p3, :cond_5

    .line 149
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    invoke-static {p1, v0, v1}, Lorg/h2/expression/AggregateDataDefault;->divide(Lorg/h2/value/Value;J)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_0

    .line 145
    :pswitch_5
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    :cond_5
    :goto_0
    if-nez p1, :cond_6

    .line 183
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_6
    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
