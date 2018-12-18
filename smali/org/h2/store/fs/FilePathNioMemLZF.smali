.class Lorg/h2/store/fs/FilePathNioMemLZF;
.super Lorg/h2/store/fs/FilePathNioMem;
.source "FilePathNioMem.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;-><init>()V

    return-void
.end method


# virtual methods
.method compressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathNioMemLZF;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;
    .locals 1

    .line 241
    new-instance v0, Lorg/h2/store/fs/FilePathNioMemLZF;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathNioMemLZF;-><init>()V

    .line 242
    invoke-static {p1}, Lorg/h2/store/fs/FilePathNioMemLZF;->getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/store/fs/FilePathNioMemLZF;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "nioMemLZF"

    return-object v0
.end method
