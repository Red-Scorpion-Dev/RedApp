.class public Lorg/briarproject/briar/android/view/TextAvatarView;
.super Landroid/widget/FrameLayout;
.source "TextAvatarView.java"


# instance fields
.field private final background:Lde/hdodenhof/circleimageview/CircleImageView;

.field private final badge:Landroid/widget/TextView;

.field private final character:Landroid/support/v7/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/view/TextAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0c009a

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f09018b

    .line 34
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/TextAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/AppCompatTextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/view/TextAvatarView;->character:Landroid/support/v7/widget/AppCompatTextView;

    const p1, 0x7f090048

    .line 35
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/TextAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lorg/briarproject/briar/android/view/TextAvatarView;->background:Lde/hdodenhof/circleimageview/CircleImageView;

    const p1, 0x7f0901b1

    .line 36
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/TextAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/view/TextAvatarView;->badge:Landroid/widget/TextView;

    return-void
.end method

.method private getByte([BI)B
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, -0x80

    return p1

    .line 69
    :cond_0
    array-length v0, p1

    rem-int/2addr p2, v0

    aget-byte p1, p1, p2

    return p1
.end method


# virtual methods
.method public setBackgroundBytes([B)V
    .locals 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/view/TextAvatarView;->getByte([BI)B

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x60

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, p1, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->getByte([BI)B

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x60

    const/4 v2, 0x2

    .line 59
    invoke-direct {p0, p1, v2}, Lorg/briarproject/briar/android/view/TextAvatarView;->getByte([BI)B

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x60

    .line 60
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextAvatarView;->background:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextAvatarView;->character:Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnreadCount(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextAvatarView;->badge:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Lorg/briarproject/briar/android/view/TextAvatarView;->badge:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/view/TextAvatarView;->badge:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
