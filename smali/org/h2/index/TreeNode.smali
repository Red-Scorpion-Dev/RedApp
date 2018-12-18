.class Lorg/h2/index/TreeNode;
.super Ljava/lang/Object;
.source "TreeNode.java"


# instance fields
.field balance:I

.field left:Lorg/h2/index/TreeNode;

.field parent:Lorg/h2/index/TreeNode;

.field right:Lorg/h2/index/TreeNode;

.field final row:Lorg/h2/result/Row;


# direct methods
.method constructor <init>(Lorg/h2/result/Row;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    return-void
.end method


# virtual methods
.method isFromLeft()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    iget-object v0, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
