.class public Lorg/h2/index/TreeCursor;
.super Ljava/lang/Object;
.source "TreeCursor.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private beforeFirst:Z

.field private final first:Lorg/h2/result/SearchRow;

.field private final last:Lorg/h2/result/SearchRow;

.field private node:Lorg/h2/index/TreeNode;

.field private final tree:Lorg/h2/index/TreeIndex;


# direct methods
.method constructor <init>(Lorg/h2/index/TreeIndex;Lorg/h2/index/TreeNode;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/h2/index/TreeCursor;->tree:Lorg/h2/index/TreeIndex;

    .line 22
    iput-object p2, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    .line 23
    iput-object p3, p0, Lorg/h2/index/TreeCursor;->first:Lorg/h2/result/SearchRow;

    .line 24
    iput-object p4, p0, Lorg/h2/index/TreeCursor;->last:Lorg/h2/result/SearchRow;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lorg/h2/index/TreeCursor;->beforeFirst:Z

    return-void
.end method

.method private static next(Lorg/h2/index/TreeNode;)Lorg/h2/index/TreeNode;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-eqz v0, :cond_2

    .line 78
    iget-object p0, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    :goto_0
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    if-eqz v0, :cond_1

    .line 81
    iget-object p0, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_0

    :cond_1
    return-object p0

    .line 86
    :cond_2
    iget-object v0, p0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    :goto_1
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    if-eqz p0, :cond_3

    .line 87
    iget-object v1, p0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-ne v0, v1, :cond_3

    .line 89
    iget-object v0, p0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private static previous(Lorg/h2/index/TreeNode;)Lorg/h2/index/TreeNode;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-eqz v0, :cond_2

    .line 108
    iget-object p0, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    :goto_0
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    if-eqz v0, :cond_1

    .line 111
    iget-object p0, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    goto :goto_0

    :cond_1
    return-object p0

    .line 116
    :cond_2
    iget-object v0, p0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    :goto_1
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    if-eqz p0, :cond_3

    .line 117
    iget-object v1, p0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    goto :goto_1

    :cond_3
    return-object p0
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    iget-object v0, v0, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    :goto_0
    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/h2/index/TreeCursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 4

    .line 40
    iget-boolean v0, p0, Lorg/h2/index/TreeCursor;->beforeFirst:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41
    iput-boolean v1, p0, Lorg/h2/index/TreeCursor;->beforeFirst:Z

    .line 42
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->first:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/index/TreeCursor;->tree:Lorg/h2/index/TreeIndex;

    iget-object v2, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    iget-object v2, v2, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    iget-object v3, p0, Lorg/h2/index/TreeCursor;->first:Lorg/h2/result/SearchRow;

    invoke-virtual {v0, v2, v3}, Lorg/h2/index/TreeIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v0

    if-gez v0, :cond_2

    .line 46
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    invoke-static {v0}, Lorg/h2/index/TreeCursor;->next(Lorg/h2/index/TreeNode;)Lorg/h2/index/TreeNode;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    invoke-static {v0}, Lorg/h2/index/TreeCursor;->next(Lorg/h2/index/TreeNode;)Lorg/h2/index/TreeNode;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    .line 51
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/index/TreeCursor;->last:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->tree:Lorg/h2/index/TreeIndex;

    iget-object v2, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    iget-object v2, v2, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    iget-object v3, p0, Lorg/h2/index/TreeCursor;->last:Lorg/h2/result/SearchRow;

    invoke-virtual {v0, v2, v3}, Lorg/h2/index/TreeIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    .line 56
    :cond_3
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public previous()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    invoke-static {v0}, Lorg/h2/index/TreeCursor;->previous(Lorg/h2/index/TreeNode;)Lorg/h2/index/TreeNode;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    .line 62
    iget-object v0, p0, Lorg/h2/index/TreeCursor;->node:Lorg/h2/index/TreeNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
