.class Lorg/h2/mvstore/ConcurrentArrayList$1;
.super Ljava/lang/Object;
.source "ConcurrentArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/ConcurrentArrayList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field index:I

.field final synthetic this$0:Lorg/h2/mvstore/ConcurrentArrayList;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/ConcurrentArrayList;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList$1;->this$0:Lorg/h2/mvstore/ConcurrentArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList$1;->this$0:Lorg/h2/mvstore/ConcurrentArrayList;

    iget-object p1, p1, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    iput-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList$1;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 102
    iget v0, p0, Lorg/h2/mvstore/ConcurrentArrayList$1;->index:I

    iget-object v1, p0, Lorg/h2/mvstore/ConcurrentArrayList$1;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList$1;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/h2/mvstore/ConcurrentArrayList$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/mvstore/ConcurrentArrayList$1;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    const-string v0, "remove"

    .line 112
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
