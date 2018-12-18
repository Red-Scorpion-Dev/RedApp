.class Lorg/h2/store/fs/FileMemData$Cache;
.super Ljava/util/LinkedHashMap;
.source "FilePathMem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FileMemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    .line 470
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 471
    iput p1, p0, Lorg/h2/store/fs/FileMemData$Cache;->size:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lorg/h2/store/fs/FileMemData$Cache;->size()I

    move-result v0

    iget v1, p0, Lorg/h2/store/fs/FileMemData$Cache;->size:I

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 479
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/store/fs/FileMemData$CompressItem;

    .line 480
    iget-object v0, p1, Lorg/h2/store/fs/FileMemData$CompressItem;->data:[[B

    iget p1, p1, Lorg/h2/store/fs/FileMemData$CompressItem;->page:I

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileMemData;->compress([[BI)V

    const/4 p1, 0x1

    return p1
.end method
