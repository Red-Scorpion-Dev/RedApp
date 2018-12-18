.class public Lorg/briarproject/briar/android/view/TextInputView;
.super Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;
.source "TextInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field editText:Lcom/vanniktech/emoji/EmojiEditText;

.field emojiPopup:Lcom/vanniktech/emoji/EmojiPopup;

.field emojiToggle:Landroid/support/v7/widget/AppCompatImageButton;

.field listener:Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;

.field recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

.field sendButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/android/view/TextInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/TextInputView;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lorg/briarproject/briar/android/BriarApplication;

    .line 67
    invoke-interface {p3}, Lorg/briarproject/briar/android/BriarApplication;->getApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object p3

    invoke-interface {p3, p0}, Lorg/briarproject/briar/android/AndroidComponent;->inject(Lorg/briarproject/briar/android/view/TextInputView;)V

    :cond_0
    const/4 p3, 0x1

    .line 69
    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/view/TextInputView;->setOrientation(I)V

    .line 70
    new-instance p3, Landroid/animation/LayoutTransition;

    invoke-direct {p3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/view/TextInputView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/TextInputView;->inflateLayout(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/view/TextInputView;->setUpViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic lambda$I2Hf9iJHgDOdnVScgV82NPwAttI(Lorg/briarproject/briar/android/view/TextInputView;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/TextInputView;->showKeyboardIcon()V

    return-void
.end method

.method public static synthetic lambda$setUpViews$0(Lorg/briarproject/briar/android/view/TextInputView;Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiPopup:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiPopup;->toggle()V

    return-void
.end method

.method public static synthetic lambda$setUpViews$1(Lorg/briarproject/briar/android/view/TextInputView;Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/TextInputView;->showSoftKeyboard()V

    return-void
.end method

.method public static synthetic lambda$setUpViews$2(Lorg/briarproject/briar/android/view/TextInputView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 104
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/briarproject/briar/android/view/TextInputView;->trySendMessage()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$setUpViews$3(Lorg/briarproject/briar/android/view/TextInputView;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lorg/briarproject/briar/android/view/TextInputView;->trySendMessage()V

    return-void
.end method

.method public static synthetic lambda$wcOoAQ6ARCqTHZiyhxH2nsf3aDI(Lorg/briarproject/briar/android/view/TextInputView;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/TextInputView;->showEmojiIcon()V

    return-void
.end method

.method private showEmojiIcon()V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiToggle:Landroid/support/v7/widget/AppCompatImageButton;

    const v1, 0x7f0808f2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageButton;->setImageResource(I)V

    return-void
.end method

.method private showKeyboardIcon()V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiToggle:Landroid/support/v7/widget/AppCompatImageButton;

    const v1, 0x7f0808fe

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageButton;->setImageResource(I)V

    return-void
.end method

.method private trySendMessage()V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->listener:Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->listener:Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v1}, Lcom/vanniktech/emoji/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;->onSendClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0, p1}, Lcom/vanniktech/emoji/EmojiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideSoftKeyboard()V
    .locals 3

    .line 168
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiPopup:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiPopup:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiPopup;->dismiss()V

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 2

    const-string v0, "layout_inflater"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c009b

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 134
    invoke-super {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->onDetachedFromWindow()V

    .line 135
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiPopup:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiPopup:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0, p1, p2}, Lcom/vanniktech/emoji/EmojiEditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setHint(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0, p1}, Lcom/vanniktech/emoji/EmojiEditText;->setHint(I)V

    return-void
.end method

.method public setListener(Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/briarproject/briar/android/view/TextInputView;->listener:Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;

    return-void
.end method

.method public setSendButtonEnabled(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->sendButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0, p1}, Lcom/vanniktech/emoji/EmojiEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpViews(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f09009c

    .line 83
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageButton;

    iput-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiToggle:Landroid/support/v7/widget/AppCompatImageButton;

    const v0, 0x7f0900db

    .line 84
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vanniktech/emoji/EmojiEditText;

    iput-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    .line 86
    invoke-static {p0}, Lcom/vanniktech/emoji/EmojiPopup$Builder;->fromRootView(Landroid/view/View;)Lcom/vanniktech/emoji/EmojiPopup$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/view/TextInputView;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    .line 87
    invoke-virtual {v0, v1}, Lcom/vanniktech/emoji/EmojiPopup$Builder;->setRecentEmoji(Lcom/vanniktech/emoji/RecentEmoji;)Lcom/vanniktech/emoji/EmojiPopup$Builder;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$I2Hf9iJHgDOdnVScgV82NPwAttI;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$I2Hf9iJHgDOdnVScgV82NPwAttI;-><init>(Lorg/briarproject/briar/android/view/TextInputView;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/vanniktech/emoji/EmojiPopup$Builder;->setOnEmojiPopupShownListener(Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;)Lcom/vanniktech/emoji/EmojiPopup$Builder;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$wcOoAQ6ARCqTHZiyhxH2nsf3aDI;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$wcOoAQ6ARCqTHZiyhxH2nsf3aDI;-><init>(Lorg/briarproject/briar/android/view/TextInputView;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/vanniktech/emoji/EmojiPopup$Builder;->setOnEmojiPopupDismissListener(Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;)Lcom/vanniktech/emoji/EmojiPopup$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    .line 90
    invoke-virtual {v0, v1}, Lcom/vanniktech/emoji/EmojiPopup$Builder;->build(Lcom/vanniktech/emoji/EmojiEditText;)Lcom/vanniktech/emoji/EmojiPopup;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiPopup:Lcom/vanniktech/emoji/EmojiPopup;

    const v0, 0x7f090054

    .line 91
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/view/TextInputView;->sendButton:Landroid/view/View;

    .line 94
    sget-object v0, Lorg/briarproject/briar/R$styleable;->TextInputView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 99
    iget-object p1, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {p1, p2}, Lcom/vanniktech/emoji/EmojiEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/view/TextInputView;->emojiToggle:Landroid/support/v7/widget/AppCompatImageButton;

    new-instance p2, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$Rs3NfTn415VsnWfTfsTBF6BbQ58;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$Rs3NfTn415VsnWfTfsTBF6BbQ58;-><init>(Lorg/briarproject/briar/android/view/TextInputView;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    new-instance p2, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$56q_-QwtZITX8MxrWezK1rF2OX8;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$56q_-QwtZITX8MxrWezK1rF2OX8;-><init>(Lorg/briarproject/briar/android/view/TextInputView;)V

    invoke-virtual {p1, p2}, Lcom/vanniktech/emoji/EmojiEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    new-instance p2, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$Wh5s20pJQ2VpJP3ajZUAiBjFrgY;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$Wh5s20pJQ2VpJP3ajZUAiBjFrgY;-><init>(Lorg/briarproject/briar/android/view/TextInputView;)V

    invoke-virtual {p1, p2}, Lcom/vanniktech/emoji/EmojiEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 110
    iget-object p1, p0, Lorg/briarproject/briar/android/view/TextInputView;->sendButton:Landroid/view/View;

    new-instance p2, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$hVQ1fguttm6-TYveeWTsKt8-a5Q;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$TextInputView$hVQ1fguttm6-TYveeWTsKt8-a5Q;-><init>(Lorg/briarproject/briar/android/view/TextInputView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showSoftKeyboard()V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/view/TextInputView;->editText:Lcom/vanniktech/emoji/EmojiEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
