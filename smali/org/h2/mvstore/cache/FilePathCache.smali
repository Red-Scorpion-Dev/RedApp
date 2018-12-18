.class public Lorg/h2/mvstore/cache/FilePathCache;
.super Lorg/h2/store/fs/FilePathWrapper;
.source "FilePathCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/cache/FilePathCache$FileCache;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathWrapper;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .locals 1

    .line 21
    new-instance v0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;

    invoke-direct {v0, p0}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;-><init>(Ljava/nio/channels/FileChannel;)V

    return-object v0
.end method


# virtual methods
.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "cache"

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;

    invoke-virtual {p0}, Lorg/h2/mvstore/cache/FilePathCache;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;-><init>(Ljava/nio/channels/FileChannel;)V

    return-object v0
.end method
