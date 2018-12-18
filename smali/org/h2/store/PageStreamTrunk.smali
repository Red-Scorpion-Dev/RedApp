.class public Lorg/h2/store/PageStreamTrunk;
.super Lorg/h2/store/Page;
.source "PageStreamTrunk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/PageStreamTrunk$Iterator;
    }
.end annotation


# static fields
.field private static final DATA_START:I = 0x11


# instance fields
.field private data:Lorg/h2/store/Data;

.field private logKey:I

.field nextTrunk:I

.field private pageCount:I

.field private pageIds:[I

.field parent:I

.field private final store:Lorg/h2/store/PageStore;


# direct methods
.method private constructor <init>(Lorg/h2/store/PageStore;IIII[I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/h2/store/Page;-><init>()V

    .line 47
    invoke-virtual {p0, p3}, Lorg/h2/store/PageStreamTrunk;->setPos(I)V

    .line 48
    iput p2, p0, Lorg/h2/store/PageStreamTrunk;->parent:I

    .line 49
    iput-object p1, p0, Lorg/h2/store/PageStreamTrunk;->store:Lorg/h2/store/PageStore;

    .line 50
    iput p4, p0, Lorg/h2/store/PageStreamTrunk;->nextTrunk:I

    .line 51
    iput p5, p0, Lorg/h2/store/PageStreamTrunk;->logKey:I

    .line 52
    array-length p1, p6

    iput p1, p0, Lorg/h2/store/PageStreamTrunk;->pageCount:I

    .line 53
    iput-object p6, p0, Lorg/h2/store/PageStreamTrunk;->pageIds:[I

    return-void
.end method

.method private constructor <init>(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/h2/store/Page;-><init>()V

    .line 57
    invoke-virtual {p0, p3}, Lorg/h2/store/PageStreamTrunk;->setPos(I)V

    .line 58
    iput-object p2, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    .line 59
    iput-object p1, p0, Lorg/h2/store/PageStreamTrunk;->store:Lorg/h2/store/PageStore;

    return-void
.end method

.method static create(Lorg/h2/store/PageStore;IIII[I)Lorg/h2/store/PageStreamTrunk;
    .locals 8

    .line 89
    new-instance v7, Lorg/h2/store/PageStreamTrunk;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/store/PageStreamTrunk;-><init>(Lorg/h2/store/PageStore;IIII[I)V

    return-object v7
.end method

.method static getPagesAddressed(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x11

    .line 144
    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageStreamTrunk;
    .locals 1

    .line 71
    new-instance v0, Lorg/h2/store/PageStreamTrunk;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/store/PageStreamTrunk;-><init>(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)V

    .line 72
    invoke-direct {v0}, Lorg/h2/store/PageStreamTrunk;->read()V

    return-object v0
.end method

.method private read()V
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 97
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    .line 98
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    .line 99
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStreamTrunk;->parent:I

    .line 100
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStreamTrunk;->logKey:I

    .line 101
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStreamTrunk;->nextTrunk:I

    .line 102
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStreamTrunk;->pageCount:I

    .line 103
    iget v0, p0, Lorg/h2/store/PageStreamTrunk;->pageCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/store/PageStreamTrunk;->pageIds:[I

    const/4 v0, 0x0

    .line 104
    :goto_0
    iget v1, p0, Lorg/h2/store/PageStreamTrunk;->pageCount:I

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/h2/store/PageStreamTrunk;->pageIds:[I

    iget-object v2, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
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

.method contains(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 154
    :goto_0
    iget v2, p0, Lorg/h2/store/PageStreamTrunk;->pageCount:I

    if-ge v1, v2, :cond_1

    .line 155
    iget-object v2, p0, Lorg/h2/store/PageStreamTrunk;->pageIds:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method free(I)I
    .locals 7

    .line 171
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/store/PageStreamTrunk;->getPos()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->free(IZ)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 174
    :goto_0
    iget v5, p0, Lorg/h2/store/PageStreamTrunk;->pageCount:I

    if-ge v1, v5, :cond_2

    .line 175
    iget-object v5, p0, Lorg/h2/store/PageStreamTrunk;->pageIds:[I

    aget v5, v5, v1

    if-eqz v3, :cond_0

    .line 177
    iget-object v6, p0, Lorg/h2/store/PageStreamTrunk;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v6, v5}, Lorg/h2/store/PageStore;->freeUnused(I)V

    goto :goto_1

    .line 179
    :cond_0
    iget-object v6, p0, Lorg/h2/store/PageStreamTrunk;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v6, v5, v2}, Lorg/h2/store/PageStore;->free(IZ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    if-ne v5, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method getLogKey()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/h2/store/PageStreamTrunk;->logKey:I

    return v0
.end method

.method public getMemory()I
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getNextTrunk()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/h2/store/PageStreamTrunk;->nextTrunk:I

    return v0
.end method

.method getPageData(I)I
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->pageIds:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->pageIds:[I

    aget p1, v0, p1

    return p1
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/store/PageStreamTrunk;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] stream trunk key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/PageStreamTrunk;->logKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/PageStreamTrunk;->nextTrunk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    .line 125
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 126
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 127
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    iget v2, p0, Lorg/h2/store/PageStreamTrunk;->parent:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    iget v2, p0, Lorg/h2/store/PageStreamTrunk;->logKey:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    iget v2, p0, Lorg/h2/store/PageStreamTrunk;->nextTrunk:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    iget v2, p0, Lorg/h2/store/PageStreamTrunk;->pageCount:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 131
    :goto_0
    iget v0, p0, Lorg/h2/store/PageStreamTrunk;->pageCount:I

    if-ge v1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    iget-object v2, p0, Lorg/h2/store/PageStreamTrunk;->pageIds:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/store/PageStreamTrunk;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/store/PageStreamTrunk;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
