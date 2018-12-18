.class Lorg/h2/expression/AggregateDataHistogram$1;
.super Ljava/lang/Object;
.source "AggregateDataHistogram.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/expression/AggregateDataHistogram;->getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/h2/value/ValueArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/expression/AggregateDataHistogram;

.field final synthetic val$compareMode:Lorg/h2/value/CompareMode;


# direct methods
.method constructor <init>(Lorg/h2/expression/AggregateDataHistogram;Lorg/h2/value/CompareMode;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/h2/expression/AggregateDataHistogram$1;->this$0:Lorg/h2/expression/AggregateDataHistogram;

    iput-object p2, p0, Lorg/h2/expression/AggregateDataHistogram$1;->val$compareMode:Lorg/h2/value/CompareMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Lorg/h2/value/ValueArray;

    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p0, p1, p2}, Lorg/h2/expression/AggregateDataHistogram$1;->compare(Lorg/h2/value/ValueArray;Lorg/h2/value/ValueArray;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/value/ValueArray;Lorg/h2/value/ValueArray;)I
    .locals 1

    .line 59
    invoke-virtual {p1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 60
    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    aget-object p2, p2, v0

    .line 61
    iget-object v0, p0, Lorg/h2/expression/AggregateDataHistogram$1;->val$compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method
