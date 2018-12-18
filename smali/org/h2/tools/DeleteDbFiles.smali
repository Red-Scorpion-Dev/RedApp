.class public Lorg/h2/tools/DeleteDbFiles;
.super Lorg/h2/util/Tool;
.source "DeleteDbFiles.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 75
    new-instance v0, Lorg/h2/tools/DeleteDbFiles;

    invoke-direct {v0}, Lorg/h2/tools/DeleteDbFiles;-><init>()V

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/tools/DeleteDbFiles;->process(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/h2/tools/DeleteDbFiles;

    invoke-direct {v0}, Lorg/h2/tools/DeleteDbFiles;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/DeleteDbFiles;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 86
    invoke-static {p1, p2, v0}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/h2/tools/DeleteDbFiles;->printNoDatabaseFilesFound(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 91
    invoke-static {p2, p3}, Lorg/h2/tools/DeleteDbFiles;->process(Ljava/lang/String;Z)V

    if-nez p3, :cond_1

    .line 93
    iget-object v0, p0, Lorg/h2/tools/DeleteDbFiles;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static process(Ljava/lang/String;Z)V
    .locals 1

    .line 99
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->tryDelete(Ljava/lang/String;)Z

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    const-string p1, ".temp.db"

    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".trace.db"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_2
    :goto_0
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->tryDelete(Ljava/lang/String;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public varargs runTool([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 49
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 50
    aget-object v4, p1, v1

    const-string v5, "-dir"

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 52
    aget-object v0, p1, v1

    goto :goto_1

    :cond_0
    const-string v5, "-db"

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 54
    aget-object v2, p1, v1

    goto :goto_1

    :cond_1
    const-string v5, "-quiet"

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "-help"

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p0, v4}, Lorg/h2/tools/DeleteDbFiles;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v1, v6

    goto :goto_0

    .line 58
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/h2/tools/DeleteDbFiles;->showUsage()V

    return-void

    .line 64
    :cond_5
    invoke-direct {p0, v0, v2, v3}, Lorg/h2/tools/DeleteDbFiles;->process(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
