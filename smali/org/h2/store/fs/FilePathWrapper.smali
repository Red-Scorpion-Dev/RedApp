.class public abstract Lorg/h2/store/fs/FilePathWrapper;
.super Lorg/h2/store/fs/FilePath;
.source "FilePathWrapper.java"


# instance fields
.field private base:Lorg/h2/store/fs/FilePath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    return-void
.end method

.method private create(Ljava/lang/String;Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;
    .locals 3

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/store/fs/FilePathWrapper;

    .line 45
    iput-object p1, v0, Lorg/h2/store/fs/FilePathWrapper;->name:Ljava/lang/String;

    .line 46
    iput-object p2, v0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->canWrite()Z

    move-result v0

    return v0
.end method

.method public createDirectory()V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->createDirectory()V

    return-void
.end method

.method public createFile()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->createFile()Z

    move-result v0

    return v0
.end method

.method public createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/store/fs/FilePath;->createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object p1

    return-object p1
.end method

.method public delete()V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->delete()V

    return-void
.end method

.method public exists()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v0

    return v0
.end method

.method protected getBase()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    return-object v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->getParent()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathWrapper;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathWrapper;
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathWrapper;->unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/h2/store/fs/FilePathWrapper;->create(Ljava/lang/String;Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object p1

    return-object p1
.end method

.method protected getPrefix()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    check-cast p1, Lorg/h2/store/fs/FilePathWrapper;

    iget-object p1, p1, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/fs/FilePath;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    return-void
.end method

.method public newDirectoryStream()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->newDirectoryStream()Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 125
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/store/fs/FilePath;

    invoke-virtual {p0, v3}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->newInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p1}, Lorg/h2/store/fs/FilePath;->newOutputStream(Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public setReadOnly()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->toRealPath()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathWrapper;->unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    return-object v0
.end method

.method protected unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/h2/store/fs/FilePathWrapper;->create(Ljava/lang/String;Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object p1

    :goto_0
    return-object p1
.end method
