.class public Lorg/h2/mvstore/Page$PageChildren;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageChildren"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[J


# instance fields
.field children:[J

.field chunkList:Z

.field final pos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 977
    new-array v0, v0, [J

    sput-object v0, Lorg/h2/mvstore/Page$PageChildren;->EMPTY_ARRAY:[J

    return-void
.end method

.method private constructor <init>(J[J)V
    .locals 0

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-wide p1, p0, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    .line 999
    iput-object p3, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    return-void
.end method

.method constructor <init>(Lorg/h2/mvstore/Page;)V
    .locals 5

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    .line 1004
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getRawChildPageCount()I

    move-result v0

    .line 1005
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1007
    iget-object v2, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPagePos(I)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static read(Lorg/h2/mvstore/FileStore;JIJJ)Lorg/h2/mvstore/Page$PageChildren;
    .locals 6

    .line 1029
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result v0

    const/high16 v1, 0x200000

    if-ne v0, v1, :cond_0

    const/16 v0, 0x80

    .line 1031
    invoke-virtual {p0, p4, p5, v0}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    sub-long v1, p6, p4

    int-to-long v3, v0

    .line 1035
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v0, :cond_7

    .line 1043
    invoke-virtual {p0, p4, p5, v0}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1044
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result p4

    .line 1045
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result p5

    .line 1046
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p6

    .line 1047
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p7

    if-gt p7, v0, :cond_6

    add-int/2addr p6, p7

    .line 1054
    invoke-virtual {p0, p6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1055
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p6

    .line 1056
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v0, p3, :cond_5

    .line 1063
    invoke-static {p4}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result p3

    invoke-static {p5}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result p5

    xor-int/2addr p3, p5

    invoke-static {p7}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result p5

    xor-int/2addr p3, p5

    int-to-short p5, p3

    if-ne p6, p5, :cond_4

    .line 1072
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p3

    .line 1073
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p4

    and-int/2addr p4, v5

    if-ne p4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    add-int/lit8 p4, p3, 0x1

    .line 1078
    new-array p4, p4, [J

    :goto_1
    if-gt v4, p3, :cond_3

    .line 1080
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p5

    aput-wide p5, p4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1082
    :cond_3
    new-instance p0, Lorg/h2/mvstore/Page$PageChildren;

    invoke-direct {p0, p1, p2, p4}, Lorg/h2/mvstore/Page$PageChildren;-><init>(J[J)V

    return-object p0

    .line 1067
    :cond_4
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {p6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "File corrupted in chunk {0}, expected check value {1}, got {2}"

    invoke-static {v3, p1, p0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    .line 1058
    :cond_5
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "File corrupted in chunk {0}, expected map id {1}, got {2}"

    invoke-static {v3, p1, p0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    .line 1049
    :cond_6
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "File corrupted in chunk {0}, expected page length =< {1}, got {2}"

    invoke-static {v3, p1, p0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    .line 1038
    :cond_7
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "Illegal page length {0} reading at {1}; max pos {2} "

    invoke-static {v3, p1, p0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method private removeChild(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1121
    iget-object v1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v1, v1

    if-ne v1, v0, :cond_0

    .line 1122
    sget-object p1, Lorg/h2/mvstore/Page$PageChildren;->EMPTY_ARRAY:[J

    iput-object p1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    return-void

    .line 1125
    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v0, v1, [J

    .line 1126
    iget-object v1, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    iget-object v2, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v2, v2

    invoke-static {v1, v0, v2, p1}, Lorg/h2/mvstore/DataUtils;->copyExcept(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1127
    iput-object v0, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    return-void
.end method


# virtual methods
.method collectReferencedChunks(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1114
    iget-wide v0, p0, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    invoke-static {v0, v1}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v0, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 1116
    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getMemory()I
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x40

    return v0
.end method

.method removeDuplicateChunkReferences()V
    .locals 5

    .line 1091
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1093
    iget-wide v1, p0, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    invoke-static {v1, v2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1094
    :goto_0
    iget-object v2, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1095
    iget-object v2, p0, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    aget-wide v3, v2, v1

    .line 1096
    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v2

    .line 1097
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1098
    invoke-static {v3, v4}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 1104
    invoke-direct {p0, v1}, Lorg/h2/mvstore/Page$PageChildren;->removeChild(I)V

    move v1, v2

    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    return-void
.end method
