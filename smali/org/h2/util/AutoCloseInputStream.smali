.class public Lorg/h2/util/AutoCloseInputStream;
.super Ljava/io/InputStream;
.source "AutoCloseInputStream.java"


# instance fields
.field private closed:Z

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/h2/util/AutoCloseInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private autoClose(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lorg/h2/util/AutoCloseInputStream;->close()V

    :cond_0
    return p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-boolean v0, p0, Lorg/h2/util/AutoCloseInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/h2/util/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lorg/h2/util/AutoCloseInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lorg/h2/util/AutoCloseInputStream;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/util/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/util/AutoCloseInputStream;->autoClose(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lorg/h2/util/AutoCloseInputStream;->closed:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/util/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/util/AutoCloseInputStream;->autoClose(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lorg/h2/util/AutoCloseInputStream;->closed:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/util/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/util/AutoCloseInputStream;->autoClose(I)I

    move-result p1

    :goto_0
    return p1
.end method
