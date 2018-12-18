.class public Lorg/h2/store/Data;
.super Ljava/lang/Object;
.source "Data.java"


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

.field public static final LENGTH_INT:I = 0x4

.field private static final LENGTH_LONG:I = 0x8

.field private static final LOCAL_DATE:I = 0x85

.field private static final LOCAL_TIME:I = 0x84

.field private static final LOCAL_TIMESTAMP:I = 0x86

.field private static final LONG_0_7:I = 0x30

.field private static final LONG_NEG:I = 0x43

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final STORE_LOCAL_TIME:Z = false

.field private static final STRING_0_31:I = 0x44


# instance fields
.field private data:[B

.field private final handler:Lorg/h2/store/DataHandler;

.field private pos:I


# direct methods
.method private constructor <init>(Lorg/h2/store/DataHandler;[B)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    .line 120
    iput-object p2, p0, Lorg/h2/store/Data;->data:[B

    return-void
.end method

.method public static copyString(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 1364
    new-array v0, v0, [C

    .line 1365
    new-instance v1, Lorg/h2/store/Data;

    const/16 v2, 0x3000

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/h2/store/Data;-><init>(Lorg/h2/store/DataHandler;[B)V

    .line 1367
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-gez v2, :cond_0

    return-void

    .line 1371
    :cond_0
    invoke-direct {v1, v0, v2}, Lorg/h2/store/Data;->writeStringWithoutLength([CI)V

    .line 1372
    iget-object v2, v1, Lorg/h2/store/Data;->data:[B

    const/4 v3, 0x0

    iget v4, v1, Lorg/h2/store/Data;->pos:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1373
    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    goto :goto_0
.end method

.method public static create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;
    .locals 1

    .line 314
    new-instance v0, Lorg/h2/store/Data;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Lorg/h2/store/Data;-><init>(Lorg/h2/store/DataHandler;[B)V

    return-object v0
.end method

.method public static create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;
    .locals 1

    .line 326
    new-instance v0, Lorg/h2/store/Data;

    invoke-direct {v0, p0, p1}, Lorg/h2/store/Data;-><init>(Lorg/h2/store/DataHandler;[B)V

    return-object v0
.end method

.method private expand(I)V
    .locals 3

    .line 1336
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    array-length v0, v0

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p1

    .line 1339
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget-object v1, p0, Lorg/h2/store/Data;->data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1340
    iput-object p1, p0, Lorg/h2/store/Data;->data:[B

    return-void
.end method

.method public static getStringLen(Ljava/lang/String;)I
    .locals 1

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 178
    invoke-static {p0, v0}, Lorg/h2/store/Data;->getStringWithoutLengthLen(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v0

    add-int/2addr p0, v0

    return p0
.end method

.method private static getStringWithoutLengthLen(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-lt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    const/16 v3, 0x80

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v1

    return p1
.end method

.method public static getValueLen(Lorg/h2/value/Value;Lorg/h2/store/DataHandler;)I
    .locals 8

    .line 935
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 938
    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v2, 0x20

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1052
    :pswitch_0
    check-cast p0, Lorg/h2/value/ValueTimestampTimeZone;

    .line 1053
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getDateValue()J

    move-result-wide v2

    .line 1054
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeNanos()J

    move-result-wide v4

    .line 1055
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeZoneOffsetMins()S

    move-result p0

    .line 1056
    invoke-static {v2, v3}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {v4, v5}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 1048
    :pswitch_1
    check-cast p0, Lorg/h2/value/ValueTimestampUtc;

    .line 1049
    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampUtc;->getUtcDateTimeNanos()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :pswitch_2
    const/16 p0, 0x11

    return p0

    .line 1061
    :pswitch_3
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p0

    .line 1062
    array-length p1, p0

    invoke-static {p1}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p1

    add-int/2addr p1, v1

    array-length p0, p0

    add-int/2addr p1, p0

    return p1

    .line 1124
    :pswitch_4
    :try_start_0
    check-cast p0, Lorg/h2/value/ValueResultSet;

    invoke-virtual {p0}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p0

    .line 1125
    invoke-interface {p0}, Ljava/sql/ResultSet;->beforeFirst()V

    .line 1126
    invoke-interface {p0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 1127
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    .line 1128
    invoke-static {v2}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v4

    add-int/2addr v4, v1

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1130
    invoke-interface {v0, v4}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/store/Data;->getStringLen(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1131
    invoke-interface {v0, v4}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v6

    invoke-static {v6}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 1132
    invoke-interface {v0, v4}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v6

    invoke-static {v6}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 1133
    invoke-interface {v0, v4}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v6

    invoke-static {v6}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    .line 1135
    :cond_1
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1138
    invoke-static {v0, v4}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v6

    const/4 v7, 0x0

    .line 1139
    invoke-static {v7, p0, v4, v6}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v6

    .line 1140
    invoke-static {v6, p1}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;Lorg/h2/store/DataHandler;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    add-int/2addr v5, v1

    .line 1144
    invoke-interface {p0}, Ljava/sql/ResultSet;->beforeFirst()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p0

    .line 1146
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 1114
    :pswitch_5
    check-cast p0, Lorg/h2/value/ValueArray;

    invoke-virtual {p0}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p0

    .line 1115
    array-length v0, p0

    invoke-static {v0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 1116
    array-length v1, p0

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v2, p0, v3

    .line 1117
    invoke-static {v2, p1}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;Lorg/h2/store/DataHandler;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v0

    .line 1077
    :pswitch_6
    instance-of v0, p0, Lorg/h2/value/ValueLob;

    if-eqz v0, :cond_6

    .line 1078
    check-cast p0, Lorg/h2/value/ValueLob;

    .line 1079
    invoke-virtual {p0, p1}, Lorg/h2/value/ValueLob;->convertToFileIfRequired(Lorg/h2/store/DataHandler;)V

    .line 1080
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getSmall()[B

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, -0x1

    .line 1083
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->isLinkedToTable()Z

    move-result v0

    const/4 v2, -0x2

    if-nez v0, :cond_4

    const/4 p1, -0x2

    .line 1086
    :cond_4
    invoke-static {p1}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 1087
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getTableId()I

    move-result v3

    invoke-static {v3}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 1088
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getObjectId()I

    move-result v3

    invoke-static {v3}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 1089
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getPrecision()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    if-ne p1, v2, :cond_8

    .line 1092
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/store/Data;->getStringLen(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_3

    .line 1095
    :cond_5
    array-length p0, p1

    invoke-static {p0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p0

    add-int/2addr p0, v1

    .line 1096
    array-length p1, p1

    add-int v0, p0, p1

    goto :goto_3

    .line 1099
    :cond_6
    check-cast p0, Lorg/h2/value/ValueLobDb;

    .line 1100
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getSmall()[B

    move-result-object p1

    if-nez p1, :cond_7

    const/4 p1, -0x3

    .line 1102
    invoke-static {p1}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p1

    add-int/2addr p1, v1

    .line 1103
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result v0

    invoke-static {v0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 1104
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v0

    add-int/2addr p1, v0

    .line 1105
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int v0, p1, p0

    goto :goto_3

    .line 1107
    :cond_7
    array-length p0, p1

    invoke-static {p0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p0

    add-int/2addr p0, v1

    .line 1108
    array-length p1, p1

    add-int v0, p0, p1

    :cond_8
    :goto_3
    return v0

    .line 997
    :pswitch_7
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/store/Data;->getStringLen(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 988
    :pswitch_8
    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    .line 989
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v2, :cond_9

    .line 991
    invoke-static {p0, p1}, Lorg/h2/store/Data;->getStringWithoutLengthLen(Ljava/lang/String;I)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 993
    :cond_9
    invoke-static {p0}, Lorg/h2/store/Data;->getStringLen(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 1065
    :pswitch_9
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p0

    .line 1066
    array-length p1, p0

    if-ge p1, v2, :cond_a

    .line 1068
    array-length p0, p0

    add-int/2addr p0, v1

    return p0

    .line 1070
    :cond_a
    array-length p1, p0

    invoke-static {p1}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p1

    add-int/2addr p1, v1

    array-length p0, p0

    add-int/2addr p1, p0

    return p1

    .line 1043
    :pswitch_a
    invoke-virtual {p0}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p0

    .line 1044
    invoke-static {p0}, Lorg/h2/util/DateTimeUtils;->getTimeLocalWithoutDst(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    const v0, 0xf4240

    rem-int/2addr p0, v0

    invoke-static {p0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 1030
    :pswitch_b
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/DateTimeUtils;->getTimeLocalWithoutDst(Ljava/util/Date;)J

    move-result-wide p0

    const-wide/32 v2, 0xea60

    .line 1031
    div-long/2addr p0, v2

    invoke-static {p0, p1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 1024
    :pswitch_c
    invoke-virtual {p0}, Lorg/h2/value/Value;->getTime()Ljava/sql/Time;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/DateTimeUtils;->getTimeLocalWithoutDst(Ljava/util/Date;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 977
    :pswitch_d
    invoke-virtual {p0}, Lorg/h2/value/Value;->getFloat()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-nez p1, :cond_b

    return v1

    .line 981
    :cond_b
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    .line 982
    sget p1, Lorg/h2/value/ValueFloat;->ZERO_BITS:I

    if-ne p0, p1, :cond_c

    return v1

    .line 985
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->reverse(I)I

    move-result p0

    invoke-static {p0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 966
    :pswitch_e
    invoke-virtual {p0}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v2

    if-nez v0, :cond_d

    return v1

    .line 970
    :cond_d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    .line 971
    sget-wide v2, Lorg/h2/value/ValueDouble;->ZERO_BITS:J

    cmp-long v0, p0, v2

    if-nez v0, :cond_e

    return v1

    .line 974
    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Long;->reverse(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 999
    :pswitch_f
    invoke-virtual {p0}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p0

    .line 1000
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    return v1

    .line 1002
    :cond_f
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v1

    .line 1005
    :cond_10
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    .line 1006
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    .line 1007
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_12

    if-nez p1, :cond_11

    .line 1010
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 1012
    :cond_11
    invoke-static {p1}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 1014
    :cond_12
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 1015
    invoke-static {p1}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p1

    add-int/2addr p1, v1

    array-length v0, p0

    invoke-static {v0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result v0

    add-int/2addr p1, v0

    array-length p0, p0

    add-int/2addr p1, p0

    return p1

    .line 956
    :pswitch_10
    invoke-virtual {p0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-gez v0, :cond_13

    neg-long p0, p0

    .line 958
    invoke-static {p0, p1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_13
    const-wide/16 v2, 0x8

    cmp-long v0, p0, v2

    if-gez v0, :cond_14

    return v1

    .line 962
    :cond_14
    invoke-static {p0, p1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    .line 946
    :pswitch_11
    invoke-virtual {p0}, Lorg/h2/value/Value;->getInt()I

    move-result p0

    if-gez p0, :cond_15

    neg-int p0, p0

    .line 948
    invoke-static {p0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_15
    const/16 p1, 0x10

    if-ge p0, p1, :cond_16

    return v1

    .line 952
    :cond_16
    invoke-static {p0}, Lorg/h2/store/Data;->getVarIntLen(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :pswitch_12
    const/4 p0, 0x3

    return p0

    :pswitch_13
    const/4 p0, 0x2

    return p0

    :pswitch_14
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getVarIntLen(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static getVarLongLen(J)I
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readString(I)Ljava/lang/String;
    .locals 6

    .line 226
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    .line 227
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    .line 228
    new-array v2, p1, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    add-int/lit8 v4, v1, 0x1

    .line 230
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x80

    if-ge v1, v5, :cond_0

    int-to-char v1, v1

    .line 232
    aput-char v1, v2, v3

    :goto_1
    move v1, v4

    goto :goto_2

    :cond_0
    const/16 v5, 0xe0

    if-lt v1, v5, :cond_1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v5, v4, 0x1

    .line 234
    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v1, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v2, v3

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v5, v4, 0x1

    .line 238
    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_2
    iput v1, p0, Lorg/h2/store/Data;->pos:I

    .line 243
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private readVarIntRest(I)I
    .locals 3

    and-int/lit8 p1, p1, 0x7f

    .line 1250
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-ltz v0, :cond_0

    .line 1252
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/h2/store/Data;->pos:I

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p1, v0

    return p1

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p1, v0

    .line 1256
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    if-ltz v0, :cond_1

    .line 1258
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/h2/store/Data;->pos:I

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p1, v0

    return p1

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p1, v0

    .line 1262
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    if-ltz v0, :cond_2

    .line 1264
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/h2/store/Data;->pos:I

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p1, v0

    return p1

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    .line 1267
    iget-object v1, p0, Lorg/h2/store/Data;->data:[B

    iget v2, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1268
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/h2/store/Data;->pos:I

    return p1
.end method

.method private writeStringWithoutLength(Ljava/lang/String;I)V
    .locals 6

    .line 268
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    .line 269
    iget-object v1, p0, Lorg/h2/store/Data;->data:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 271
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    .line 273
    aput-byte v3, v1, v0

    :goto_1
    move v0, v4

    goto :goto_2

    :cond_0
    const/16 v4, 0x800

    if-lt v3, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 275
    aput-byte v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    .line 276
    aput-byte v5, v1, v4

    add-int/lit8 v4, v0, 0x1

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 277
    aput-byte v3, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 279
    aput-byte v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 280
    aput-byte v3, v1, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_2
    iput v0, p0, Lorg/h2/store/Data;->pos:I

    return-void
.end method

.method private writeStringWithoutLength([CI)V
    .locals 6

    .line 287
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    .line 288
    iget-object v1, p0, Lorg/h2/store/Data;->data:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 290
    aget-char v3, p1, v2

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    .line 292
    aput-byte v3, v1, v0

    :goto_1
    move v0, v4

    goto :goto_2

    :cond_0
    const/16 v4, 0x800

    if-lt v3, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 294
    aput-byte v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    .line 295
    aput-byte v5, v1, v4

    add-int/lit8 v4, v0, 0x1

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 296
    aput-byte v3, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 298
    aput-byte v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 299
    aput-byte v3, v1, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_2
    iput v0, p0, Lorg/h2/store/Data;->pos:I

    return-void
.end method


# virtual methods
.method public checkCapacity(I)V
    .locals 2

    .line 1329
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/h2/store/Data;->data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1331
    invoke-direct {p0, p1}, Lorg/h2/store/Data;->expand(I)V

    :cond_0
    return-void
.end method

.method public fillAligned()V
    .locals 2

    .line 1349
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    move-result v0

    .line 1350
    iput v0, p0, Lorg/h2/store/Data;->pos:I

    .line 1351
    iget-object v1, p0, Lorg/h2/store/Data;->data:[B

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 1352
    iget-object v1, p0, Lorg/h2/store/Data;->data:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    return-object v0
.end method

.method public getHandler()Lorg/h2/store/DataHandler;
    .locals 1

    .line 1378
    iget-object v0, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    return-object v0
.end method

.method public getValueLen(Lorg/h2/value/Value;)I
    .locals 1

    .line 924
    iget-object v0, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p1, v0}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;Lorg/h2/store/DataHandler;)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 336
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    return v0
.end method

.method public read([BII)V
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    iget p1, p0, Lorg/h2/store/Data;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/h2/store/Data;->pos:I

    return-void
.end method

.method public readByte()B
    .locals 3

    .line 395
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readInt()I
    .locals 3

    .line 160
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    .line 161
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iget v2, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget v2, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    .line 165
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/h2/store/Data;->pos:I

    return v1
.end method

.method public readLong()J
    .locals 6

    .line 404
    invoke-virtual {p0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readShortInt()S
    .locals 4

    .line 1183
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    .line 1184
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/h2/store/Data;->pos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 213
    invoke-direct {p0, v0}, Lorg/h2/store/Data;->readString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/h2/value/Value;
    .locals 10

    .line 727
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const-wide/32 v3, 0xf4240

    packed-switch v1, :pswitch_data_2

    const/16 v0, 0x20

    const/16 v3, 0x30

    if-lt v1, v0, :cond_0

    if-ge v1, v3, :cond_0

    sub-int/2addr v1, v0

    .line 902
    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    :cond_0
    if-lt v1, v3, :cond_1

    const/16 v0, 0x38

    if-ge v1, v0, :cond_1

    sub-int/2addr v1, v3

    int-to-long v0, v1

    .line 904
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x64

    if-lt v1, v0, :cond_2

    const/16 v3, 0x84

    if-ge v1, v3, :cond_2

    sub-int/2addr v1, v0

    .line 907
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v0

    .line 908
    invoke-virtual {p0, v0, v2, v1}, Lorg/h2/store/Data;->read([BII)V

    .line 909
    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v2, 0x44

    if-lt v1, v2, :cond_3

    if-ge v1, v0, :cond_3

    sub-int/2addr v1, v2

    .line 911
    invoke-direct {p0, v1}, Lorg/h2/store/Data;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :cond_3
    const v0, 0x15fae

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 781
    :pswitch_0
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    .line 782
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v2

    add-long/2addr v5, v2

    .line 783
    invoke-static {v0, v1, v5, v6}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    .line 766
    :pswitch_1
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    .line 773
    :pswitch_2
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    mul-long v0, v0, v3

    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 774
    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    .line 740
    :pswitch_3
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 736
    :pswitch_4
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 732
    :pswitch_5
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    .line 734
    :pswitch_6
    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 828
    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_8
    const/4 v0, 0x0

    .line 826
    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    :pswitch_9
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 832
    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    :pswitch_a
    const-wide/16 v0, 0x0

    .line 830
    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 754
    :pswitch_b
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 755
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 752
    :pswitch_c
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 750
    :pswitch_d
    sget-object v0, Lorg/h2/value/ValueDecimal;->ONE:Ljava/lang/Object;

    check-cast v0, Lorg/h2/value/ValueDecimal;

    return-object v0

    .line 748
    :pswitch_e
    sget-object v0, Lorg/h2/value/ValueDecimal;->ZERO:Ljava/lang/Object;

    check-cast v0, Lorg/h2/value/ValueDecimal;

    return-object v0

    .line 794
    :pswitch_f
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    .line 795
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v2

    .line 796
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v4

    int-to-short v4, v4

    .line 797
    invoke-static {v0, v1, v2, v3, v4}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object v0

    return-object v0

    .line 791
    :pswitch_10
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueTimestampUtc;->fromNanos(J)Lorg/h2/value/ValueTimestampUtc;

    move-result-object v0

    return-object v0

    .line 806
    :pswitch_11
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 807
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    .line 808
    invoke-virtual {p0, v1, v2, v0}, Lorg/h2/store/Data;->read([BII)V

    .line 809
    invoke-static {v1}, Lorg/h2/value/ValueGeometry;->get([B)Lorg/h2/value/ValueGeometry;

    move-result-object v0

    return-object v0

    .line 824
    :pswitch_12
    invoke-virtual {p0}, Lorg/h2/store/Data;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object v0

    return-object v0

    .line 818
    :pswitch_13
    invoke-virtual {p0}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueUuid;->get(JJ)Lorg/h2/value/ValueUuid;

    move-result-object v0

    return-object v0

    .line 812
    :pswitch_14
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 813
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    .line 814
    invoke-virtual {p0, v1, v2, v0}, Lorg/h2/store/Data;->read([BII)V

    const/4 v0, 0x0

    .line 815
    iget-object v2, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    invoke-static {v0, v1, v2}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object v0

    return-object v0

    .line 882
    :pswitch_15
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    .line 883
    invoke-virtual {v0, v2}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    .line 884
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 886
    invoke-virtual {p0}, Lorg/h2/store/Data;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v5

    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v6

    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 889
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/h2/store/Data;->readByte()B

    move-result v3

    if-nez v3, :cond_5

    .line 898
    invoke-static {v0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object v0

    return-object v0

    .line 892
    :cond_5
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_6

    .line 894
    invoke-virtual {p0}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 896
    :cond_6
    invoke-virtual {v0, v3}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 874
    :pswitch_16
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 875
    new-array v1, v0, [Lorg/h2/value/Value;

    :goto_3
    if-ge v2, v0, :cond_7

    .line 877
    invoke-virtual {p0}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 879
    :cond_7
    invoke-static {v1}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v0

    return-object v0

    .line 841
    :pswitch_17
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v3

    if-ltz v3, :cond_8

    .line 843
    invoke-static {v3}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v0

    .line 844
    invoke-virtual {p0, v0, v2, v3}, Lorg/h2/store/Data;->read([BII)V

    .line 845
    invoke-static {v1, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v4, -0x3

    if-ne v3, v4, :cond_9

    .line 847
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v3

    .line 848
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v4

    .line 849
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v7

    .line 850
    iget-object v2, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    return-object v0

    .line 854
    :cond_9
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v4

    .line 855
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x2

    if-eq v3, v8, :cond_b

    if-ne v3, v9, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 861
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v6

    .line 862
    invoke-virtual {p0}, Lorg/h2/store/Data;->readByte()B

    move-result v8

    if-ne v8, v0, :cond_a

    :goto_5
    if-ne v3, v9, :cond_c

    .line 865
    invoke-virtual {p0}, Lorg/h2/store/Data;->readString()Ljava/lang/String;

    move-result-object v8

    .line 866
    iget-object v2, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    move v3, v4

    move v4, v5

    move-wide v5, v6

    move v7, v0

    invoke-static/range {v1 .. v8}, Lorg/h2/value/ValueLob;->openUnlinked(ILorg/h2/store/DataHandler;IIJZLjava/lang/String;)Lorg/h2/value/ValueLob;

    move-result-object v0

    return-object v0

    .line 869
    :cond_c
    iget-object v2, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    move v3, v4

    move v4, v5

    move-wide v5, v6

    move v7, v0

    invoke-static/range {v1 .. v7}, Lorg/h2/value/ValueLob;->openLinked(ILorg/h2/store/DataHandler;IIJZ)Lorg/h2/value/ValueLob;

    move-result-object v0

    return-object v0

    .line 822
    :pswitch_18
    invoke-virtual {p0}, Lorg/h2/store/Data;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object v0

    return-object v0

    .line 820
    :pswitch_19
    invoke-virtual {p0}, Lorg/h2/store/Data;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    .line 800
    :pswitch_1a
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 801
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    .line 802
    invoke-virtual {p0, v1, v2, v0}, Lorg/h2/store/Data;->read([BII)V

    .line 803
    invoke-static {v1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    return-object v0

    .line 786
    :pswitch_1b
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->getTimeUTCWithoutDst(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/h2/value/ValueTimestamp;->fromMillisNanos(JI)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    return-object v0

    .line 769
    :pswitch_1c
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    mul-long v0, v0, v2

    .line 770
    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->getTimeUTCWithoutDst(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDate;->fromMillis(J)Lorg/h2/value/ValueDate;

    move-result-object v0

    return-object v0

    .line 778
    :pswitch_1d
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->getTimeUTCWithoutDst(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromMillis(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0

    .line 837
    :pswitch_1e
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverse(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object v0

    return-object v0

    .line 834
    :pswitch_1f
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v0

    return-object v0

    .line 758
    :pswitch_20
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 759
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    .line 760
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v3

    .line 761
    invoke-virtual {p0, v3, v2, v1}, Lorg/h2/store/Data;->read([BII)V

    .line 762
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 763
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-static {v2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0

    .line 742
    :pswitch_21
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    .line 738
    :pswitch_22
    invoke-virtual {p0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    return-object v0

    .line 746
    :pswitch_23
    invoke-virtual {p0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object v0

    return-object v0

    .line 744
    :pswitch_24
    invoke-virtual {p0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object v0

    return-object v0

    .line 730
    :cond_d
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readVarInt()I
    .locals 2

    .line 1239
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    aget-byte v0, v0, v1

    if-ltz v0, :cond_0

    .line 1241
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/store/Data;->pos:I

    return v0

    .line 1245
    :cond_0
    invoke-direct {p0, v0}, Lorg/h2/store/Data;->readVarIntRest(I)I

    move-result v0

    return v0
.end method

.method public readVarLong()J
    .locals 11

    .line 1308
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    const/4 v6, 0x7

    .line 1314
    :goto_0
    iget-object v7, p0, Lorg/h2/store/Data;->data:[B

    iget v8, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/h2/store/Data;->pos:I

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long v9, v7, v4

    shl-long/2addr v9, v6

    or-long/2addr v0, v9

    cmp-long v9, v7, v2

    if-ltz v9, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v6, v6, 0x7

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lorg/h2/store/Data;->pos:I

    return-void
.end method

.method public setInt(II)V
    .locals 3

    .line 131
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    .line 132
    aput-byte v1, v0, p1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 133
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 134
    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 135
    aput-byte p2, v0, p1

    return-void
.end method

.method public setPos(I)V
    .locals 0

    .line 1161
    iput p1, p0, Lorg/h2/store/Data;->pos:I

    return-void
.end method

.method public truncate(I)V
    .locals 3

    .line 1193
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    if-le v0, p1, :cond_0

    .line 1194
    new-array v0, p1, [B

    .line 1195
    iget-object v1, p0, Lorg/h2/store/Data;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1196
    iput p1, p0, Lorg/h2/store/Data;->pos:I

    .line 1197
    iput-object v0, p0, Lorg/h2/store/Data;->data:[B

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 363
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iget p1, p0, Lorg/h2/store/Data;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/h2/store/Data;->pos:I

    return-void
.end method

.method public writeByte(B)V
    .locals 3

    .line 386
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeInt(I)V
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    .line 146
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 147
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 148
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 149
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 150
    iget p1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/h2/store/Data;->pos:I

    return-void
.end method

.method public writeLong(J)V
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    .line 413
    invoke-virtual {p0, v0}, Lorg/h2/store/Data;->writeInt(I)V

    long-to-int p1, p1

    .line 414
    invoke-virtual {p0, p1}, Lorg/h2/store/Data;->writeInt(I)V

    return-void
.end method

.method public writeShortInt(I)V
    .locals 3

    .line 1171
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    .line 1172
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1173
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 254
    invoke-virtual {p0, v0}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 255
    invoke-direct {p0, p1, v0}, Lorg/h2/store/Data;->writeStringWithoutLength(Ljava/lang/String;I)V

    return-void
.end method

.method public writeValue(Lorg/h2/value/Value;)V
    .locals 8

    .line 423
    iget v0, p0, Lorg/h2/store/Data;->pos:I

    .line 424
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 425
    iget-object p1, p0, Lorg/h2/store/Data;->data:[B

    iget v0, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/store/Data;->pos:I

    aput-byte v2, p1, v0

    return-void

    .line 428
    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v1

    const/16 v3, 0x3f

    const/16 v4, 0x20

    packed-switch v1, :pswitch_data_0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_5

    .line 549
    :pswitch_0
    move-object v3, p1

    check-cast v3, Lorg/h2/value/ValueTimestampTimeZone;

    int-to-byte v4, v1

    .line 550
    invoke-virtual {p0, v4}, Lorg/h2/store/Data;->writeByte(B)V

    .line 551
    invoke-virtual {v3}, Lorg/h2/value/ValueTimestampTimeZone;->getDateValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/h2/store/Data;->writeVarLong(J)V

    .line 552
    invoke-virtual {v3}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeNanos()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/h2/store/Data;->writeVarLong(J)V

    .line 553
    invoke-virtual {v3}, Lorg/h2/value/ValueTimestampTimeZone;->getTimeZoneOffsetMins()S

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/store/Data;->writeVarInt(I)V

    goto :goto_0

    .line 543
    :pswitch_1
    move-object v2, p1

    check-cast v2, Lorg/h2/value/ValueTimestampUtc;

    int-to-byte v1, v1

    .line 544
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 545
    invoke-virtual {v2}, Lorg/h2/value/ValueTimestampUtc;->getUtcDateTimeNanos()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto/16 :goto_5

    :pswitch_2
    int-to-byte v1, v1

    .line 579
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 580
    move-object v1, p1

    check-cast v1, Lorg/h2/value/ValueUuid;

    .line 581
    invoke-virtual {v1}, Lorg/h2/value/ValueUuid;->getHigh()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/h2/store/Data;->writeLong(J)V

    .line 582
    invoke-virtual {v1}, Lorg/h2/value/ValueUuid;->getLow()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeLong(J)V

    goto/16 :goto_5

    :goto_0
    :pswitch_3
    int-to-byte v1, v1

    .line 558
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 559
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v1

    .line 560
    array-length v3, v1

    .line 561
    invoke-virtual {p0, v3}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 562
    invoke-virtual {p0, v1, v2, v3}, Lorg/h2/store/Data;->write([BII)V

    goto/16 :goto_5

    :pswitch_4
    int-to-byte v1, v1

    .line 681
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 683
    :try_start_0
    move-object v1, p1

    check-cast v1, Lorg/h2/value/ValueResultSet;

    invoke-virtual {v1}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 684
    invoke-interface {v1}, Ljava/sql/ResultSet;->beforeFirst()V

    .line 685
    invoke-interface {v1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v3

    .line 686
    invoke-interface {v3}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v4

    .line 687
    invoke-virtual {p0, v4}, Lorg/h2/store/Data;->writeVarInt(I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 689
    invoke-interface {v3, v5}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/h2/store/Data;->writeString(Ljava/lang/String;)V

    .line 690
    invoke-interface {v3, v5}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 691
    invoke-interface {v3, v5}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 692
    invoke-interface {v3, v5}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/h2/store/Data;->writeVarInt(I)V

    goto :goto_1

    .line 694
    :cond_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 695
    invoke-virtual {p0, v5}, Lorg/h2/store/Data;->writeByte(B)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 697
    invoke-static {v3, v5}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v6

    const/4 v7, 0x0

    .line 698
    invoke-static {v7, v1, v5, v6}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v6

    .line 699
    invoke-virtual {p0, v6}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    goto :goto_2

    .line 702
    :cond_2
    invoke-virtual {p0, v2}, Lorg/h2/store/Data;->writeByte(B)V

    .line 703
    invoke-interface {v1}, Ljava/sql/ResultSet;->beforeFirst()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 705
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_5
    int-to-byte v1, v1

    .line 672
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 673
    move-object v1, p1

    check-cast v1, Lorg/h2/value/ValueArray;

    invoke-virtual {v1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v1

    .line 674
    array-length v3, v1

    invoke-virtual {p0, v3}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 675
    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_16

    aget-object v4, v1, v2

    .line 676
    invoke-virtual {p0, v4}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_6
    int-to-byte v1, v1

    .line 634
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 635
    instance-of v1, p1, Lorg/h2/value/ValueLob;

    if-eqz v1, :cond_5

    .line 636
    move-object v1, p1

    check-cast v1, Lorg/h2/value/ValueLob;

    .line 637
    iget-object v3, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    invoke-virtual {v1, v3}, Lorg/h2/value/ValueLob;->convertToFileIfRequired(Lorg/h2/store/DataHandler;)V

    .line 638
    invoke-virtual {v1}, Lorg/h2/value/ValueLob;->getSmall()[B

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v2, -0x1

    .line 641
    invoke-virtual {v1}, Lorg/h2/value/ValueLob;->isLinkedToTable()Z

    move-result v3

    const/4 v4, -0x2

    if-nez v3, :cond_3

    const/4 v2, -0x2

    .line 644
    :cond_3
    invoke-virtual {p0, v2}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 645
    invoke-virtual {v1}, Lorg/h2/value/ValueLob;->getTableId()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 646
    invoke-virtual {v1}, Lorg/h2/value/ValueLob;->getObjectId()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 647
    invoke-virtual {v1}, Lorg/h2/value/ValueLob;->getPrecision()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/h2/store/Data;->writeVarLong(J)V

    .line 648
    invoke-virtual {v1}, Lorg/h2/value/ValueLob;->isCompressed()Z

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lorg/h2/store/Data;->writeByte(B)V

    if-ne v2, v4, :cond_16

    .line 650
    invoke-virtual {v1}, Lorg/h2/value/ValueLob;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 653
    :cond_4
    array-length v1, v3

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 654
    array-length v1, v3

    invoke-virtual {p0, v3, v2, v1}, Lorg/h2/store/Data;->write([BII)V

    goto/16 :goto_5

    .line 657
    :cond_5
    move-object v1, p1

    check-cast v1, Lorg/h2/value/ValueLobDb;

    .line 658
    invoke-virtual {v1}, Lorg/h2/value/ValueLobDb;->getSmall()[B

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v2, -0x3

    .line 660
    invoke-virtual {p0, v2}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 661
    invoke-virtual {v1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 662
    invoke-virtual {v1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/h2/store/Data;->writeVarLong(J)V

    .line 663
    invoke-virtual {v1}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto/16 :goto_5

    .line 665
    :cond_6
    array-length v1, v3

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 666
    array-length v1, v3

    invoke-virtual {p0, v3, v2, v1}, Lorg/h2/store/Data;->write([BII)V

    goto/16 :goto_5

    :pswitch_7
    int-to-byte v1, v1

    .line 599
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 600
    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 586
    :pswitch_8
    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_7

    add-int/lit8 v1, v3, 0x44

    int-to-byte v1, v1

    .line 589
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 590
    invoke-direct {p0, v2, v3}, Lorg/h2/store/Data;->writeStringWithoutLength(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_7
    int-to-byte v1, v1

    .line 592
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 593
    invoke-virtual {p0, v2}, Lorg/h2/store/Data;->writeString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 566
    :pswitch_9
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v3

    .line 567
    array-length v5, v3

    if-ge v5, v4, :cond_8

    add-int/lit8 v1, v5, 0x64

    int-to-byte v1, v1

    .line 569
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 570
    invoke-virtual {p0, v3, v2, v5}, Lorg/h2/store/Data;->write([BII)V

    goto/16 :goto_5

    :cond_8
    int-to-byte v1, v1

    .line 572
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 573
    invoke-virtual {p0, v5}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 574
    invoke-virtual {p0, v3, v2, v5}, Lorg/h2/store/Data;->write([BII)V

    goto/16 :goto_5

    .line 535
    :pswitch_a
    invoke-virtual {p1}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v2

    int-to-byte v1, v1

    .line 536
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 537
    invoke-static {v2}, Lorg/h2/util/DateTimeUtils;->getTimeLocalWithoutDst(Ljava/util/Date;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/h2/store/Data;->writeVarLong(J)V

    .line 538
    invoke-virtual {v2}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    const v2, 0xf4240

    rem-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    goto/16 :goto_5

    :pswitch_b
    int-to-byte v1, v1

    .line 517
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 518
    invoke-virtual {p1}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/DateTimeUtils;->getTimeLocalWithoutDst(Ljava/util/Date;)J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    .line 519
    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto/16 :goto_5

    :pswitch_c
    int-to-byte v1, v1

    .line 507
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 508
    invoke-virtual {p1}, Lorg/h2/value/Value;->getTime()Ljava/sql/Time;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/DateTimeUtils;->getTimeLocalWithoutDst(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto/16 :goto_5

    .line 618
    :pswitch_d
    invoke-virtual {p1}, Lorg/h2/value/Value;->getFloat()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-nez v4, :cond_9

    .line 620
    invoke-virtual {p0, v3}, Lorg/h2/store/Data;->writeByte(B)V

    goto/16 :goto_5

    .line 622
    :cond_9
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 623
    sget v3, Lorg/h2/value/ValueFloat;->ZERO_BITS:I

    if-ne v2, v3, :cond_a

    const/16 v1, 0x3e

    .line 624
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    goto/16 :goto_5

    :cond_a
    int-to-byte v1, v1

    .line 626
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 627
    invoke-static {v2}, Ljava/lang/Integer;->reverse(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    goto/16 :goto_5

    .line 603
    :pswitch_e
    invoke-virtual {p1}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_b

    const/16 v1, 0x3d

    .line 605
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    goto/16 :goto_5

    .line 607
    :cond_b
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 608
    sget-wide v4, Lorg/h2/value/ValueDouble;->ZERO_BITS:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_c

    const/16 v1, 0x3c

    .line 609
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    goto/16 :goto_5

    :cond_c
    int-to-byte v1, v1

    .line 611
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 612
    invoke-static {v2, v3}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto/16 :goto_5

    .line 469
    :pswitch_f
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v4

    .line 470
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v1, 0x38

    .line 471
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    goto/16 :goto_5

    .line 472
    :cond_d
    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v5, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v1, 0x39

    .line 473
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    goto/16 :goto_5

    .line 475
    :cond_e
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    .line 476
    invoke-virtual {v4}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 477
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-gt v6, v3, :cond_10

    if-nez v5, :cond_f

    const/16 v1, 0x3a

    .line 480
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 481
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto/16 :goto_5

    :cond_f
    const/16 v1, 0x3b

    .line 483
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 484
    invoke-virtual {p0, v5}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 485
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto/16 :goto_5

    :cond_10
    int-to-byte v1, v1

    .line 488
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 489
    invoke-virtual {p0, v5}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 490
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 491
    array-length v3, v1

    invoke-virtual {p0, v3}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 492
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lorg/h2/store/Data;->write([BII)V

    goto/16 :goto_5

    .line 456
    :pswitch_10
    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_11

    const/16 v1, 0x43

    .line 458
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    neg-long v1, v2

    .line 459
    invoke-virtual {p0, v1, v2}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto :goto_5

    :cond_11
    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-gez v6, :cond_12

    const-wide/16 v4, 0x30

    add-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    .line 461
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    goto :goto_5

    :cond_12
    int-to-byte v1, v1

    .line 463
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 464
    invoke-virtual {p0, v2, v3}, Lorg/h2/store/Data;->writeVarLong(J)V

    goto :goto_5

    .line 443
    :pswitch_11
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-gez v2, :cond_13

    const/16 v1, 0x42

    .line 445
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    neg-int v1, v2

    .line 446
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    goto :goto_5

    :cond_13
    const/16 v3, 0x10

    if-ge v2, v3, :cond_14

    add-int/2addr v2, v4

    int-to-byte v1, v2

    .line 448
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    goto :goto_5

    :cond_14
    int-to-byte v1, v1

    .line 450
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 451
    invoke-virtual {p0, v2}, Lorg/h2/store/Data;->writeVarInt(I)V

    goto :goto_5

    :pswitch_12
    int-to-byte v1, v1

    .line 439
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 440
    invoke-virtual {p1}, Lorg/h2/value/Value;->getShort()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    goto :goto_5

    :pswitch_13
    int-to-byte v1, v1

    .line 435
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 436
    invoke-virtual {p1}, Lorg/h2/value/Value;->getByte()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    goto :goto_5

    .line 431
    :pswitch_14
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x41

    goto :goto_4

    :cond_15
    const/16 v1, 0x40

    :goto_4
    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 712
    :cond_16
    :goto_5
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v1, :cond_18

    .line 713
    iget v1, p0, Lorg/h2/store/Data;->pos:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p1, v2}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;Lorg/h2/store/DataHandler;)I

    move-result v2

    if-ne v1, v2, :cond_17

    goto :goto_6

    .line 714
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value size error: got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/store/Data;->pos:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/store/Data;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p1, v0}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;Lorg/h2/store/DataHandler;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_18
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeVarInt(I)V
    .locals 3

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 1230
    :cond_0
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeVarLong(J)V
    .locals 6

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1296
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 1299
    :cond_0
    iget-object v0, p0, Lorg/h2/store/Data;->data:[B

    iget v1, p0, Lorg/h2/store/Data;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/Data;->pos:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method
