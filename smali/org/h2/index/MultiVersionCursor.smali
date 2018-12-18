.class public Lorg/h2/index/MultiVersionCursor;
.super Ljava/lang/Object;
.source "MultiVersionCursor.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private final baseCursor:Lorg/h2/index/Cursor;

.field private baseRow:Lorg/h2/result/SearchRow;

.field private final deltaCursor:Lorg/h2/index/Cursor;

.field private deltaRow:Lorg/h2/result/Row;

.field private end:Z

.field private final index:Lorg/h2/index/MultiVersionIndex;

.field private needNewBase:Z

.field private needNewDelta:Z

.field private onBase:Z

.field private reverse:Z

.field private final session:Lorg/h2/engine/Session;

.field private final sync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;Lorg/h2/index/MultiVersionIndex;Lorg/h2/index/Cursor;Lorg/h2/index/Cursor;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/h2/index/MultiVersionCursor;->session:Lorg/h2/engine/Session;

    .line 34
    iput-object p2, p0, Lorg/h2/index/MultiVersionCursor;->index:Lorg/h2/index/MultiVersionIndex;

    .line 35
    iput-object p3, p0, Lorg/h2/index/MultiVersionCursor;->baseCursor:Lorg/h2/index/Cursor;

    .line 36
    iput-object p4, p0, Lorg/h2/index/MultiVersionCursor;->deltaCursor:Lorg/h2/index/Cursor;

    .line 37
    iput-object p5, p0, Lorg/h2/index/MultiVersionCursor;->sync:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    .line 39
    iput-boolean p1, p0, Lorg/h2/index/MultiVersionCursor;->needNewBase:Z

    return-void
.end method

.method private loadNext(Z)V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/h2/index/MultiVersionCursor;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 57
    :try_start_0
    iget-object p1, p0, Lorg/h2/index/MultiVersionCursor;->baseCursor:Lorg/h2/index/Cursor;

    invoke-direct {p0, p1}, Lorg/h2/index/MultiVersionCursor;->step(Lorg/h2/index/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lorg/h2/index/MultiVersionCursor;->baseCursor:Lorg/h2/index/Cursor;

    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/MultiVersionCursor;->baseRow:Lorg/h2/result/SearchRow;

    goto :goto_0

    .line 60
    :cond_0
    iput-object v1, p0, Lorg/h2/index/MultiVersionCursor;->baseRow:Lorg/h2/result/SearchRow;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 63
    :cond_1
    iget-object p1, p0, Lorg/h2/index/MultiVersionCursor;->deltaCursor:Lorg/h2/index/Cursor;

    invoke-direct {p0, p1}, Lorg/h2/index/MultiVersionCursor;->step(Lorg/h2/index/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    iget-object p1, p0, Lorg/h2/index/MultiVersionCursor;->deltaCursor:Lorg/h2/index/Cursor;

    invoke-interface {p1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/MultiVersionCursor;->deltaRow:Lorg/h2/result/Row;

    goto :goto_0

    .line 66
    :cond_2
    iput-object v1, p0, Lorg/h2/index/MultiVersionCursor;->deltaRow:Lorg/h2/result/Row;

    .line 69
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private step(Lorg/h2/index/Cursor;)Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/h2/index/MultiVersionCursor;->reverse:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/h2/index/Cursor;->previous()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/h2/index/MultiVersionCursor;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->end:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 80
    monitor-exit v0

    return-object v1

    .line 82
    :cond_0
    iget-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->onBase:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->baseCursor:Lorg/h2/index/Cursor;

    :goto_0
    invoke-interface {v1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->deltaCursor:Lorg/h2/index/Cursor;

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/h2/index/MultiVersionCursor;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->end:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 90
    monitor-exit v0

    return-object v1

    .line 92
    :cond_0
    iget-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->onBase:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->baseCursor:Lorg/h2/index/Cursor;

    :goto_0
    invoke-interface {v1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->deltaCursor:Lorg/h2/index/Cursor;

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadCurrent()V
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/h2/index/MultiVersionCursor;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->baseCursor:Lorg/h2/index/Cursor;

    invoke-interface {v1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/index/MultiVersionCursor;->baseRow:Lorg/h2/result/SearchRow;

    .line 48
    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->deltaCursor:Lorg/h2/index/Cursor;

    invoke-interface {v1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/index/MultiVersionCursor;->deltaRow:Lorg/h2/result/Row;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    .line 50
    iput-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->needNewBase:Z

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public next()Z
    .locals 9

    .line 98
    iget-object v0, p0, Lorg/h2/index/MultiVersionCursor;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->end:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 103
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 104
    invoke-direct {p0, v2}, Lorg/h2/index/MultiVersionCursor;->loadNext(Z)V

    .line 105
    iput-boolean v2, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    .line 107
    :cond_1
    iget-boolean v1, p0, Lorg/h2/index/MultiVersionCursor;->needNewBase:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 108
    invoke-direct {p0, v3}, Lorg/h2/index/MultiVersionCursor;->loadNext(Z)V

    .line 109
    iput-boolean v2, p0, Lorg/h2/index/MultiVersionCursor;->needNewBase:Z

    .line 111
    :cond_2
    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->deltaRow:Lorg/h2/result/Row;

    if-nez v1, :cond_4

    .line 112
    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->baseRow:Lorg/h2/result/SearchRow;

    if-nez v1, :cond_3

    .line 113
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->end:Z

    .line 114
    monitor-exit v0

    return v2

    .line 116
    :cond_3
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->onBase:Z

    .line 117
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewBase:Z

    .line 118
    monitor-exit v0

    return v3

    .line 120
    :cond_4
    iget-object v1, p0, Lorg/h2/index/MultiVersionCursor;->deltaRow:Lorg/h2/result/Row;

    invoke-virtual {v1}, Lorg/h2/result/Row;->getSessionId()I

    move-result v1

    .line 121
    iget-object v4, p0, Lorg/h2/index/MultiVersionCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getId()I

    move-result v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 122
    :goto_1
    iget-object v4, p0, Lorg/h2/index/MultiVersionCursor;->deltaRow:Lorg/h2/result/Row;

    invoke-virtual {v4}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v4

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 124
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    goto :goto_0

    .line 127
    :cond_6
    iget-object v5, p0, Lorg/h2/index/MultiVersionCursor;->baseRow:Lorg/h2/result/SearchRow;

    if-nez v5, :cond_9

    if-eqz v4, :cond_8

    if-eqz v1, :cond_7

    .line 130
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->end:Z

    .line 131
    monitor-exit v0

    return v2

    .line 134
    :cond_7
    iput-boolean v2, p0, Lorg/h2/index/MultiVersionCursor;->onBase:Z

    .line 135
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    .line 136
    monitor-exit v0

    return v3

    .line 138
    :cond_8
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 140
    :cond_9
    iget-object v5, p0, Lorg/h2/index/MultiVersionCursor;->index:Lorg/h2/index/MultiVersionIndex;

    iget-object v6, p0, Lorg/h2/index/MultiVersionCursor;->deltaRow:Lorg/h2/result/Row;

    iget-object v7, p0, Lorg/h2/index/MultiVersionCursor;->baseRow:Lorg/h2/result/SearchRow;

    invoke-virtual {v5, v6, v7}, Lorg/h2/index/MultiVersionIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v5

    if-nez v5, :cond_a

    .line 144
    iget-object v5, p0, Lorg/h2/index/MultiVersionCursor;->deltaRow:Lorg/h2/result/Row;

    invoke-virtual {v5}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v5

    .line 145
    iget-object v7, p0, Lorg/h2/index/MultiVersionCursor;->baseRow:Lorg/h2/result/SearchRow;

    invoke-interface {v7}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v7

    .line 146
    invoke-static {v5, v6, v7, v8}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result v5

    :cond_a
    if-nez v5, :cond_d

    if-eqz v4, :cond_b

    if-eqz v1, :cond_d

    .line 151
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    .line 156
    iput-boolean v2, p0, Lorg/h2/index/MultiVersionCursor;->onBase:Z

    .line 157
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewBase:Z

    .line 158
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    .line 159
    monitor-exit v0

    return v3

    .line 162
    :cond_c
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewBase:Z

    .line 163
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    goto/16 :goto_0

    :cond_d
    :goto_2
    if-lez v5, :cond_e

    .line 168
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->onBase:Z

    .line 169
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewBase:Z

    .line 170
    monitor-exit v0

    return v3

    .line 172
    :cond_e
    iput-boolean v2, p0, Lorg/h2/index/MultiVersionCursor;->onBase:Z

    .line 173
    iput-boolean v3, p0, Lorg/h2/index/MultiVersionCursor;->needNewDelta:Z

    .line 174
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 176
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public previous()Z
    .locals 2

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lorg/h2/index/MultiVersionCursor;->reverse:Z

    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/index/MultiVersionCursor;->next()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iput-boolean v0, p0, Lorg/h2/index/MultiVersionCursor;->reverse:Z

    return v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/h2/index/MultiVersionCursor;->reverse:Z

    throw v1
.end method
