.class Lorg/h2/mvstore/MVMap$2$1;
.super Ljava/lang/Object;
.source "MVMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/MVMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/h2/mvstore/MVMap$2;

.field final synthetic val$cursor:Lorg/h2/mvstore/Cursor;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/MVMap$2;Lorg/h2/mvstore/Cursor;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lorg/h2/mvstore/MVMap$2$1;->this$1:Lorg/h2/mvstore/MVMap$2;

    iput-object p2, p0, Lorg/h2/mvstore/MVMap$2$1;->val$cursor:Lorg/h2/mvstore/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 874
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$2$1;->val$cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 870
    invoke-virtual {p0}, Lorg/h2/mvstore/MVMap$2$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lorg/h2/mvstore/MVMap$2$1;->val$cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    move-result-object v0

    .line 880
    new-instance v1, Lorg/h2/mvstore/DataUtils$MapEntry;

    iget-object v2, p0, Lorg/h2/mvstore/MVMap$2$1;->val$cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v2}, Lorg/h2/mvstore/Cursor;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/h2/mvstore/DataUtils$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    const-string v0, "Removing is not supported"

    .line 885
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
