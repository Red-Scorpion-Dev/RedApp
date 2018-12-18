.class public Lorg/h2/store/fs/FilePathNioMapped;
.super Lorg/h2/store/fs/FilePathNio;
.source "FilePathNioMapped.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNio;-><init>()V

    return-void
.end method


# virtual methods
.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "nioMapped"

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/h2/store/fs/FileNioMapped;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathNioMapped;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMapped;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileNioMapped;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
