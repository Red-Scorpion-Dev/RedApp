.class public Lorg/h2/index/ScanCursor;
.super Ljava/lang/Object;
.source "ScanCursor.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private delta:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private final multiVersion:Z

.field private row:Lorg/h2/result/Row;

.field private final scan:Lorg/h2/index/ScanIndex;

.field private final session:Lorg/h2/engine/Session;


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;Lorg/h2/index/ScanIndex;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/h2/index/ScanCursor;->session:Lorg/h2/engine/Session;

    .line 26
    iput-object p2, p0, Lorg/h2/index/ScanCursor;->scan:Lorg/h2/index/ScanIndex;

    .line 27
    iput-boolean p3, p0, Lorg/h2/index/ScanCursor;->multiVersion:Z

    if-eqz p3, :cond_0

    .line 29
    invoke-virtual {p2}, Lorg/h2/index/ScanIndex;->getDelta()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/ScanCursor;->delta:Ljava/util/Iterator;

    :cond_0
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public next()Z
    .locals 4

    .line 46
    iget-boolean v0, p0, Lorg/h2/index/ScanCursor;->multiVersion:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->delta:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->delta:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/h2/index/ScanCursor;->delta:Ljava/util/Iterator;

    .line 51
    iput-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->delta:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    iput-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    .line 55
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    invoke-virtual {v0}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    invoke-virtual {v0}, Lorg/h2/result/Row;->getSessionId()I

    move-result v0

    iget-object v3, p0, Lorg/h2/index/ScanCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getId()I

    move-result v3

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->scan:Lorg/h2/index/ScanIndex;

    iget-object v3, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, v3}, Lorg/h2/index/ScanIndex;->getNextRow(Lorg/h2/result/Row;)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    .line 60
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    invoke-virtual {v0}, Lorg/h2/result/Row;->getSessionId()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    invoke-virtual {v0}, Lorg/h2/result/Row;->getSessionId()I

    move-result v0

    iget-object v3, p0, Lorg/h2/index/ScanCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getId()I

    move-result v3

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 69
    :cond_5
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->scan:Lorg/h2/index/ScanIndex;

    iget-object v3, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, v3}, Lorg/h2/index/ScanIndex;->getNextRow(Lorg/h2/result/Row;)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    .line 70
    iget-object v0, p0, Lorg/h2/index/ScanCursor;->row:Lorg/h2/result/Row;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public previous()Z
    .locals 1

    .line 75
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
