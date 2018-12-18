.class public Lorg/h2/mvstore/MVMap;
.super Ljava/util/AbstractMap;
.source "MVMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/MVMap$Builder;,
        Lorg/h2/mvstore/MVMap$MapBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private createVersion:J

.field private id:I

.field private isVolatile:Z

.field private final keyType:Lorg/h2/mvstore/type/DataType;

.field private oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/ConcurrentArrayList<",
            "Lorg/h2/mvstore/Page;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field protected volatile root:Lorg/h2/mvstore/Page;

.field protected store:Lorg/h2/mvstore/MVStore;

.field private final valueType:Lorg/h2/mvstore/type/DataType;

.field protected volatile writeVersion:J


# direct methods
.method protected constructor <init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 60
    new-instance v0, Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-direct {v0}, Lorg/h2/mvstore/ConcurrentArrayList;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    .line 68
    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->keyType:Lorg/h2/mvstore/type/DataType;

    .line 69
    iput-object p2, p0, Lorg/h2/mvstore/MVMap;->valueType:Lorg/h2/mvstore/type/DataType;

    const-wide/16 p1, -0x1

    .line 70
    invoke-static {p0, p1, p2}, Lorg/h2/mvstore/Page;->createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    return-void
.end method

.method private copy(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/CursorPos;)Lorg/h2/mvstore/Page;
    .locals 7

    .line 1222
    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    invoke-static {p0, v0, v1, p1}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;JLorg/h2/mvstore/Page;)Lorg/h2/mvstore/Page;

    move-result-object v0

    .line 1223
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_5

    .line 1226
    iget-object v1, p2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    iget v2, p2, Lorg/h2/mvstore/CursorPos;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    .line 1227
    iget-object p1, p2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object p1

    iput-object p1, p2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    .line 1228
    iget-object p1, p2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    .line 1229
    iget-object v1, p2, Lorg/h2/mvstore/CursorPos;->parent:Lorg/h2/mvstore/CursorPos;

    if-nez v1, :cond_0

    .line 1230
    iget-object v1, p2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {p0, v1}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V

    .line 1231
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    .line 1225
    :cond_0
    iget-object p2, p2, Lorg/h2/mvstore/CursorPos;->parent:Lorg/h2/mvstore/CursorPos;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1237
    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 1238
    invoke-virtual {v0, v2, v3}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1240
    :cond_2
    new-instance v2, Lorg/h2/mvstore/CursorPos;

    invoke-direct {v2, v0, v1, p2}, Lorg/h2/mvstore/CursorPos;-><init>(Lorg/h2/mvstore/Page;ILorg/h2/mvstore/CursorPos;)V

    .line 1241
    :goto_2
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 1242
    iput v1, v2, Lorg/h2/mvstore/CursorPos;->index:I

    .line 1243
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPagePos(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_3

    .line 1248
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lorg/h2/mvstore/MVMap;->copy(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/CursorPos;)Lorg/h2/mvstore/Page;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1251
    :cond_4
    iget-object v0, v2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    :cond_5
    return-object v0
.end method

.method static getMapKey(I)Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getMapRootKey(I)Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "root."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMinMax(Lorg/h2/mvstore/Page;Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/Page;",
            "TK;ZZ)TK;"
        }
    .end annotation

    .line 410
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 411
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    neg-int p2, p2

    if-eqz p3, :cond_0

    const/4 v3, 0x2

    :cond_0
    sub-int/2addr p2, v3

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    add-int/2addr p2, v2

    :cond_3
    :goto_1
    if-ltz p2, :cond_5

    .line 417
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p3

    if-lt p2, p3, :cond_4

    goto :goto_2

    .line 420
    :cond_4
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v1

    .line 422
    :cond_6
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_7

    neg-int v0, v0

    sub-int/2addr v0, v3

    goto :goto_3

    :cond_7
    add-int/2addr v0, v3

    :goto_3
    if-ltz v0, :cond_b

    .line 429
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v4

    if-lt v0, v4, :cond_8

    goto :goto_5

    .line 432
    :cond_8
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/h2/mvstore/MVMap;->getMinMax(Lorg/h2/mvstore/Page;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    if-eqz p3, :cond_a

    const/4 v4, -0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x1

    :goto_4
    add-int/2addr v0, v4

    goto :goto_3

    :cond_b
    :goto_5
    return-object v1
.end method

.method private rewrite(Lorg/h2/mvstore/Page;Ljava/util/Set;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/Page;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 795
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 796
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v2

    .line 797
    invoke-static {v2, v3}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v0

    .line 798
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 801
    :cond_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 803
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    .line 804
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 806
    invoke-virtual {p0, p1, p2, p2}, Lorg/h2/mvstore/MVMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 812
    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 813
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPagePos(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 814
    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v5

    if-nez v5, :cond_3

    .line 818
    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v3

    .line 819
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 823
    :cond_3
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/h2/mvstore/MVMap;->rewrite(Lorg/h2/mvstore/Page;Ljava/util/Set;)I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_7

    .line 826
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v3

    .line 827
    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v0

    .line 828
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 836
    :goto_2
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result p2

    if-nez p2, :cond_5

    .line 837
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    goto :goto_2

    .line 840
    :cond_5
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    .line 841
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 843
    invoke-virtual {p0, p1, p2, p2}, Lorg/h2/mvstore/MVMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    return v2
.end method


# virtual methods
.method public areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 601
    :cond_1
    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-interface {v2, p1, p2}, Lorg/h2/mvstore/type/DataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method asString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "name"

    .line 1195
    invoke-static {v0, v1, p1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    :cond_0
    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const-string p1, "createVersion"

    .line 1198
    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1200
    :cond_1
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "type"

    .line 1202
    invoke-static {v0, v1, p1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1204
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected beforeWrite()V
    .locals 3

    .line 1038
    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->closed:Z

    if-nez v0, :cond_1

    .line 1042
    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->readOnly:Z

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/MVStore;->beforeWrite(Lorg/h2/mvstore/MVMap;)V

    return-void

    :cond_0
    const-string v0, "This map is read-only"

    .line 1043
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1039
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "This map is closed"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method protected binarySearch(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 461
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 462
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 468
    :goto_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    .line 469
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->binarySearch(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    .line 472
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected binarySearchPage(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Lorg/h2/mvstore/Page;
    .locals 2

    .line 490
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 491
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 497
    :goto_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    .line 498
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->binarySearchPage(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Lorg/h2/mvstore/Page;

    move-result-object p1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, p1, v0, v0}, Lorg/h2/mvstore/MVMap;->getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 511
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    .line 512
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->removeAllRecursive()V

    .line 513
    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    invoke-static {p0, v0, v1}, Lorg/h2/mvstore/Page;->createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 510
    monitor-exit p0

    throw v0
.end method

.method close()V
    .locals 1

    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lorg/h2/mvstore/MVMap;->closed:Z

    return-void
.end method

.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 708
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->keyType:Lorg/h2/mvstore/type/DataType;

    invoke-interface {v0, p1, p2}, Lorg/h2/mvstore/type/DataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 479
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method copyFrom(Lorg/h2/mvstore/MVMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1217
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    .line 1218
    iget-object p1, p1, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/MVMap;->copy(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/CursorPos;)Lorg/h2/mvstore/Page;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V

    return-void
.end method

.method public cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/h2/mvstore/Cursor<",
            "TK;TV;>;"
        }
    .end annotation

    .line 858
    new-instance v0, Lorg/h2/mvstore/Cursor;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/mvstore/Cursor;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    .line 865
    new-instance v1, Lorg/h2/mvstore/MVMap$2;

    invoke-direct {v1, p0, p0, v0}, Lorg/h2/mvstore/MVMap$2;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getFirstLast(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/mvstore/MVMap;->getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {p0, v0, p1}, Lorg/h2/mvstore/MVMap;->binarySearch(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getChildPageCount(Lorg/h2/mvstore/Page;)I
    .locals 0

    .line 1174
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getRawChildPageCount()I

    move-result p1

    return p1
.end method

.method public getCreateVersion()J
    .locals 2

    .line 1087
    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    return-wide v0
.end method

.method protected getFirstLast(Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    .line 347
    :goto_0
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    .line 348
    :cond_1
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    :goto_1
    invoke-virtual {v0, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    .line 350
    :cond_3
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_2
    invoke-virtual {v0, v2}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .line 959
    iget v0, p0, Lorg/h2/mvstore/MVMap;->id:I

    return v0
.end method

.method public getKey(J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_6

    .line 239
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, p1, v3

    if-ltz v5, :cond_0

    goto :goto_3

    .line 242
    :cond_0
    iget-object v3, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    .line 245
    :goto_0
    invoke-virtual {v3}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    invoke-virtual {v3}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v0

    cmp-long v6, p1, v4

    if-ltz v6, :cond_1

    return-object v2

    :cond_1
    const/4 v2, 0x0

    sub-long/2addr p1, v0

    long-to-int p1, p1

    .line 249
    invoke-virtual {v3, p1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v4, 0x0

    .line 251
    invoke-virtual {p0, v3}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_4

    .line 253
    invoke-virtual {v3, v4}, Lorg/h2/mvstore/Page;->getCounts(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v8, p1, v6

    if-gez v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-wide v0, v6

    goto :goto_1

    :cond_4
    :goto_2
    if-ne v4, v5, :cond_5

    return-object v2

    .line 262
    :cond_5
    invoke-virtual {v3, v4}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v3

    goto :goto_0

    :cond_6
    :goto_3
    return-object v2
.end method

.method public getKeyIndex(Ljava/lang/Object;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    const-wide/16 v1, 0x0

    .line 315
    :goto_0
    invoke-virtual {v0, p1}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v3

    .line 316
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_2

    if-gez v3, :cond_1

    neg-long v0, v1

    int-to-long v2, v3

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1

    :cond_2
    if-gez v3, :cond_3

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    .line 328
    invoke-virtual {v0, v4}, Lorg/h2/mvstore/Page;->getCounts(I)J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 330
    :cond_4
    invoke-virtual {v0, v3}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyType()Lorg/h2/mvstore/type/DataType;
    .locals 1

    .line 717
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->keyType:Lorg/h2/mvstore/type/DataType;

    return-object v0
.end method

.method protected getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZZ)TK;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/h2/mvstore/MVMap;->getMinMax(Lorg/h2/mvstore/Page;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 945
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    iget v1, p0, Lorg/h2/mvstore/MVMap;->id:I

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->getMapName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/h2/mvstore/Page;
    .locals 1

    .line 936
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    return-object v0
.end method

.method public getStore()Lorg/h2/mvstore/MVStore;
    .locals 1

    .line 949
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueType()Lorg/h2/mvstore/type/DataType;
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->valueType:Lorg/h2/mvstore/type/DataType;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 1162
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 1051
    iget v0, p0, Lorg/h2/mvstore/MVMap;->id:I

    return v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 362
    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/mvstore/MVMap;->getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVStore;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    const-string v0, "id"

    const/4 v1, 0x0

    .line 101
    invoke-static {p2, v0, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/h2/mvstore/MVMap;->id:I

    const-string v0, "createVersion"

    const-wide/16 v1, 0x0

    .line 102
    invoke-static {p2, v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    .line 103
    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getCurrentVersion()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->closed:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1083
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->readOnly:Z

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    .line 1026
    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->isVolatile:Z

    return v0
.end method

.method public keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 757
    new-instance v0, Lorg/h2/mvstore/Cursor;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/mvstore/Cursor;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    return-object v0
.end method

.method public keyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 275
    new-instance v0, Lorg/h2/mvstore/MVMap$1;

    invoke-direct {v0, p0}, Lorg/h2/mvstore/MVMap$1;-><init>(Lorg/h2/mvstore/MVMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 909
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    .line 910
    new-instance v1, Lorg/h2/mvstore/MVMap$3;

    invoke-direct {v1, p0, p0, v0}, Lorg/h2/mvstore/MVMap$3;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->getFirstLast(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 393
    invoke-virtual {p0, p1, v0, v0}, Lorg/h2/mvstore/MVMap;->getMinMax(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected newRoot(Lorg/h2/mvstore/Page;)V
    .locals 5

    .line 688
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    if-eq v0, p1, :cond_2

    .line 689
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->removeUnusedOldVersions()V

    .line 690
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 691
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/Page;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/ConcurrentArrayList;->add(Ljava/lang/Object;)V

    .line 696
    :cond_1
    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    :cond_2
    return-void
.end method

.method openReadOnly()Lorg/h2/mvstore/MVMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1151
    new-instance v0, Lorg/h2/mvstore/MVMap;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->keyType:Lorg/h2/mvstore/type/DataType;

    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-direct {v0, v1, v2}, Lorg/h2/mvstore/MVMap;-><init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V

    const/4 v1, 0x1

    .line 1152
    iput-boolean v1, v0, Lorg/h2/mvstore/MVMap;->readOnly:Z

    .line 1153
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "id"

    .line 1154
    iget v3, p0, Lorg/h2/mvstore/MVMap;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "createVersion"

    .line 1155
    iget-wide v3, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, v2, v1}, Lorg/h2/mvstore/MVMap;->init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V

    .line 1157
    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    iput-object v1, v0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    return-object v0
.end method

.method public openVersion(J)Lorg/h2/mvstore/MVMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1107
    iget-boolean v0, p0, Lorg/h2/mvstore/MVMap;->readOnly:Z

    if-nez v0, :cond_6

    .line 1112
    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unknown version {0}; this map was created in version is {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    iget-wide v5, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0, v1, v4}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    .line 1118
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    cmp-long v3, p1, v1

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    iget-wide v1, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 1125
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/Page;

    if-eqz v0, :cond_5

    .line 1126
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    goto :goto_3

    .line 1130
    :cond_2
    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v1}, Lorg/h2/mvstore/ConcurrentArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1131
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Page;

    .line 1133
    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1

    .line 1140
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->openReadOnly()Lorg/h2/mvstore/MVMap;

    move-result-object p1

    .line 1141
    iput-object v0, p1, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    return-object p1

    .line 1128
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    iget v1, p0, Lorg/h2/mvstore/MVMap;->id:I

    invoke-virtual {v0, p1, p2, v1, p0}, Lorg/h2/mvstore/MVStore;->openMapVersion(JILorg/h2/mvstore/MVMap;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "This map is read-only; need to call the method on the writable map"

    .line 1108
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    const-string v2, "The value may not be null"

    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    .line 118
    iget-wide v5, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    .line 119
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0, v5, v6}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0, v5, v6}, Lorg/h2/mvstore/MVMap;->splitRootIfNeeded(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object v0

    move-object v3, p0

    move-object v4, v0

    move-object v7, p1

    move-object v8, p2

    .line 121
    invoke-virtual/range {v3 .. v8}, Lorg/h2/mvstore/MVMap;->put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 122
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit p0

    throw p1
.end method

.method protected put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 180
    invoke-virtual {p1, p4}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 181
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-gez v0, :cond_0

    neg-int p2, v0

    sub-int/2addr p2, v2

    .line 184
    invoke-virtual {p1, p2, p4, p5}, Lorg/h2/mvstore/Page;->insertLeaf(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 187
    :cond_0
    invoke-virtual {p1, v0, p5}, Lorg/h2/mvstore/Page;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-gez v0, :cond_2

    neg-int v0, v0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    .line 195
    :goto_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v3

    iget-object v4, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v4}, Lorg/h2/mvstore/MVStore;->getPageSplitSize()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 198
    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 199
    invoke-virtual {v1, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 200
    invoke-virtual {v1, v2}, Lorg/h2/mvstore/Page;->split(I)Lorg/h2/mvstore/Page;

    move-result-object v2

    .line 201
    invoke-virtual {p1, v0, v2}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    .line 202
    invoke-virtual {p1, v0, v3, v1}, Lorg/h2/mvstore/Page;->insertNode(ILjava/lang/Object;Lorg/h2/mvstore/Page;)V

    .line 204
    invoke-virtual/range {p0 .. p5}, Lorg/h2/mvstore/MVMap;->put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v3, p0

    move-object v4, v1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    .line 206
    invoke-virtual/range {v3 .. v8}, Lorg/h2/mvstore/MVMap;->put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 207
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    return-object p2
.end method

.method declared-synchronized putBranch(Lorg/h2/mvstore/Page;Ljava/lang/Object;Ljava/lang/Object;)Lorg/h2/mvstore/Page;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/Page;",
            "TK;TV;)",
            "Lorg/h2/mvstore/Page;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    const-string v2, "The value may not be null"

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-wide v5, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    .line 137
    invoke-virtual {p1, v5, v6}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1, v5, v6}, Lorg/h2/mvstore/MVMap;->splitRootIfNeeded(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    .line 139
    invoke-virtual/range {v3 .. v8}, Lorg/h2/mvstore/MVMap;->put(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 564
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 563
    monitor-exit p0

    throw p1
.end method

.method readPage(J)Lorg/h2/mvstore/Page;
    .locals 1

    .line 736
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, p0, p1, p2}, Lorg/h2/mvstore/MVStore;->readPage(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    .line 538
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 542
    :cond_0
    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    .line 543
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v2, v0, v1}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v2

    .line 545
    invoke-virtual {p0, v2, v0, v1, p1}, Lorg/h2/mvstore/MVMap;->remove(Lorg/h2/mvstore/Page;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 546
    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    .line 547
    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->removePage()V

    .line 548
    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/h2/mvstore/Page;->createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object v2

    .line 550
    :cond_1
    invoke-virtual {p0, v2}, Lorg/h2/mvstore/MVMap;->newRoot(Lorg/h2/mvstore/Page;)V

    .line 551
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected remove(Lorg/h2/mvstore/Page;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 648
    invoke-virtual {p1, p4}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 650
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_0

    .line 652
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object p2

    .line 653
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->remove(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_1
    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 663
    :goto_1
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v1

    .line 664
    invoke-virtual {v1, p2, p3}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v1

    .line 665
    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/h2/mvstore/MVMap;->remove(Lorg/h2/mvstore/Page;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 666
    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide p3

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-eqz v4, :cond_3

    goto :goto_2

    .line 672
    :cond_3
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p3

    if-nez p3, :cond_4

    .line 673
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    .line 674
    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->removePage()V

    goto :goto_3

    .line 676
    :cond_4
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->remove(I)V

    goto :goto_3

    .line 669
    :cond_5
    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    :goto_3
    return-object p2
.end method

.method public declared-synchronized remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 580
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 581
    invoke-virtual {p0, v0, p2}, Lorg/h2/mvstore/MVMap;->areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 583
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 585
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 579
    monitor-exit p0

    throw p1
.end method

.method protected removePage(JI)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/h2/mvstore/MVStore;->removePage(Lorg/h2/mvstore/MVMap;JI)V

    return-void
.end method

.method removeUnusedOldVersions()V
    .locals 7

    .line 991
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getOldestVersionToKeep()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 995
    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v2}, Lorg/h2/mvstore/ConcurrentArrayList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Page;

    .line 997
    :goto_0
    iget-object v3, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v3}, Lorg/h2/mvstore/ConcurrentArrayList;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Page;

    if-eqz v3, :cond_2

    .line 998
    invoke-virtual {v3}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    .line 1001
    :cond_1
    iget-object v4, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/ConcurrentArrayList;->removeFirst(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 631
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 636
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 630
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 614
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 615
    invoke-virtual {p0, v0, p2}, Lorg/h2/mvstore/MVMap;->areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 616
    invoke-virtual {p0, p1, p3}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 617
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 619
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 613
    monitor-exit p0

    throw p1
.end method

.method rewrite(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getCurrentVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 769
    iget-wide v2, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    return v4

    .line 775
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/h2/mvstore/MVMap;->openVersion(J)Lorg/h2/mvstore/MVMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 782
    :try_start_1
    iget-object v0, v0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVMap;->rewrite(Lorg/h2/mvstore/Page;Ljava/util/Set;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 786
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 790
    :cond_1
    throw p1

    :catch_1
    return v4
.end method

.method rollbackTo(J)V
    .locals 3

    .line 968
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->beforeWrite()V

    .line 969
    iget-wide v0, p0, Lorg/h2/mvstore/MVMap;->createVersion:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_3

    .line 973
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/Page;

    if-nez v0, :cond_2

    goto :goto_0

    .line 978
    :cond_2
    iget-object v1, p0, Lorg/h2/mvstore/MVMap;->oldRoots:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/ConcurrentArrayList;->removeLast(Ljava/lang/Object;)Z

    .line 979
    iput-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    .line 980
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getVersion()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    :cond_3
    :goto_0
    return-void
.end method

.method setRootPos(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, -0x1

    .line 746
    invoke-static {p0, p1, p2}, Lorg/h2/mvstore/Page;->createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/MVMap;->readPage(J)Lorg/h2/mvstore/Page;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    .line 747
    iget-object p1, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {p1, p3, p4}, Lorg/h2/mvstore/Page;->setVersion(J)V

    return-void
.end method

.method public setVolatile(Z)V
    .locals 0

    .line 1015
    iput-boolean p1, p0, Lorg/h2/mvstore/MVMap;->isVolatile:Z

    return-void
.end method

.method setWriteVersion(J)V
    .locals 0

    .line 1208
    iput-wide p1, p0, Lorg/h2/mvstore/MVMap;->writeVersion:J

    return-void
.end method

.method public size()I
    .locals 5

    .line 1067
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public sizeAsLong()J
    .locals 2

    .line 1077
    iget-object v0, p0, Lorg/h2/mvstore/MVMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v0

    return-wide v0
.end method

.method protected splitRootIfNeeded(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;
    .locals 18

    move-object/from16 v1, p1

    .line 151
    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v0

    move-object/from16 v10, p0

    iget-object v2, v10, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->getPageSplitSize()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v0

    const/4 v6, 0x1

    if-gt v0, v6, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    .line 155
    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v7

    .line 156
    invoke-virtual {v1, v0}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 157
    invoke-virtual {v1, v0}, Lorg/h2/mvstore/Page;->split(I)Lorg/h2/mvstore/Page;

    move-result-object v12

    .line 158
    new-array v9, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v9, v11

    .line 159
    new-array v15, v2, [Lorg/h2/mvstore/Page$PageReference;

    new-instance v13, Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v4

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v13, v15, v11

    new-instance v0, Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual {v12}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v13

    invoke-virtual {v12}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v1

    move-object v11, v0

    move-object/from16 v17, v15

    move-wide v15, v1

    invoke-direct/range {v11 .. v16}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v0, v17, v6

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object v4, v9

    move-object/from16 v6, v17

    move v9, v0

    .line 163
    invoke-static/range {v1 .. v9}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1258
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVMap;->asString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
