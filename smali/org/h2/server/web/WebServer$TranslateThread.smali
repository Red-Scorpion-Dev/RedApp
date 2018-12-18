.class Lorg/h2/server/web/WebServer$TranslateThread;
.super Ljava/lang/Thread;
.source "WebServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/server/web/WebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslateThread"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private volatile stopNow:Z

.field final synthetic this$0:Lorg/h2/server/web/WebServer;

.field private final translation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/h2/server/web/WebServer;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 785
    iput-object p1, p0, Lorg/h2/server/web/WebServer$TranslateThread;->this$0:Lorg/h2/server/web/WebServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 781
    new-instance p1, Ljava/io/File;

    const-string v0, "translation.properties"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/h2/server/web/WebServer$TranslateThread;->file:Ljava/io/File;

    .line 786
    iput-object p2, p0, Lorg/h2/server/web/WebServer$TranslateThread;->translation:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 790
    iget-object v0, p0, Lorg/h2/server/web/WebServer$TranslateThread;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 804
    :goto_0
    iget-boolean v0, p0, Lorg/h2/server/web/WebServer$TranslateThread;->stopNow:Z

    if-nez v0, :cond_1

    .line 806
    :try_start_0
    new-instance v0, Lorg/h2/util/SortedProperties;

    invoke-direct {v0}, Lorg/h2/util/SortedProperties;-><init>()V

    .line 807
    iget-object v1, p0, Lorg/h2/server/web/WebServer$TranslateThread;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lorg/h2/server/web/WebServer$TranslateThread;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 809
    invoke-virtual {v0, v1}, Lorg/h2/util/SortedProperties;->load(Ljava/io/InputStream;)V

    .line 810
    iget-object v1, p0, Lorg/h2/server/web/WebServer$TranslateThread;->translation:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 812
    :cond_0
    iget-object v1, p0, Lorg/h2/server/web/WebServer$TranslateThread;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 813
    iget-object v2, p0, Lorg/h2/server/web/WebServer$TranslateThread;->translation:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lorg/h2/util/SortedProperties;->putAll(Ljava/util/Map;)V

    const-string v2, "Translation"

    .line 814
    invoke-virtual {v0, v1, v2}, Lorg/h2/util/SortedProperties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_1
    const-wide/16 v0, 0x3e8

    .line 816
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 818
    iget-object v1, p0, Lorg/h2/server/web/WebServer$TranslateThread;->this$0:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopNow()V
    .locals 1

    const/4 v0, 0x1

    .line 794
    iput-boolean v0, p0, Lorg/h2/server/web/WebServer$TranslateThread;->stopNow:Z

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/server/web/WebServer$TranslateThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
