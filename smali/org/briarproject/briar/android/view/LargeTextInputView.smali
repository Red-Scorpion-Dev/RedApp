.class public Lorg/briarproject/briar/android/view/LargeTextInputView;
.super Lorg/briarproject/briar/android/view/TextInputView;
.source "LargeTextInputView.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/view/LargeTextInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/android/view/LargeTextInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/view/TextInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected inflateLayout(Landroid/content/Context;)V
    .locals 2

    const-string v0, "layout_inflater"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c009c

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/android/view/LargeTextInputView;->sendButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpViews(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 46
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/view/TextInputView;->setUpViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Lorg/briarproject/briar/R$styleable;->LargeTextInputView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 54
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    const/4 v2, 0x1

    .line 56
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/LargeTextInputView;->setButtonText(Ljava/lang/String;)V

    :cond_0
    if-lez v1, :cond_1

    .line 60
    iget-object p1, p0, Lorg/briarproject/briar/android/view/LargeTextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {p1, v1}, Lcom/vanniktech/emoji/EmojiEditText;->setMaxLines(I)V

    :cond_1
    if-eqz v2, :cond_2

    const p1, 0x7f0900da

    .line 62
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/LargeTextInputView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 65
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p1, p0, Lorg/briarproject/briar/android/view/LargeTextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    .line 68
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object p2, p0, Lorg/briarproject/briar/android/view/LargeTextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {p2, p1}, Lcom/vanniktech/emoji/EmojiEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
