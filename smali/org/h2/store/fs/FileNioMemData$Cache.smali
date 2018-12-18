.class Lorg/h2/store/fs/FileNioMemData$Cache;
.super Ljava/util/LinkedHashMap;
.source "FilePathNioMem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FileNioMemData;
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

    .line 463
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 464
    iput p1, p0, Lorg/h2/store/fs/FileNioMemData$Cache;->size:I

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

    .line 469
    invoke-virtual {p0}, Lorg/h2/store/fs/FileNioMemData$Cache;->size()I

    move-result v0

    iget v1, p0, Lorg/h2/store/fs/FileNioMemData$Cache;->size:I

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 472
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;

    .line 473
    iget-object v0, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:[Ljava/nio/ByteBuffer;

    iget p1, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileNioMemData;->compress([Ljava/nio/ByteBuffer;I)V

    const/4 p1, 0x1

    return p1
.end method
