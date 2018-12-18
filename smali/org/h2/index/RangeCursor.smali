.class Lorg/h2/index/RangeCursor;
.super Ljava/lang/Object;
.source "RangeCursor.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private beforeFirst:Z

.field private current:J

.field private currentRow:Lorg/h2/result/Row;

.field private final end:J

.field private session:Lorg/h2/engine/Session;

.field private final start:J

.field private final step:J


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;JJ)V
    .locals 8

    const-wide/16 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 27
    invoke-direct/range {v0 .. v7}, Lorg/h2/index/RangeCursor;-><init>(Lorg/h2/engine/Session;JJJ)V

    return-void
.end method

.method constructor <init>(Lorg/h2/engine/Session;JJJ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/h2/index/RangeCursor;->session:Lorg/h2/engine/Session;

    .line 32
    iput-wide p2, p0, Lorg/h2/index/RangeCursor;->start:J

    .line 33
    iput-wide p4, p0, Lorg/h2/index/RangeCursor;->end:J

    .line 34
    iput-wide p6, p0, Lorg/h2/index/RangeCursor;->step:J

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lorg/h2/index/RangeCursor;->beforeFirst:Z

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/h2/index/RangeCursor;->currentRow:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/h2/index/RangeCursor;->currentRow:Lorg/h2/result/Row;

    return-object v0
.end method

.method public next()Z
    .locals 7

    .line 50
    iget-boolean v0, p0, Lorg/h2/index/RangeCursor;->beforeFirst:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    iput-boolean v1, p0, Lorg/h2/index/RangeCursor;->beforeFirst:Z

    .line 52
    iget-wide v2, p0, Lorg/h2/index/RangeCursor;->start:J

    iput-wide v2, p0, Lorg/h2/index/RangeCursor;->current:J

    goto :goto_0

    .line 54
    :cond_0
    iget-wide v2, p0, Lorg/h2/index/RangeCursor;->current:J

    iget-wide v4, p0, Lorg/h2/index/RangeCursor;->step:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/index/RangeCursor;->current:J

    .line 56
    :goto_0
    iget-object v0, p0, Lorg/h2/index/RangeCursor;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/h2/value/Value;

    iget-wide v4, p0, Lorg/h2/index/RangeCursor;->current:J

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/RangeCursor;->currentRow:Lorg/h2/result/Row;

    .line 57
    iget-wide v3, p0, Lorg/h2/index/RangeCursor;->step:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    iget-wide v3, p0, Lorg/h2/index/RangeCursor;->current:J

    iget-wide v5, p0, Lorg/h2/index/RangeCursor;->end:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    iget-wide v3, p0, Lorg/h2/index/RangeCursor;->current:J

    iget-wide v5, p0, Lorg/h2/index/RangeCursor;->end:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return v1
.end method

.method public previous()Z
    .locals 1

    .line 62
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
