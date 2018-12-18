.class Lorg/h2/store/fs/FilePathMemLZF;
.super Lorg/h2/store/fs/FilePathMem;
.source "FilePathMem.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathMem;-><init>()V

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

    .line 239
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathMemLZF;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathMem;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathMem;
    .locals 1

    .line 243
    new-instance v0, Lorg/h2/store/fs/FilePathMemLZF;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathMemLZF;-><init>()V

    .line 244
    invoke-static {p1}, Lorg/h2/store/fs/FilePathMemLZF;->getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/store/fs/FilePathMemLZF;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "memLZF"

    return-object v0
.end method
