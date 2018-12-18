.class public Lorg/h2/index/MetaCursor;
.super Ljava/lang/Object;
.source "MetaCursor.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private current:Lorg/h2/result/Row;

.field private index:I

.field private final rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/h2/index/MetaCursor;->rows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/h2/index/MetaCursor;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/h2/index/MetaCursor;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public next()Z
    .locals 3

    .line 39
    iget v0, p0, Lorg/h2/index/MetaCursor;->index:I

    iget-object v1, p0, Lorg/h2/index/MetaCursor;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/index/MetaCursor;->rows:Ljava/util/ArrayList;

    iget v1, p0, Lorg/h2/index/MetaCursor;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/index/MetaCursor;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    :goto_0
    iput-object v0, p0, Lorg/h2/index/MetaCursor;->current:Lorg/h2/result/Row;

    .line 40
    iget-object v0, p0, Lorg/h2/index/MetaCursor;->current:Lorg/h2/result/Row;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public previous()Z
    .locals 1

    .line 45
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
