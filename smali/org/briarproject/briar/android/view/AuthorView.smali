.class public Lorg/briarproject/briar/android/view/AuthorView;
.super Landroid/support/constraint/ConstraintLayout;
.source "AuthorView.java"


# static fields
.field public static final COMMENTER:I = 0x2

.field public static final LIST:I = 0x3

.field public static final NORMAL:I = 0x0

.field public static final REBLOGGER:I = 0x1

.field public static final RSS_FEED:I = 0x4

.field public static final RSS_FEED_REBLOGGED:I = 0x5


# instance fields
.field private final authorName:Landroid/widget/TextView;

.field private final authorNameTypeface:Landroid/graphics/Typeface;

.field private final avatar:Lde/hdodenhof/circleimageview/CircleImageView;

.field private final avatarIcon:Landroid/widget/ImageView;

.field private final date:Landroid/widget/TextView;

.field private final trustIndicator:Lorg/briarproject/briar/android/view/TrustIndicatorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/view/AuthorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "layout_inflater"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0030

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f090047

    .line 56
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const v0, 0x7f09004c

    .line 57
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatarIcon:Landroid/widget/ImageView;

    const v0, 0x7f090044

    .line 58
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorNameTypeface:Landroid/graphics/Typeface;

    const v0, 0x7f090083

    .line 60
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->date:Landroid/widget/TextView;

    const v0, 0x7f0901ad

    .line 61
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/TrustIndicatorView;

    iput-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->trustIndicator:Lorg/briarproject/briar/android/view/TrustIndicatorView;

    .line 63
    sget-object v0, Lorg/briarproject/briar/R$styleable;->AuthorView:[I

    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 66
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/view/AuthorView;->setPersona(I)V

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setAvatarSize(I)V
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 170
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/AuthorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 171
    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 172
    iput p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 173
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTextSize(Landroid/widget/TextView;I)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/AuthorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public setAuthor(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v0, Lim/delight/android/identicons/IdenticonDrawable;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lim/delight/android/identicons/IdenticonDrawable;-><init>([B)V

    .line 78
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object p1

    sget-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->NONE:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 81
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->trustIndicator:Lorg/briarproject/briar/android/view/TrustIndicatorView;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TrustIndicatorView;->setTrustLevel(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;)V

    .line 82
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->trustIndicator:Lorg/briarproject/briar/android/view/TrustIndicatorView;

    invoke-virtual {p1, v1}, Lorg/briarproject/briar/android/view/TrustIndicatorView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->trustIndicator:Lorg/briarproject/briar/android/view/TrustIndicatorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TrustIndicatorView;->setVisibility(I)V

    .line 87
    :goto_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object p1

    sget-object p2, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    if-ne p1, p2, :cond_1

    .line 88
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorNameTypeface:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorNameTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    :goto_1
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/AuthorView;->invalidate()V

    .line 94
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/AuthorView;->requestLayout()V

    return-void
.end method

.method public setAuthorClickable(Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->setClickable(Z)V

    .line 107
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/AuthorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0401eb

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->setBackgroundResource(I)V

    .line 109
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/AuthorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAuthorNotClickable()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->setClickable(Z)V

    .line 114
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/AuthorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDate(J)V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/view/AuthorView;->date:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/AuthorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/briarproject/briar/android/util/UiUtils;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/AuthorView;->invalidate()V

    .line 101
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/AuthorView;->requestLayout()V

    return-void
.end method

.method public setPersona(I)V
    .locals 7

    const v0, 0x7f080905

    const v1, 0x7f070111

    const v2, 0x7f07004e

    const v3, 0x7f070110

    const v4, 0x7f070050

    const/4 v5, 0x4

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 159
    :pswitch_0
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 162
    invoke-direct {p0, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setAvatarSize(I)V

    .line 163
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lorg/briarproject/briar/android/view/AuthorView;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 155
    invoke-direct {p0, v4}, Lorg/briarproject/briar/android/view/AuthorView;->setAvatarSize(I)V

    .line 156
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lorg/briarproject/briar/android/view/AuthorView;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->date:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0700a8

    .line 148
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/view/AuthorView;->setAvatarSize(I)V

    .line 149
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    const v0, 0x7f07010f

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/view/AuthorView;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 140
    :pswitch_3
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-direct {p0, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setAvatarSize(I)V

    .line 143
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lorg/briarproject/briar/android/view/AuthorView;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 134
    :pswitch_4
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    invoke-direct {p0, v4}, Lorg/briarproject/briar/android/view/AuthorView;->setAvatarSize(I)V

    .line 137
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lorg/briarproject/briar/android/view/AuthorView;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 128
    :pswitch_5
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-direct {p0, v4}, Lorg/briarproject/briar/android/view/AuthorView;->setAvatarSize(I)V

    .line 131
    iget-object p1, p0, Lorg/briarproject/briar/android/view/AuthorView;->authorName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lorg/briarproject/briar/android/view/AuthorView;->setTextSize(Landroid/widget/TextView;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
