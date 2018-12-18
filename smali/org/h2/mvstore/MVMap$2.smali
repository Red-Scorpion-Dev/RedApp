.class Lorg/h2/mvstore/MVMap$2;
.super Ljava/util/AbstractSet;
.source "MVMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/mvstore/MVMap;

.field final synthetic val$map:Lorg/h2/mvstore/MVMap;

.field final synthetic val$root:Lorg/h2/mvstore/Page;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lorg/h2/mvstore/MVMap$2;->this$0:Lorg/h2/mvstore/MVMap;

    iput-object p2, p0, Lorg/h2/mvstore/MVMap$2;->val$map:Lorg/h2/mvstore/MVMap;

    iput-object p3, p0, Lorg/h2/mvstore/MVMap$2;->val$root:Lorg/h2/mvstore/Page;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 899
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$2;->this$0:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 869
    new-instance v0, Lorg/h2/mvstore/Cursor;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap$2;->val$map:Lorg/h2/mvstore/MVMap;

    iget-object v2, p0, Lorg/h2/mvstore/MVMap$2;->val$root:Lorg/h2/mvstore/Page;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/mvstore/Cursor;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    .line 870
    new-instance v1, Lorg/h2/mvstore/MVMap$2$1;

    invoke-direct {v1, p0, v0}, Lorg/h2/mvstore/MVMap$2$1;-><init>(Lorg/h2/mvstore/MVMap$2;Lorg/h2/mvstore/Cursor;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 894
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$2;->this$0:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v0

    return v0
.end method
