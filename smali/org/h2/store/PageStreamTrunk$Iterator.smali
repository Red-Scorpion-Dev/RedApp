.class Lorg/h2/store/PageStreamTrunk$Iterator;
.super Ljava/lang/Object;
.source "PageStreamTrunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/PageStreamTrunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Iterator"
.end annotation


# instance fields
.field private canDelete:Z

.field private current:I

.field private first:I

.field private next:I

.field private previous:I

.field private final store:Lorg/h2/store/PageStore;


# direct methods
.method constructor <init>(Lorg/h2/store/PageStore;I)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->store:Lorg/h2/store/PageStore;

    .line 226
    iput p2, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    return-void
.end method


# virtual methods
.method canDelete()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->canDelete:Z

    return v0
.end method

.method getCurrentPageId()I
    .locals 1

    .line 230
    iget v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->current:I

    return v0
.end method

.method next()Lorg/h2/store/PageStreamTrunk;
    .locals 4

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->canDelete:Z

    .line 240
    iget v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->first:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 241
    iget v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    iput v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->first:I

    goto :goto_0

    .line 242
    :cond_0
    iget v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->first:I

    iget v2, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    if-ne v0, v2, :cond_1

    return-object v1

    .line 245
    :cond_1
    :goto_0
    iget v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    iget-object v2, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2}, Lorg/h2/store/PageStore;->getPageCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_1

    .line 249
    :cond_2
    iget v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    iput v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->current:I

    .line 251
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    invoke-virtual {v0, v2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 259
    instance-of v2, v0, Lorg/h2/store/PageStreamTrunk;

    if-nez v2, :cond_3

    instance-of v2, v0, Lorg/h2/store/PageStreamData;

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 261
    iput-boolean v2, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->canDelete:Z

    .line 263
    :cond_4
    instance-of v2, v0, Lorg/h2/store/PageStreamTrunk;

    if-nez v2, :cond_5

    return-object v1

    .line 266
    :cond_5
    check-cast v0, Lorg/h2/store/PageStreamTrunk;

    .line 267
    iget v2, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->previous:I

    if-lez v2, :cond_6

    iget v2, v0, Lorg/h2/store/PageStreamTrunk;->parent:I

    iget v3, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->previous:I

    if-eq v2, v3, :cond_6

    return-object v1

    .line 270
    :cond_6
    iget v1, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    iput v1, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->previous:I

    .line 271
    iget v1, v0, Lorg/h2/store/PageStreamTrunk;->nextTrunk:I

    iput v1, p0, Lorg/h2/store/PageStreamTrunk$Iterator;->next:I

    return-object v0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v2

    const v3, 0x15fae

    if-ne v2, v3, :cond_7

    return-object v1

    .line 257
    :cond_7
    throw v0

    :cond_8
    :goto_1
    return-object v1
.end method
