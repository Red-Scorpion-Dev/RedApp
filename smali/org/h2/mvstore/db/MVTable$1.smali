.class final Lorg/h2/mvstore/db/MVTable$1;
.super Ljava/lang/Object;
.source "MVTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/db/MVTable;->sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/h2/result/Row;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$index:Lorg/h2/index/Index;


# direct methods
.method constructor <init>(Lorg/h2/index/Index;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lorg/h2/mvstore/db/MVTable$1;->val$index:Lorg/h2/index/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 661
    check-cast p1, Lorg/h2/result/Row;

    check-cast p2, Lorg/h2/result/Row;

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/db/MVTable$1;->compare(Lorg/h2/result/Row;Lorg/h2/result/Row;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/result/Row;Lorg/h2/result/Row;)I
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable$1;->val$index:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result p1

    return p1
.end method
