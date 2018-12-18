.class Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;
.super Ljava/lang/Object;
.source "MVSecondaryIndex.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/db/MVSecondaryIndex;->addBufferedRows(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;",
        ">;"
    }
.end annotation


# instance fields
.field next:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field sourceId:I

.field final synthetic this$0:Lorg/h2/mvstore/db/MVSecondaryIndex;

.field final synthetic val$compareMode:Lorg/h2/value/CompareMode;

.field value:Lorg/h2/value/Value;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/db/MVSecondaryIndex;Lorg/h2/value/CompareMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->this$0:Lorg/h2/mvstore/db/MVSecondaryIndex;

    iput-object p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->val$compareMode:Lorg/h2/value/CompareMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->compareTo(Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;)I
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->value:Lorg/h2/value/Value;

    iget-object v1, p1, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->value:Lorg/h2/value/Value;

    iget-object v2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->val$compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {v0, v1, v2}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->sourceId:I

    iget p1, p1, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->sourceId:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method
