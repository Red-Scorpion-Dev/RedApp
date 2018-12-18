.class public Lorg/h2/store/PageFreeList;
.super Lorg/h2/store/Page;
.source "PageFreeList.java"


# static fields
.field private static final DATA_START:I = 0x3


# instance fields
.field private data:Lorg/h2/store/Data;

.field private full:Z

.field private final pageCount:I

.field private final store:Lorg/h2/store/PageStore;

.field private final used:Lorg/h2/util/BitField;


# direct methods
.method private constructor <init>(Lorg/h2/store/PageStore;I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/h2/store/Page;-><init>()V

    .line 32
    invoke-virtual {p0, p2}, Lorg/h2/store/PageFreeList;->setPos(I)V

    .line 33
    iput-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    .line 34
    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    .line 35
    new-instance p1, Lorg/h2/util/BitField;

    iget p2, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    invoke-direct {p1, p2}, Lorg/h2/util/BitField;-><init>(I)V

    iput-object p1, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    .line 36
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/h2/util/BitField;->set(I)V

    return-void
.end method

.method static create(Lorg/h2/store/PageStore;I)Lorg/h2/store/PageFreeList;
    .locals 1

    .line 62
    new-instance v0, Lorg/h2/store/PageFreeList;

    invoke-direct {v0, p0, p1}, Lorg/h2/store/PageFreeList;-><init>(Lorg/h2/store/PageStore;I)V

    return-object v0
.end method

.method public static getPagesAddressed(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x3

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageFreeList;
    .locals 1

    .line 48
    new-instance v0, Lorg/h2/store/PageFreeList;

    invoke-direct {v0, p0, p2}, Lorg/h2/store/PageFreeList;-><init>(Lorg/h2/store/PageStore;I)V

    .line 49
    iput-object p1, v0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    .line 50
    invoke-direct {v0}, Lorg/h2/store/PageFreeList;->read()V

    return-object v0
.end method

.method private read()V
    .locals 4

    .line 159
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 160
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    .line 161
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 162
    :goto_0
    iget v2, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-ge v1, v2, :cond_0

    .line 163
    iget-object v2, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 164
    iget-object v3, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v3, v1, v2}, Lorg/h2/util/BitField;->setByte(II)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 166
    :cond_0
    iput-boolean v0, p0, Lorg/h2/store/PageFreeList;->full:Z

    return-void
.end method


# virtual methods
.method allocate(Lorg/h2/util/BitField;I)I
    .locals 3

    .line 73
    iget-boolean v0, p0, Lorg/h2/store/PageFreeList;->full:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 79
    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0, p2}, Lorg/h2/util/BitField;->nextClearBit(I)I

    move-result v0

    .line 80
    iget v2, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-lt v0, v2, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lorg/h2/store/PageFreeList;->full:Z

    :cond_2
    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/h2/util/BitField;->get(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 87
    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/util/BitField;->nextClearBit(I)I

    move-result p2

    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v0

    sub-int/2addr p2, v0

    .line 88
    iget v0, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-lt p2, v0, :cond_1

    return v1

    .line 95
    :cond_4
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {p1, v0}, Lorg/h2/util/BitField;->set(I)V

    .line 96
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    iget-object p2, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, p2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 97
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 98
    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method allocate(I)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 133
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V

    .line 138
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 139
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_0
    return-void
.end method

.method public canMove()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canRemove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method free(I)V
    .locals 2

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lorg/h2/store/PageFreeList;->full:Z

    .line 150
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    iget-object v1, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 151
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->clear(I)V

    .line 152
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void
.end method

.method getFirstFree(I)I
    .locals 3

    .line 110
    iget-boolean v0, p0, Lorg/h2/store/PageFreeList;->full:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 114
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->nextClearBit(I)I

    move-result p1

    .line 115
    iget v0, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-lt p1, v0, :cond_1

    return v1

    .line 118
    :cond_1
    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method getLastUsed()I
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0}, Lorg/h2/util/BitField;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMemory()I
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method isUsed(I)Z
    .locals 2

    .line 207
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->get(I)Z

    move-result p1

    return p1
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 1

    .line 214
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/h2/store/PageStore;->free(IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] freeList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/h2/store/PageFreeList;->full:Z

    if-eqz v1, :cond_0

    const-string v1, "full"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    .line 172
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 173
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 174
    :goto_0
    iget v0, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-ge v1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    iget-object v2, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v2, v1}, Lorg/h2/util/BitField;->getByte(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeByte(B)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/store/PageFreeList;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
