.class Lorg/h2/expression/ConditionInConstantSet$1;
.super Ljava/lang/Object;
.source "ConditionInConstantSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/expression/ConditionInConstantSet;-><init>(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V
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
.field final synthetic this$0:Lorg/h2/expression/ConditionInConstantSet;

.field final synthetic val$session:Lorg/h2/engine/Session;


# direct methods
.method constructor <init>(Lorg/h2/expression/ConditionInConstantSet;Lorg/h2/engine/Session;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/h2/expression/ConditionInConstantSet$1;->this$0:Lorg/h2/expression/ConditionInConstantSet;

    iput-object p2, p0, Lorg/h2/expression/ConditionInConstantSet$1;->val$session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lorg/h2/value/Value;

    check-cast p2, Lorg/h2/value/Value;

    invoke-virtual {p0, p1, p2}, Lorg/h2/expression/ConditionInConstantSet$1;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/h2/expression/ConditionInConstantSet$1;->val$session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    return p1
.end method
