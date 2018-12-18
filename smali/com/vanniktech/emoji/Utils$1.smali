.class Lcom/vanniktech/emoji/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vanniktech/emoji/Utils;->fixPopupLocation(Landroid/widget/PopupWindow;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$desiredLocation:Landroid/graphics/Point;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/graphics/Point;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/vanniktech/emoji/Utils$1;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/vanniktech/emoji/Utils$1;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/vanniktech/emoji/Utils;->locationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 81
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_3

    .line 82
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    .line 83
    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    .line 88
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_1

    .line 89
    iget-object v3, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    .line 94
    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/vanniktech/emoji/Utils$1;->val$desiredLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v2

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/vanniktech/emoji/Utils$1;->val$popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v0, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_3
    return-void
.end method
