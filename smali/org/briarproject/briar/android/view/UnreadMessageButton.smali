.class public Lorg/briarproject/briar/android/view/UnreadMessageButton;
.super Landroid/widget/FrameLayout;
.source "UnreadMessageButton.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final DOWN:I = 0x1

.field private static final UP:I


# instance fields
.field private final fab:Landroid/support/design/widget/FloatingActionButton;

.field private final unread:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/view/UnreadMessageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/android/view/UnreadMessageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "layout_inflater"

    .line 41
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    const v1, 0x7f0c009f

    .line 42
    invoke-virtual {p3, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p3, 0x7f0900b4

    .line 44
    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/design/widget/FloatingActionButton;

    iput-object p3, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->fab:Landroid/support/design/widget/FloatingActionButton;

    const p3, 0x7f0901b1

    .line 45
    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->unread:Landroid/widget/TextView;

    .line 47
    sget-object p3, Lorg/briarproject/briar/R$styleable;->UnreadMessageButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 51
    invoke-direct {p0, p3}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->setDirection(I)V

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->setUnreadCount(I)V

    :cond_0
    return-void
.end method

.method private setDirection(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->fab:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f080064

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 61
    iget-object p1, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->fab:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    :goto_0
    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public setUnreadCount(I)V
    .locals 5

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 70
    iget-object p1, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->unread:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    .line 73
    iget-object v0, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->unread:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/android/view/UnreadMessageButton;->unread:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
