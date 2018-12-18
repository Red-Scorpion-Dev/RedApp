.class public Lorg/h2/table/PlanItem;
.super Ljava/lang/Object;
.source "PlanItem.java"


# instance fields
.field cost:D

.field private index:Lorg/h2/index/Index;

.field private joinPlan:Lorg/h2/table/PlanItem;

.field private masks:[I

.field private nestedJoinPlan:Lorg/h2/table/PlanItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()Lorg/h2/index/Index;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/h2/table/PlanItem;->index:Lorg/h2/index/Index;

    return-object v0
.end method

.method getJoinPlan()Lorg/h2/table/PlanItem;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/h2/table/PlanItem;->joinPlan:Lorg/h2/table/PlanItem;

    return-object v0
.end method

.method getMasks()[I
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/h2/table/PlanItem;->masks:[I

    return-object v0
.end method

.method getNestedJoinPlan()Lorg/h2/table/PlanItem;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/h2/table/PlanItem;->nestedJoinPlan:Lorg/h2/table/PlanItem;

    return-object v0
.end method

.method setIndex(Lorg/h2/index/Index;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/h2/table/PlanItem;->index:Lorg/h2/index/Index;

    return-void
.end method

.method setJoinPlan(Lorg/h2/table/PlanItem;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/h2/table/PlanItem;->joinPlan:Lorg/h2/table/PlanItem;

    return-void
.end method

.method setMasks([I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/h2/table/PlanItem;->masks:[I

    return-void
.end method

.method setNestedJoinPlan(Lorg/h2/table/PlanItem;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/h2/table/PlanItem;->nestedJoinPlan:Lorg/h2/table/PlanItem;

    return-void
.end method
