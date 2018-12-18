.class public Lorg/h2/store/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"


# instance fields
.field private remaining:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    iput-wide p2, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-wide v0, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    iget-object v2, p0, Lorg/h2/store/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-wide v0, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/h2/store/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 41
    iget-wide v1, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-wide v0, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v0, p3

    .line 51
    iget-wide v2, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 52
    iget-object v0, p0, Lorg/h2/store/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1

    .line 54
    iget-wide p2, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lorg/h2/store/LimitInputStream;->remaining:J

    :cond_1
    return p1
.end method
