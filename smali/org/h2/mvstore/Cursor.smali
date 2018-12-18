.class public Lorg/h2/mvstore/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final from:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastPage:Lorg/h2/mvstore/Page;

.field private lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final map:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private pos:Lorg/h2/mvstore/CursorPos;

.field private final root:Lorg/h2/mvstore/Page;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "TK;*>;",
            "Lorg/h2/mvstore/Page;",
            "TK;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/h2/mvstore/Cursor;->map:Lorg/h2/mvstore/MVMap;

    .line 29
    iput-object p2, p0, Lorg/h2/mvstore/Cursor;->root:Lorg/h2/mvstore/Page;

    .line 30
    iput-object p3, p0, Lorg/h2/mvstore/Cursor;->from:Ljava/lang/Object;

    return-void
.end method

.method private fetchNext()V
    .locals 5

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget v0, v0, Lorg/h2/mvstore/CursorPos;->index:I

    iget-object v2, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v2, v2, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 140
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget v1, v0, Lorg/h2/mvstore/CursorPos;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/h2/mvstore/CursorPos;->index:I

    .line 141
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v0, v0, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/Cursor;->current:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v0, v0, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/Cursor;->currentValue:Ljava/lang/Object;

    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v0, v0, Lorg/h2/mvstore/CursorPos;->parent:Lorg/h2/mvstore/CursorPos;

    iput-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    .line 146
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    if-nez v0, :cond_2

    goto :goto_1

    .line 149
    :cond_2
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget v0, v0, Lorg/h2/mvstore/CursorPos;->index:I

    iget-object v2, p0, Lorg/h2/mvstore/Cursor;->map:Lorg/h2/mvstore/MVMap;

    iget-object v3, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v3, v3, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v0, v0, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    iget-object v2, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget v3, v2, Lorg/h2/mvstore/CursorPos;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/h2/mvstore/CursorPos;->index:I

    invoke-virtual {v0, v3}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/Cursor;->min(Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_3
    :goto_1
    iput-object v1, p0, Lorg/h2/mvstore/Cursor;->current:Ljava/lang/Object;

    return-void
.end method

.method private min(Lorg/h2/mvstore/Page;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/Page;",
            "TK;)V"
        }
    .end annotation

    .line 114
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result p2

    :goto_1
    if-gez p2, :cond_1

    neg-int p2, p2

    add-int/lit8 p2, p2, -0x1

    .line 119
    :cond_1
    new-instance v0, Lorg/h2/mvstore/CursorPos;

    iget-object v1, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    invoke-direct {v0, p1, p2, v1}, Lorg/h2/mvstore/CursorPos;-><init>(Lorg/h2/mvstore/Page;ILorg/h2/mvstore/CursorPos;)V

    iput-object v0, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    return-void

    :cond_2
    if-nez p2, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    :goto_2
    if-gez v0, :cond_4

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 128
    :goto_3
    new-instance v1, Lorg/h2/mvstore/CursorPos;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    invoke-direct {v1, p1, v2, v3}, Lorg/h2/mvstore/CursorPos;-><init>(Lorg/h2/mvstore/Page;ILorg/h2/mvstore/CursorPos;)V

    iput-object v1, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    .line 129
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->last:Ljava/lang/Object;

    return-object v0
.end method

.method getPage()Lorg/h2/mvstore/Page;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->lastPage:Lorg/h2/mvstore/Page;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->lastValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 35
    iget-boolean v0, p0, Lorg/h2/mvstore/Cursor;->initialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->root:Lorg/h2/mvstore/Page;

    iget-object v2, p0, Lorg/h2/mvstore/Cursor;->from:Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lorg/h2/mvstore/Cursor;->min(Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    .line 37
    iput-boolean v1, p0, Lorg/h2/mvstore/Cursor;->initialized:Z

    .line 38
    invoke-direct {p0}, Lorg/h2/mvstore/Cursor;->fetchNext()V

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->current:Ljava/lang/Object;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    .line 46
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->current:Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lorg/h2/mvstore/Cursor;->current:Ljava/lang/Object;

    iput-object v1, p0, Lorg/h2/mvstore/Cursor;->last:Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lorg/h2/mvstore/Cursor;->currentValue:Ljava/lang/Object;

    iput-object v1, p0, Lorg/h2/mvstore/Cursor;->lastValue:Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    iget-object v1, v1, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    :goto_0
    iput-object v1, p0, Lorg/h2/mvstore/Cursor;->lastPage:Lorg/h2/mvstore/Page;

    .line 50
    invoke-direct {p0}, Lorg/h2/mvstore/Cursor;->fetchNext()V

    return-object v0
.end method

.method public remove()V
    .locals 1

    const-string v0, "Removing is not supported"

    .line 101
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public skip(J)V
    .locals 5

    .line 83
    invoke-virtual {p0}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    :goto_0
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 88
    invoke-direct {p0}, Lorg/h2/mvstore/Cursor;->fetchNext()V

    move-wide p1, v0

    goto :goto_0

    :cond_1
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lorg/h2/mvstore/Cursor;->map:Lorg/h2/mvstore/MVMap;

    iget-object v1, p0, Lorg/h2/mvstore/Cursor;->current:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->getKeyIndex(Ljava/lang/Object;)J

    move-result-wide v0

    .line 93
    iget-object v2, p0, Lorg/h2/mvstore/Cursor;->map:Lorg/h2/mvstore/MVMap;

    add-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Lorg/h2/mvstore/MVMap;->getKey(J)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 94
    iput-object p2, p0, Lorg/h2/mvstore/Cursor;->pos:Lorg/h2/mvstore/CursorPos;

    .line 95
    iget-object p2, p0, Lorg/h2/mvstore/Cursor;->root:Lorg/h2/mvstore/Page;

    invoke-direct {p0, p2, p1}, Lorg/h2/mvstore/Cursor;->min(Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0}, Lorg/h2/mvstore/Cursor;->fetchNext()V

    return-void
.end method
