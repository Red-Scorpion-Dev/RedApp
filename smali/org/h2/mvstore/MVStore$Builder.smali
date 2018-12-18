.class public Lorg/h2/mvstore/MVStore$Builder;
.super Ljava/lang/Object;
.source "MVStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/MVStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final config:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2705
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/MVStore$Builder;->config:Ljava/util/HashMap;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;
    .locals 2

    .line 2908
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 2909
    new-instance v0, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    .line 2910
    iget-object v1, v0, Lorg/h2/mvstore/MVStore$Builder;->config:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    .line 2708
    iget-object v0, p0, Lorg/h2/mvstore/MVStore$Builder;->config:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public autoCommitBufferSize(I)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    const-string v0, "autoCommitBufferSize"

    .line 2741
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    return-object p1
.end method

.method public autoCommitDisabled()Lorg/h2/mvstore/MVStore$Builder;
    .locals 3

    const-string v0, "autoCommitBufferSize"

    const/4 v1, 0x0

    .line 2723
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    const-string v0, "autoCommitDelay"

    .line 2724
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public autoCompactFillRate(I)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    const-string v0, "autoCompactFillRate"

    .line 2759
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    return-object p1
.end method

.method public backgroundExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    const-string v0, "backgroundExceptionHandler"

    .line 2867
    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    return-object p1
.end method

.method public cacheSize(I)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    const-string v0, "cacheSize"

    .line 2811
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    return-object p1
.end method

.method public compress()Lorg/h2/mvstore/MVStore$Builder;
    .locals 2

    const-string v0, "compress"

    const/4 v1, 0x1

    .line 2826
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public compressHigh()Lorg/h2/mvstore/MVStore$Builder;
    .locals 2

    const-string v0, "compress"

    const/4 v1, 0x2

    .line 2841
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public encryptionKey([C)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    const-string v0, "encryptionKey"

    .line 2785
    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    return-object p1
.end method

.method public fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    const-string v0, "fileName"

    .line 2770
    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    return-object p1
.end method

.method public fileStore(Lorg/h2/mvstore/FileStore;)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    const-string v0, "fileStore"

    .line 2884
    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    return-object p1
.end method

.method public open()Lorg/h2/mvstore/MVStore;
    .locals 2

    .line 2893
    new-instance v0, Lorg/h2/mvstore/MVStore;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore$Builder;->config:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/h2/mvstore/MVStore;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public pageSplitSize(I)Lorg/h2/mvstore/MVStore$Builder;
    .locals 1

    const-string v0, "pageSplitSize"

    .line 2855
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readOnly()Lorg/h2/mvstore/MVStore$Builder;
    .locals 2

    const-string v0, "readOnly"

    const/4 v1, 0x1

    .line 2801
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/mvstore/MVStore$Builder;->config:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/util/HashMap;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
