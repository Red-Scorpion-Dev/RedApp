.class Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/hdodenhof/circleimageview/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method private constructor <init>(Lde/hdodenhof/circleimageview/CircleImageView;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;->this$0:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/hdodenhof/circleimageview/CircleImageView;Lde/hdodenhof/circleimageview/CircleImageView$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;-><init>(Lde/hdodenhof/circleimageview/CircleImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 473
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 474
    iget-object v0, p0, Lde/hdodenhof/circleimageview/CircleImageView$OutlineProvider;->this$0:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->access$100(Lde/hdodenhof/circleimageview/CircleImageView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
