.class public Lorg/h2/mvstore/rtree/SpatialDataType;
.super Ljava/lang/Object;
.source "SpatialDataType.java"

# interfaces
.implements Lorg/h2/mvstore/type/DataType;


# instance fields
.field private final dimensions:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v2, 0x20

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Dimensions must be between 1 and 31, is {0}"

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iput p1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    return-void
.end method

.method private getArea(Lorg/h2/mvstore/rtree/SpatialKey;)F
    .locals 4

    .line 226
    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 230
    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v2, :cond_1

    .line 231
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v0, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getNotNull(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 358
    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 359
    invoke-virtual {v1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object p0

    .line 367
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 368
    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 369
    invoke-virtual {v1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v2

    if-nez v2, :cond_3

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private increaseMaxInnerBounds(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 377
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 378
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    const/4 v0, 0x0

    .line 379
    :goto_0
    iget v1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v1, :cond_0

    .line 380
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->setMin(IF)V

    .line 381
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->setMax(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    .line 43
    :cond_2
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v3

    .line 44
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide p1

    cmp-long v5, v3, p1

    if-gez v5, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 244
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 245
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 246
    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v2, :cond_3

    .line 250
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 286
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 287
    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 290
    :cond_0
    iget v0, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 291
    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v2, :cond_1

    add-int v2, v1, v1

    .line 292
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 293
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    new-instance p1, Lorg/h2/mvstore/rtree/SpatialKey;

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v2

    .line 62
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAreaIncrease(Ljava/lang/Object;Ljava/lang/Object;)F
    .locals 6

    .line 179
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 180
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 181
    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    .line 185
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    sub-float v3, v2, v1

    .line 187
    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 188
    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    .line 190
    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v2, :cond_1

    .line 191
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    .line 192
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v4

    sub-float v5, v4, v2

    mul-float v3, v3, v5

    .line 194
    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 195
    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v4, v2

    mul-float v0, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-float/2addr v0, v3

    return v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method getCombinedArea(Ljava/lang/Object;Ljava/lang/Object;)F
    .locals 5

    .line 209
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 210
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 211
    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0, p2}, Lorg/h2/mvstore/rtree/SpatialDataType;->getArea(Lorg/h2/mvstore/rtree/SpatialKey;)F

    move-result p1

    return p1

    .line 213
    :cond_0
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0, p1}, Lorg/h2/mvstore/rtree/SpatialDataType;->getArea(Lorg/h2/mvstore/rtree/SpatialKey;)F

    move-result p1

    return p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 217
    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v2, :cond_2

    .line 218
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 219
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v3, v2

    mul-float v0, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getExtremes(Ljava/util/ArrayList;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    .line 307
    invoke-static {p1}, Lorg/h2/mvstore/rtree/SpatialDataType;->getNotNull(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 311
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 312
    invoke-virtual {p0, v2}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/rtree/SpatialKey;

    const/4 v4, 0x0

    .line 313
    :goto_0
    iget v5, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v4, v5, :cond_1

    .line 314
    invoke-virtual {v3, v4}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v5

    .line 315
    invoke-virtual {v3, v4}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->setMin(IF)V

    .line 316
    invoke-virtual {v3, v4, v5}, Lorg/h2/mvstore/rtree/SpatialKey;->setMax(IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 318
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 319
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 320
    invoke-virtual {p0, v2, v5}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    invoke-direct {p0, v3, v5}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseMaxInnerBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    move-wide v7, v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 325
    :goto_2
    iget v10, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v6, v10, :cond_5

    .line 326
    invoke-virtual {v3, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v10

    invoke-virtual {v3, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_3

    goto :goto_3

    .line 330
    :cond_3
    invoke-virtual {v2, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v11

    invoke-virtual {v2, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v12

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-double v10, v10

    cmpl-double v12, v10, v7

    if-lez v12, :cond_4

    move v9, v6

    move-wide v7, v10

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    cmpg-double v2, v7, v4

    if-gtz v2, :cond_6

    return-object v1

    .line 340
    :cond_6
    invoke-virtual {v3, v9}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    .line 341
    invoke-virtual {v3, v9}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 343
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    if-ltz v4, :cond_7

    if-gez v5, :cond_a

    .line 345
    :cond_7
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/mvstore/rtree/SpatialKey;

    if-gez v4, :cond_8

    .line 346
    invoke-virtual {v6, v9}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v7

    cmpl-float v7, v7, v1

    if-nez v7, :cond_8

    move v4, v3

    goto :goto_5

    :cond_8
    if-gez v5, :cond_9

    .line 348
    invoke-virtual {v6, v9}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v6

    cmpl-float v6, v6, v2

    if-nez v6, :cond_9

    move v5, v3

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    const/4 p1, 0x2

    .line 352
    new-array p1, p1, [I

    aput v4, p1, v0

    const/4 v0, 0x1

    aput v5, p1, v0

    return-object p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 0

    .line 68
    iget p1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x28

    return p1
.end method

.method public increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 160
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 161
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 162
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    iget v1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v1, :cond_1

    .line 166
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->setMin(IF)V

    .line 167
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->setMax(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public isInside(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 266
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 267
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 268
    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v2, :cond_3

    .line 272
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public isOverlap(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 140
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 141
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 142
    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v2, :cond_3

    .line 146
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 7

    .line 111
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 113
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 114
    new-instance p1, Lorg/h2/mvstore/rtree/SpatialKey;

    new-array v0, v1, [F

    invoke-direct {p1, v2, v3, v0}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object p1

    .line 116
    :cond_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    .line 117
    :goto_0
    iget v3, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v3, :cond_2

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    const/4 v4, 0x1

    shl-int v5, v4, v1

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    :goto_1
    add-int v6, v1, v1

    .line 125
    aput v3, v2, v6

    add-int/2addr v6, v4

    .line 126
    aput v5, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 129
    new-instance p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-direct {p1, v0, v1, v2}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/rtree/SpatialDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 6

    .line 87
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 88
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 89
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    .line 90
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    :goto_0
    iget v3, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 95
    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v5

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    shl-int v3, v4, v1

    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    .line 100
    :goto_1
    iget v1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v1, :cond_4

    .line 101
    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putFloat(F)Lorg/h2/mvstore/WriteBuffer;

    shl-int v1, v4, v0

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 103
    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putFloat(F)Lorg/h2/mvstore/WriteBuffer;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 81
    aget-object v0, p2, p4

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/rtree/SpatialDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
