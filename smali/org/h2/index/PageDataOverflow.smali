.class public Lorg/h2/index/PageDataOverflow;
.super Lorg/h2/store/Page;
.source "PageDataOverflow.java"


# static fields
.field static final START_LAST:I = 0x9

.field static final START_MORE:I = 0xb

.field private static final START_NEXT_OVERFLOW:I = 0x7


# instance fields
.field private final data:Lorg/h2/store/Data;

.field private nextPage:I

.field private parentPageId:I

.field private size:I

.field private start:I

.field private final store:Lorg/h2/store/PageStore;

.field private type:I


# direct methods
.method private constructor <init>(Lorg/h2/store/PageStore;ILorg/h2/store/Data;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/h2/store/Page;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    .line 76
    invoke-virtual {p0, p2}, Lorg/h2/index/PageDataOverflow;->setPos(I)V

    .line 77
    iput-object p3, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    return-void
.end method

.method static create(Lorg/h2/store/PageStore;IIIILorg/h2/store/Data;II)Lorg/h2/index/PageDataOverflow;
    .locals 2

    .line 110
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    .line 111
    new-instance v1, Lorg/h2/index/PageDataOverflow;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/index/PageDataOverflow;-><init>(Lorg/h2/store/PageStore;ILorg/h2/store/Data;)V

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, v1, p1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    int-to-byte p0, p2

    .line 113
    invoke-virtual {v0, p0}, Lorg/h2/store/Data;->writeByte(B)V

    const/4 p0, 0x0

    .line 114
    invoke-virtual {v0, p0}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 115
    invoke-virtual {v0, p3}, Lorg/h2/store/Data;->writeInt(I)V

    const/4 p0, 0x3

    if-ne p2, p0, :cond_0

    .line 117
    invoke-virtual {v0, p4}, Lorg/h2/store/Data;->writeInt(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, p7}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 121
    :goto_0
    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result p0

    iput p0, v1, Lorg/h2/index/PageDataOverflow;->start:I

    .line 122
    invoke-virtual {p5}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0, p6, p7}, Lorg/h2/store/Data;->write([BII)V

    .line 123
    iput p2, v1, Lorg/h2/index/PageDataOverflow;->type:I

    .line 124
    iput p3, v1, Lorg/h2/index/PageDataOverflow;->parentPageId:I

    .line 125
    iput p4, v1, Lorg/h2/index/PageDataOverflow;->nextPage:I

    .line 126
    iput p7, v1, Lorg/h2/index/PageDataOverflow;->size:I

    return-object v1
.end method

.method public static read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 89
    new-instance v0, Lorg/h2/index/PageDataOverflow;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageDataOverflow;-><init>(Lorg/h2/store/PageStore;ILorg/h2/store/Data;)V

    .line 90
    invoke-direct {v0}, Lorg/h2/index/PageDataOverflow;->read()V

    return-object v0
.end method

.method private read()V
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 135
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataOverflow;->type:I

    .line 136
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    .line 137
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataOverflow;->parentPageId:I

    .line 138
    iget v0, p0, Lorg/h2/index/PageDataOverflow;->type:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataOverflow;->size:I

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    goto :goto_0

    .line 141
    :cond_0
    iget v0, p0, Lorg/h2/index/PageDataOverflow;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    .line 143
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageDataOverflow;->size:I

    .line 148
    :goto_0
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataOverflow;->start:I

    return-void

    :cond_1
    const v0, 0x15fae

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageDataOverflow;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/index/PageDataOverflow;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private setNext(II)V
    .locals 1

    .line 248
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    if-eq p1, v0, :cond_0

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "move "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 251
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 252
    iput p2, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    .line 253
    iget-object p1, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Lorg/h2/store/Data;->setInt(II)V

    return-void
.end method

.method private writeData()V
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 186
    invoke-direct {p0}, Lorg/h2/index/PageDataOverflow;->writeHead()V

    .line 187
    iget v0, p0, Lorg/h2/index/PageDataOverflow;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataOverflow;->size:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    :goto_0
    return-void
.end method

.method private writeHead()V
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataOverflow;->type:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 173
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 174
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataOverflow;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public canRemove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method free()V
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    iget-object v1, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 261
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/index/PageDataOverflow;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method public getMemory()I
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getNextOverflow()I
    .locals 1

    .line 168
    iget v0, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    return v0
.end method

.method public isStream()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 11

    .line 220
    iget-object p1, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    iget v0, p0, Lorg/h2/index/PageDataOverflow;->parentPageId:I

    invoke-virtual {p1, v0}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 225
    iget v1, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    if-eqz v1, :cond_0

    .line 226
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageDataOverflow;

    .line 228
    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    iget-object v2, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v1, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 229
    iget-object v3, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    iget v5, p0, Lorg/h2/index/PageDataOverflow;->type:I

    iget v6, p0, Lorg/h2/index/PageDataOverflow;->parentPageId:I

    iget v7, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    iget-object v8, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    iget v9, p0, Lorg/h2/index/PageDataOverflow;->start:I

    iget v10, p0, Lorg/h2/index/PageDataOverflow;->size:I

    move v4, p2

    invoke-static/range {v3 .. v10}, Lorg/h2/index/PageDataOverflow;->create(Lorg/h2/store/PageStore;IIIILorg/h2/store/Data;II)Lorg/h2/index/PageDataOverflow;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0, p2}, Lorg/h2/index/PageDataOverflow;->setParentPageId(I)V

    .line 234
    iget-object v1, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 236
    :cond_1
    instance-of v0, p1, Lorg/h2/index/PageDataOverflow;

    if-eqz v0, :cond_2

    .line 237
    move-object v0, p1

    check-cast v0, Lorg/h2/index/PageDataOverflow;

    .line 238
    invoke-virtual {p0}, Lorg/h2/index/PageDataOverflow;->getPos()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lorg/h2/index/PageDataOverflow;->setNext(II)V

    goto :goto_0

    .line 240
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/h2/index/PageDataLeaf;

    .line 241
    invoke-virtual {p0}, Lorg/h2/index/PageDataOverflow;->getPos()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/h2/index/PageDataLeaf;->setOverflow(II)V

    .line 243
    :goto_0
    iget-object p2, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 244
    iget-object p1, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/index/PageDataOverflow;->getPos()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/store/PageStore;->free(I)V

    return-void

    .line 222
    :cond_3
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method readInto(Lorg/h2/store/Data;)I
    .locals 3

    .line 158
    iget v0, p0, Lorg/h2/index/PageDataOverflow;->size:I

    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 159
    iget v0, p0, Lorg/h2/index/PageDataOverflow;->type:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x9

    iget v2, p0, Lorg/h2/index/PageDataOverflow;->size:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/h2/store/Data;->write([BII)V

    const/4 p1, 0x0

    return p1

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xb

    iget v2, p0, Lorg/h2/index/PageDataOverflow;->size:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/h2/store/Data;->write([BII)V

    .line 164
    iget p1, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    return p1
.end method

.method setParentPageId(I)V
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    iget-object v1, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 213
    iput p1, p0, Lorg/h2/index/PageDataOverflow;->parentPageId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageDataOverflow;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] data leaf overflow parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageDataOverflow;->parentPageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageDataOverflow;->nextPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    .line 179
    invoke-direct {p0}, Lorg/h2/index/PageDataOverflow;->writeData()V

    .line 180
    iget-object v0, p0, Lorg/h2/index/PageDataOverflow;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/index/PageDataOverflow;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageDataOverflow;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
