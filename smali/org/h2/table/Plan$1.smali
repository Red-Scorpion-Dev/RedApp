.class Lorg/h2/table/Plan$1;
.super Ljava/lang/Object;
.source "Plan.java"

# interfaces
.implements Lorg/h2/table/TableFilter$TableFilterVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/table/Plan;-><init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/table/Plan;

.field final synthetic val$all:Ljava/util/ArrayList;

.field final synthetic val$allCond:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/h2/table/Plan;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/h2/table/Plan$1;->this$0:Lorg/h2/table/Plan;

    iput-object p2, p0, Lorg/h2/table/Plan$1;->val$all:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/h2/table/Plan$1;->val$allCond:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/table/TableFilter;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/h2/table/Plan$1;->val$all:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/h2/table/Plan$1;->val$allCond:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
