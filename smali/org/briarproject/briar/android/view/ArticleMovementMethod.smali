.class public Lorg/briarproject/briar/android/view/ArticleMovementMethod;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "ArticleMovementMethod.java"


# static fields
.field private static sInstance:Lorg/briarproject/briar/android/view/ArticleMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 32
    sget-object v0, Lorg/briarproject/briar/android/view/ArticleMovementMethod;->sInstance:Lorg/briarproject/briar/android/view/ArticleMovementMethod;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lorg/briarproject/briar/android/view/ArticleMovementMethod;

    invoke-direct {v0}, Lorg/briarproject/briar/android/view/ArticleMovementMethod;-><init>()V

    sput-object v0, Lorg/briarproject/briar/android/view/ArticleMovementMethod;->sInstance:Lorg/briarproject/briar/android/view/ArticleMovementMethod;

    .line 35
    :cond_0
    sget-object v0, Lorg/briarproject/briar/android/view/ArticleMovementMethod;->sInstance:Lorg/briarproject/briar/android/view/ArticleMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 41
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 45
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 47
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 48
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 50
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    .line 51
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    .line 53
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    int-to-float v0, v0

    .line 55
    invoke-virtual {v2, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 57
    const-class v1, Landroid/text/style/ClickableSpan;

    .line 58
    invoke-interface {p2, v0, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 60
    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 61
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
