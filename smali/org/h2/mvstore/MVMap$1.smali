.class Lorg/h2/mvstore/MVMap$1;
.super Ljava/util/AbstractList;
.source "MVMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/MVMap;->keyList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/mvstore/MVMap;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/MVMap;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lorg/h2/mvstore/MVMap$1;->this$0:Lorg/h2/mvstore/MVMap;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$1;->this$0:Lorg/h2/mvstore/MVMap;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/MVMap;->getKey(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$1;->this$0:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->getKeyIndex(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public size()I
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$1;->this$0:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v0

    return v0
.end method
