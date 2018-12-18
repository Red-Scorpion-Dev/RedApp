.class Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "ObjectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectArrayType"
.end annotation


# instance fields
.field private final elementType:Lorg/h2/mvstore/type/ObjectDataType;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/16 v0, 0xe

    .line 1239
    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    .line 1236
    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {p1}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 13

    .line 1282
    invoke-static {p1}, Lorg/h2/mvstore/type/ObjectDataType;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return v0

    .line 1288
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1289
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    .line 1291
    invoke-static {v1}, Lorg/h2/mvstore/type/ObjectDataType;->getCommonClassId(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object p1

    .line 1292
    invoke-static {v2}, Lorg/h2/mvstore/type/ObjectDataType;->getCommonClassId(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1295
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_2
    return v3

    :cond_3
    if-eqz p2, :cond_4

    return v4

    .line 1301
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1303
    :cond_5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 1304
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 1305
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1306
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1307
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v7, :cond_6

    .line 1308
    check-cast p1, [B

    .line 1309
    check-cast p2, [B

    .line 1310
    invoke-static {p1, p2}, Lorg/h2/mvstore/type/ObjectDataType;->compareNotNull([B[B)I

    move-result p1

    return p1

    :cond_6
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_13

    .line 1314
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_7

    .line 1315
    move-object v8, p1

    check-cast v8, [Z

    aget-boolean v8, v8, v7

    move-object v9, p2

    check-cast v9, [Z

    aget-boolean v9, v9, v7

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    goto/16 :goto_3

    .line 1317
    :cond_7
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_8

    .line 1318
    move-object v8, p1

    check-cast v8, [C

    aget-char v8, v8, v7

    move-object v9, p2

    check-cast v9, [C

    aget-char v9, v9, v7

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    goto/16 :goto_3

    .line 1320
    :cond_8
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_9

    .line 1321
    move-object v8, p1

    check-cast v8, [S

    aget-short v8, v8, v7

    move-object v9, p2

    check-cast v9, [S

    aget-short v9, v9, v7

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    goto :goto_3

    .line 1323
    :cond_9
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_c

    .line 1324
    move-object v8, p1

    check-cast v8, [I

    aget v8, v8, v7

    .line 1325
    move-object v9, p2

    check-cast v9, [I

    aget v9, v9, v7

    if-ne v8, v9, :cond_a

    :goto_1
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    if-ge v8, v9, :cond_b

    :goto_2
    const/4 v8, -0x1

    goto :goto_3

    :cond_b
    const/4 v8, 0x1

    goto :goto_3

    .line 1327
    :cond_c
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_d

    .line 1328
    move-object v8, p1

    check-cast v8, [F

    aget v8, v8, v7

    move-object v9, p2

    check-cast v9, [F

    aget v9, v9, v7

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    goto :goto_3

    .line 1330
    :cond_d
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_e

    .line 1331
    move-object v8, p1

    check-cast v8, [D

    aget-wide v9, v8, v7

    move-object v8, p2

    check-cast v8, [D

    aget-wide v11, v8, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    goto :goto_3

    .line 1334
    :cond_e
    move-object v8, p1

    check-cast v8, [J

    aget-wide v9, v8, v7

    .line 1335
    move-object v8, p2

    check-cast v8, [J

    aget-wide v11, v8, v7

    cmp-long v8, v9, v11

    if-nez v8, :cond_f

    goto :goto_1

    :cond_f
    cmp-long v8, v9, v11

    if-gez v8, :cond_b

    goto :goto_2

    :goto_3
    if-eqz v8, :cond_10

    return v8

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1343
    :cond_11
    check-cast p1, [Ljava/lang/Object;

    .line 1344
    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_13

    .line 1346
    iget-object v7, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    aget-object v8, p1, v1

    aget-object v9, p2, v1

    invoke-virtual {v7, v8, v9}, Lorg/h2/mvstore/type/ObjectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_12

    return v7

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    if-ne v2, v5, :cond_14

    goto :goto_5

    :cond_14
    if-ge v2, v5, :cond_15

    const/4 v0, -0x1

    goto :goto_5

    :cond_15
    const/4 v0, 0x1

    :goto_5
    return v0

    .line 1283
    :cond_16
    :goto_6
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 5

    .line 1244
    invoke-static {p1}, Lorg/h2/mvstore/type/ObjectDataType;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x40

    .line 1248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1249
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1250
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    .line 1251
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    add-int/2addr v0, p1

    goto :goto_1

    .line 1253
    :cond_1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    add-int/2addr v0, p1

    goto :goto_1

    .line 1255
    :cond_2
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    goto :goto_1

    .line 1257
    :cond_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    goto :goto_1

    .line 1259
    :cond_4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    goto :goto_1

    .line 1261
    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    goto :goto_1

    .line 1263
    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    goto :goto_1

    .line 1265
    :cond_7
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_a

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    goto :goto_1

    .line 1269
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_a

    aget-object v3, p1, v2

    if-eqz v3, :cond_9

    .line 1271
    iget-object v4, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/type/ObjectDataType;->getMemory(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 8

    const/16 v0, 0xe

    if-eq p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x68

    .line 1419
    invoke-static {p2}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    .line 1420
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p2

    .line 1423
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v0, :cond_1

    .line 1427
    sget-object p2, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/type/StringDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    .line 1429
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1431
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p1, v0, v4

    const-string p1, "Could not get class {0}"

    invoke-static {v2, p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1436
    :cond_1
    sget-object v0, Lorg/h2/mvstore/type/ObjectDataType;->COMMON_CLASSES:[Ljava/lang/Class;

    aget-object v0, v0, p2

    .line 1438
    :goto_0
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p2

    .line 1440
    :try_start_1
    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1447
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_b

    .line 1449
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_3

    .line 1450
    move-object v2, v5

    check-cast v2, [Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-ne v6, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    aput-boolean v6, v2, v1

    goto :goto_3

    .line 1451
    :cond_3
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_4

    .line 1452
    move-object v2, v5

    check-cast v2, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v2, v1

    goto :goto_3

    .line 1453
    :cond_4
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_5

    .line 1454
    move-object v2, v5

    check-cast v2, [C

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    aput-char v6, v2, v1

    goto :goto_3

    .line 1455
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_6

    .line 1456
    move-object v2, v5

    check-cast v2, [S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    aput-short v6, v2, v1

    goto :goto_3

    .line 1457
    :cond_6
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7

    .line 1458
    move-object v2, v5

    check-cast v2, [I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v2, v1

    goto :goto_3

    .line 1459
    :cond_7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_8

    .line 1460
    move-object v2, v5

    check-cast v2, [F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    aput v6, v2, v1

    goto :goto_3

    .line 1461
    :cond_8
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_9

    .line 1462
    move-object v2, v5

    check-cast v2, [D

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v2, v1

    goto :goto_3

    .line 1464
    :cond_9
    move-object v2, v5

    check-cast v2, [J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1468
    :cond_a
    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    :goto_4
    if-ge v3, p2, :cond_b

    .line 1470
    iget-object v1, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    invoke-virtual {v1, p1}, Lorg/h2/mvstore/type/ObjectDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    return-object v5

    :catch_1
    move-exception p1

    const/4 v5, 0x3

    .line 1442
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v4

    aput-object p1, v5, v1

    const-string p1, "Could not create array of type {0} length {1}"

    invoke-static {v2, p1, v5}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 7

    .line 1357
    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    .line 1361
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1362
    invoke-static {v0}, Lorg/h2/mvstore/type/ObjectDataType;->getCommonClassId(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-eqz v1, :cond_b

    .line 1364
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1365
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_2

    .line 1366
    check-cast p2, [B

    .line 1367
    array-length v0, p2

    const/16 v2, 0xf

    if-gt v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x68

    int-to-byte v0, v0

    .line 1369
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    .line 1371
    :cond_1
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1375
    :goto_0
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    return-void

    .line 1378
    :cond_2
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 1379
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    :goto_1
    if-ge v2, v4, :cond_9

    .line 1382
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1383
    move-object v1, p2

    check-cast v1, [Z

    aget-boolean v1, v1, v2

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    .line 1384
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1385
    move-object v1, p2

    check-cast v1, [C

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putChar(C)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    .line 1386
    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1387
    move-object v1, p2

    check-cast v1, [S

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putShort(S)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    .line 1388
    :cond_5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1389
    move-object v1, p2

    check-cast v1, [I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    .line 1390
    :cond_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1391
    move-object v1, p2

    check-cast v1, [F

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putFloat(F)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    .line 1392
    :cond_7
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    .line 1393
    move-object v1, p2

    check-cast v1, [D

    aget-wide v5, v1, v2

    invoke-virtual {p1, v5, v6}, Lorg/h2/mvstore/WriteBuffer;->putDouble(D)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    .line 1395
    :cond_8
    move-object v1, p2

    check-cast v1, [J

    aget-wide v5, v1, v2

    invoke-virtual {p1, v5, v6}, Lorg/h2/mvstore/WriteBuffer;->putLong(J)Lorg/h2/mvstore/WriteBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    return-void

    .line 1400
    :cond_a
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_3

    .line 1402
    :cond_b
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 1403
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1404
    sget-object v1, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-virtual {v1, p1, v0}, Lorg/h2/mvstore/type/StringDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    .line 1406
    :goto_3
    check-cast p2, [Ljava/lang/Object;

    .line 1407
    array-length v0, p2

    .line 1408
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1409
    array-length v0, p2

    :goto_4
    if-ge v2, v0, :cond_c

    aget-object v1, p2, v2

    .line 1410
    iget-object v3, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    invoke-virtual {v3, p1, v1}, Lorg/h2/mvstore/type/ObjectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method
