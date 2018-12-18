.class public Lorg/h2/mvstore/db/ValueDataType;
.super Ljava/lang/Object;
.source "ValueDataType.java"

# interfaces
.implements Lorg/h2/mvstore/type/DataType;


# static fields
.field private static final BOOLEAN_FALSE:I = 0x40

.field private static final BOOLEAN_TRUE:I = 0x41

.field private static final BYTES_0_31:I = 0x64

.field private static final DECIMAL_0_1:I = 0x38

.field private static final DECIMAL_SMALL:I = 0x3b

.field private static final DECIMAL_SMALL_0:I = 0x3a

.field private static final DOUBLE_0_1:I = 0x3c

.field private static final FLOAT_0_1:I = 0x3e

.field private static final INT_0_15:I = 0x20

.field private static final INT_NEG:I = 0x42

.field private static final LONG_0_7:I = 0x30

.field private static final LONG_NEG:I = 0x43

.field private static final SPATIAL_KEY_2D:I = 0x84

.field private static final STRING_0_31:I = 0x44


# instance fields
.field final compareMode:Lorg/h2/value/CompareMode;

.field final handler:Lorg/h2/store/DataHandler;

.field final sortTypes:[I

.field spatialType:Lorg/h2/mvstore/rtree/SpatialDataType;


# direct methods
.method public constructor <init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/h2/mvstore/db/ValueDataType;->compareMode:Lorg/h2/value/CompareMode;

    .line 80
    iput-object p2, p0, Lorg/h2/mvstore/db/ValueDataType;->handler:Lorg/h2/store/DataHandler;

    .line 81
    iput-object p3, p0, Lorg/h2/mvstore/db/ValueDataType;->sortTypes:[I

    return-void
.end method

.method private compareValues(Lorg/h2/value/Value;Lorg/h2/value/Value;I)I
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v1, 0x1

    if-nez p2, :cond_2

    return v1

    .line 132
    :cond_2
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 133
    :goto_0
    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-nez v2, :cond_7

    if-eqz v0, :cond_5

    goto :goto_1

    .line 137
    :cond_5
    iget-object v0, p0, Lorg/h2/mvstore/db/ValueDataType;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_6

    neg-int p1, p1

    :cond_6
    return p1

    .line 135
    :cond_7
    :goto_1
    invoke-static {v2, p3}, Lorg/h2/result/SortOrder;->compareNull(ZI)I

    move-result p1

    return p1
.end method

.method private static getMemory(Lorg/h2/value/Value;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/Value;->getMemory()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getSpatialDataType()Lorg/h2/mvstore/rtree/SpatialDataType;
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/h2/mvstore/db/ValueDataType;->spatialType:Lorg/h2/mvstore/rtree/SpatialDataType;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/h2/mvstore/rtree/SpatialDataType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/h2/mvstore/rtree/SpatialDataType;-><init>(I)V

    iput-object v0, p0, Lorg/h2/mvstore/db/ValueDataType;->spatialType:Lorg/h2/mvstore/rtree/SpatialDataType;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/ValueDataType;->spatialType:Lorg/h2/mvstore/rtree/SpatialDataType;

    return-object v0
.end method

.method private static readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 636
    invoke-static {p0}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 637
    invoke-static {p0, v0}, Lorg/h2/mvstore/DataUtils;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 0

    .line 632
    invoke-static {p0, p1}, Lorg/h2/mvstore/DataUtils;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 9

    .line 453
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    if-eqz v1, :cond_b

    const/16 v0, 0x84

    if-eq v1, v0, :cond_a

    const v2, 0x15fae

    const-wide/32 v3, 0xf4240

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v3, 0x20

    const/16 v4, 0x30

    if-lt v1, v3, :cond_0

    if-ge v1, v4, :cond_0

    sub-int/2addr v1, v3

    .line 608
    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1

    :cond_0
    if-lt v1, v4, :cond_1

    const/16 v3, 0x38

    if-ge v1, v3, :cond_1

    sub-int/2addr v1, v4

    int-to-long v0, v1

    .line 610
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v3, 0x64

    if-lt v1, v3, :cond_2

    if-ge v1, v0, :cond_2

    sub-int/2addr v1, v3

    .line 613
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v0

    .line 614
    invoke-virtual {p1, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 615
    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x44

    if-lt v1, v0, :cond_3

    if-ge v1, v3, :cond_3

    sub-int/2addr v1, v0

    .line 617
    invoke-static {p1, v1}, Lorg/h2/mvstore/db/ValueDataType;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 619
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 466
    :pswitch_0
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    .line 462
    :pswitch_1
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p1

    neg-int p1, p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x1

    .line 458
    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    .line 460
    :pswitch_3
    invoke-static {v5}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    :pswitch_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 538
    invoke-static {p1}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    .line 536
    invoke-static {p1}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 542
    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-wide/16 v0, 0x0

    .line 540
    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1

    .line 481
    :pswitch_8
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 482
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1

    .line 478
    :pswitch_9
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1

    .line 476
    :pswitch_a
    sget-object p1, Lorg/h2/value/ValueDecimal;->ONE:Ljava/lang/Object;

    return-object p1

    .line 474
    :pswitch_b
    sget-object p1, Lorg/h2/value/ValueDecimal;->ZERO:Ljava/lang/Object;

    return-object p1

    .line 510
    :pswitch_c
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 511
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v5, v2

    .line 512
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p1

    int-to-short p1, p1

    .line 513
    invoke-static {v0, v1, v5, v6, p1}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p1

    return-object p1

    .line 506
    :pswitch_d
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 507
    invoke-static {v0, v1}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object p1

    return-object p1

    .line 599
    :pswitch_e
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 600
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    .line 601
    invoke-virtual {p1, v1, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 602
    invoke-static {v1}, Lorg/h2/value/ValueGeometry;->get([B)Lorg/h2/value/ValueGeometry;

    move-result-object p1

    return-object p1

    .line 534
    :pswitch_f
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object p1

    return-object p1

    .line 528
    :pswitch_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueUuid;->get(JJ)Lorg/h2/value/ValueUuid;

    move-result-object p1

    return-object p1

    .line 522
    :pswitch_11
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 523
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    .line 524
    invoke-virtual {p1, v1, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 525
    iget-object v0, p0, Lorg/h2/mvstore/db/ValueDataType;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p1, v1, v0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p1

    return-object p1

    .line 577
    :pswitch_12
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    .line 578
    invoke-virtual {v0, v5}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    .line 579
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 581
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v7

    invoke-virtual {v0, v3, v4, v6, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_5

    .line 596
    invoke-static {v0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object p1

    return-object p1

    .line 590
    :cond_5
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_6

    .line 592
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/ValueDataType;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/value/Value;

    invoke-virtual {v4}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 594
    :cond_6
    invoke-virtual {v0, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 569
    :pswitch_13
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 570
    new-array v1, v0, [Lorg/h2/value/Value;

    :goto_3
    if-ge v5, v0, :cond_7

    .line 572
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/ValueDataType;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/Value;

    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 574
    :cond_7
    invoke-static {v1}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    return-object p1

    .line 551
    :pswitch_14
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 553
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v2

    .line 554
    invoke-virtual {p1, v2, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 555
    invoke-static {v1, v2}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 v3, -0x3

    if-ne v0, v3, :cond_9

    .line 557
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 558
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 559
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    .line 560
    iget-object v2, p0, Lorg/h2/mvstore/db/ValueDataType;->handler:Lorg/h2/store/DataHandler;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1

    .line 564
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lob type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 532
    :pswitch_15
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object p1

    return-object p1

    .line 530
    :pswitch_16
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 516
    :pswitch_17
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 517
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    .line 518
    invoke-virtual {p1, v1, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 519
    invoke-static {v1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object p1

    return-object p1

    .line 501
    :pswitch_18
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 502
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v5, v2

    .line 503
    invoke-static {v0, v1, v5, v6}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    return-object p1

    .line 494
    :pswitch_19
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object p1

    return-object p1

    .line 497
    :pswitch_1a
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    mul-long v0, v0, v3

    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 498
    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p1

    return-object p1

    .line 547
    :pswitch_1b
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->reverse(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p1

    return-object p1

    .line 544
    :pswitch_1c
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p1

    return-object p1

    .line 486
    :pswitch_1d
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 487
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 488
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v2

    .line 489
    invoke-virtual {p1, v2, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 490
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 491
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-static {v1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1

    .line 468
    :pswitch_1e
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    .line 464
    :pswitch_1f
    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1

    .line 472
    :pswitch_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p1

    return-object p1

    .line 470
    :pswitch_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p1

    return-object p1

    .line 605
    :cond_a
    invoke-direct {p0}, Lorg/h2/mvstore/db/ValueDataType;->getSpatialDataType()Lorg/h2/mvstore/rtree/SpatialDataType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/rtree/SpatialDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 456
    :cond_b
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readVarInt(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 624
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private static readVarLong(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 628
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static writeString(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/String;)V
    .locals 1

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 444
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putStringData(Ljava/lang/String;I)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method

.method private writeValue(Lorg/h2/mvstore/WriteBuffer;Lorg/h2/value/Value;)V
    .locals 10

    .line 187
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 188
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    return-void

    .line 191
    :cond_0
    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v2, 0x3f

    const/16 v3, 0x20

    const-wide/32 v4, 0xf4240

    packed-switch v0, :pswitch_data_0

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_4

    .line 288
    :pswitch_0
    check-cast p2, Lorg/h2/value/ValueTimestampTimeZone;

    .line 289
    invoke-virtual {p2}, Lorg/h2/value/ValueTimestampTimeZone;->getDateValue()J

    move-result-wide v1

    .line 290
    invoke-virtual {p2}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeNanos()J

    move-result-wide v6

    .line 291
    div-long v8, v6, v4

    mul-long v4, v4, v8

    sub-long/2addr v6, v4

    int-to-byte v0, v0

    .line 293
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeZoneOffsetMins()S

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 282
    :pswitch_1
    check-cast p2, Lorg/h2/value/ValueTimestampUtc;

    .line 283
    invoke-virtual {p2}, Lorg/h2/value/ValueTimestampUtc;->getUtcDateTimeNanos()J

    move-result-wide v1

    int-to-byte p2, v0

    .line 284
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 430
    :pswitch_2
    invoke-virtual {p2}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object p2

    .line 431
    array-length v1, p2

    int-to-byte v0, v0

    .line 432
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 321
    :pswitch_3
    check-cast p2, Lorg/h2/value/ValueUuid;

    int-to-byte v0, v0

    .line 322
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/ValueUuid;->getHigh()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putLong(J)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/ValueUuid;->getLow()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 301
    :pswitch_4
    invoke-virtual {p2}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p2

    int-to-byte v0, v0

    .line 302
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    :pswitch_5
    int-to-byte v0, v0

    .line 399
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 401
    :try_start_0
    check-cast p2, Lorg/h2/value/ValueResultSet;

    invoke-virtual {p2}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p2

    .line 402
    invoke-interface {p2}, Ljava/sql/ResultSet;->beforeFirst()V

    .line 403
    invoke-interface {p2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    .line 405
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 407
    invoke-interface {v0, v3}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/h2/mvstore/db/ValueDataType;->writeString(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/String;)V

    .line 408
    invoke-interface {v0, v3}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    .line 412
    :cond_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 413
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 415
    invoke-static {v0, v3}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v4

    const/4 v5, 0x0

    .line 417
    invoke-static {v5, p2, v3, v4}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v4

    .line 419
    invoke-direct {p0, p1, v4}, Lorg/h2/mvstore/db/ValueDataType;->writeValue(Lorg/h2/mvstore/WriteBuffer;Lorg/h2/value/Value;)V

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 423
    invoke-interface {p2}, Ljava/sql/ResultSet;->beforeFirst()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 425
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 391
    :pswitch_6
    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    int-to-byte v0, v0

    .line 392
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v0

    array-length v2, p2

    invoke-virtual {v0, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    .line 393
    array-length v0, p2

    :goto_2
    if-ge v1, v0, :cond_13

    aget-object v2, p2, v1

    .line 394
    invoke-direct {p0, p1, v2}, Lorg/h2/mvstore/db/ValueDataType;->writeValue(Lorg/h2/mvstore/WriteBuffer;Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_7
    int-to-byte v0, v0

    .line 376
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 377
    check-cast p2, Lorg/h2/value/ValueLobDb;

    .line 378
    invoke-virtual {p2}, Lorg/h2/value/ValueLobDb;->getSmall()[B

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, -0x3

    .line 380
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 385
    :cond_3
    array-length p2, v0

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    :pswitch_8
    int-to-byte v0, v0

    .line 341
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 342
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/mvstore/db/ValueDataType;->writeString(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 328
    :pswitch_9
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    .line 329
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_4

    add-int/lit8 v0, v1, 0x44

    int-to-byte v0, v0

    .line 331
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/h2/mvstore/WriteBuffer;->putStringData(Ljava/lang/String;I)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    :cond_4
    int-to-byte v0, v0

    .line 334
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 335
    invoke-static {p1, p2}, Lorg/h2/mvstore/db/ValueDataType;->writeString(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 308
    :pswitch_a
    invoke-virtual {p2}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p2

    .line 309
    array-length v1, p2

    if-ge v1, v3, :cond_5

    add-int/lit8 v1, v1, 0x64

    int-to-byte v0, v1

    .line 311
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    :cond_5
    int-to-byte v0, v0

    .line 314
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 270
    :pswitch_b
    check-cast p2, Lorg/h2/value/ValueTimestamp;

    .line 271
    invoke-virtual {p2}, Lorg/h2/value/ValueTimestamp;->getDateValue()J

    move-result-wide v1

    .line 272
    invoke-virtual {p2}, Lorg/h2/value/ValueTimestamp;->getTimeNanos()J

    move-result-wide v6

    .line 273
    div-long v8, v6, v4

    mul-long v4, v4, v8

    sub-long/2addr v6, v4

    int-to-byte p2, v0

    .line 275
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 265
    :pswitch_c
    check-cast p2, Lorg/h2/value/ValueDate;

    invoke-virtual {p2}, Lorg/h2/value/ValueDate;->getDateValue()J

    move-result-wide v1

    int-to-byte p2, v0

    .line 266
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 255
    :pswitch_d
    check-cast p2, Lorg/h2/value/ValueTime;

    .line 256
    invoke-virtual {p2}, Lorg/h2/value/ValueTime;->getNanos()J

    move-result-wide v1

    .line 257
    div-long v6, v1, v4

    mul-long v4, v4, v6

    sub-long/2addr v1, v4

    int-to-byte p2, v0

    .line 259
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 360
    :pswitch_e
    invoke-virtual {p2}, Lorg/h2/value/Value;->getFloat()F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_6

    .line 362
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 364
    :cond_6
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    .line 365
    sget v1, Lorg/h2/value/ValueFloat;->ZERO_BITS:I

    if-ne p2, v1, :cond_7

    const/16 p2, 0x3e

    .line 366
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    :cond_7
    int-to-byte v0, v0

    .line 368
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->reverse(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 345
    :pswitch_f
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v1, v3

    if-nez p2, :cond_8

    const/16 p2, 0x3d

    .line 347
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 349
    :cond_8
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 350
    sget-wide v3, Lorg/h2/value/ValueDouble;->ZERO_BITS:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_9

    const/16 p2, 0x3c

    .line 351
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    :cond_9
    int-to-byte p2, v0

    .line 353
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 226
    :pswitch_10
    invoke-virtual {p2}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p2

    .line 227
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 p2, 0x38

    .line 228
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 229
    :cond_a
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 p2, 0x39

    .line 230
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 232
    :cond_b
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 233
    invoke-virtual {p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p2

    .line 234
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-gt v3, v2, :cond_d

    if-nez v1, :cond_c

    const/16 v0, 0x3a

    .line 237
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    :cond_c
    const/16 v0, 0x3b

    .line 240
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 245
    :cond_d
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    int-to-byte v0, v0

    .line 246
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    .line 215
    :pswitch_11
    invoke-virtual {p2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_e

    const/16 p2, 0x43

    .line 217
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    neg-long v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto/16 :goto_4

    :cond_e
    const-wide/16 v3, 0x8

    cmp-long p2, v1, v3

    if-gez p2, :cond_f

    const-wide/16 v3, 0x30

    add-long/2addr v1, v3

    long-to-int p2, v1

    int-to-byte p2, p2

    .line 219
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_4

    :cond_f
    int-to-byte p2, v0

    .line 221
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_4

    .line 204
    :pswitch_12
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    if-gez p2, :cond_10

    const/16 v0, 0x42

    .line 206
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    neg-int p2, p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_4

    :cond_10
    const/16 v1, 0x10

    if-ge p2, v1, :cond_11

    add-int/2addr p2, v3

    int-to-byte p2, p2

    .line 208
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_4

    :cond_11
    int-to-byte v0, v0

    .line 210
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_4

    :pswitch_13
    int-to-byte v0, v0

    .line 201
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/Value;->getShort()S

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putShort(S)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_4

    :pswitch_14
    int-to-byte v0, v0

    .line 198
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/Value;->getByte()B

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_4

    .line 194
    :pswitch_15
    invoke-virtual {p2}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_12

    const/16 p2, 0x41

    goto :goto_3

    :cond_12
    const/16 p2, 0x40

    :goto_3
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    :cond_13
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 96
    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueArray;

    if-eqz v1, :cond_5

    instance-of v1, p2, Lorg/h2/value/ValueArray;

    if-eqz v1, :cond_5

    .line 97
    check-cast p1, Lorg/h2/value/ValueArray;

    invoke-virtual {p1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p1

    .line 98
    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    .line 99
    array-length v1, p1

    .line 100
    array-length v2, p2

    .line 101
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 103
    iget-object v5, p0, Lorg/h2/mvstore/db/ValueDataType;->sortTypes:[I

    aget v5, v5, v4

    .line 104
    aget-object v6, p1, v4

    aget-object v7, p2, v4

    invoke-direct {p0, v6, v7, v5}, Lorg/h2/mvstore/db/ValueDataType;->compareValues(Lorg/h2/value/Value;Lorg/h2/value/Value;I)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v3, v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-ge v3, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0

    .line 116
    :cond_5
    check-cast p1, Lorg/h2/value/Value;

    check-cast p2, Lorg/h2/value/Value;

    invoke-direct {p0, p1, p2, v0}, Lorg/h2/mvstore/db/ValueDataType;->compareValues(Lorg/h2/value/Value;Lorg/h2/value/Value;I)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 649
    :cond_0
    instance-of v0, p1, Lorg/h2/mvstore/db/ValueDataType;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 652
    :cond_1
    check-cast p1, Lorg/h2/mvstore/db/ValueDataType;

    .line 653
    iget-object v0, p0, Lorg/h2/mvstore/db/ValueDataType;->compareMode:Lorg/h2/value/CompareMode;

    iget-object v2, p1, Lorg/h2/mvstore/db/ValueDataType;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {v0, v2}, Lorg/h2/value/CompareMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 656
    :cond_2
    iget-object v0, p0, Lorg/h2/mvstore/db/ValueDataType;->sortTypes:[I

    iget-object p1, p1, Lorg/h2/mvstore/db/ValueDataType;->sortTypes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    .line 146
    instance-of v0, p1, Lorg/h2/mvstore/rtree/SpatialKey;

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lorg/h2/mvstore/db/ValueDataType;->getSpatialDataType()Lorg/h2/mvstore/rtree/SpatialDataType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/rtree/SpatialDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 149
    :cond_0
    check-cast p1, Lorg/h2/value/Value;

    invoke-static {p1}, Lorg/h2/mvstore/db/ValueDataType;->getMemory(Lorg/h2/value/Value;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 642
    iget-object v0, p0, Lorg/h2/mvstore/db/ValueDataType;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {v0}, Lorg/h2/value/CompareMode;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/h2/mvstore/db/ValueDataType;->sortTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/ValueDataType;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/ValueDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 177
    instance-of v0, p2, Lorg/h2/mvstore/rtree/SpatialKey;

    if-eqz v0, :cond_0

    const/16 v0, -0x7c

    .line 178
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 179
    invoke-direct {p0}, Lorg/h2/mvstore/db/ValueDataType;->getSpatialDataType()Lorg/h2/mvstore/rtree/SpatialDataType;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/rtree/SpatialDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    .line 182
    :cond_0
    check-cast p2, Lorg/h2/value/Value;

    .line 183
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/db/ValueDataType;->writeValue(Lorg/h2/mvstore/WriteBuffer;Lorg/h2/value/Value;)V

    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 166
    aget-object v0, p2, p4

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/db/ValueDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
