.class Lorg/h2/index/IndexCondition$1;
.super Ljava/lang/Object;
.source "IndexCondition.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/index/IndexCondition;->getCurrentValueList(Lorg/h2/engine/Session;)[Lorg/h2/value/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/h2/value/Value;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/index/IndexCondition;

.field final synthetic val$mode:Lorg/h2/value/CompareMode;


# direct methods
.method constructor <init>(Lorg/h2/index/IndexCondition;Lorg/h2/value/CompareMode;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/h2/index/IndexCondition$1;->this$0:Lorg/h2/index/IndexCondition;

    iput-object p2, p0, Lorg/h2/index/IndexCondition$1;->val$mode:Lorg/h2/value/CompareMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 161
    check-cast p1, Lorg/h2/value/Value;

    check-cast p2, Lorg/h2/value/Value;

    invoke-virtual {p0, p1, p2}, Lorg/h2/index/IndexCondition$1;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/h2/index/IndexCondition$1;->val$mode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method
