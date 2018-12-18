.class public Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;
.super Landroid/widget/LinearLayout;
.source "KeyboardAwareLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;,
        Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final defaultCustomKeyboardSize:I

.field private final hiddenListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;",
            ">;"
        }
    .end annotation
.end field

.field private keyboardOpen:Z

.field private final minCustomKeyboardSize:I

.field private final minCustomKeyboardTopMargin:I

.field private final minKeyboardSize:I

.field private final rect:Landroid/graphics/Rect;

.field private rotation:I

.field private final shownListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarHeight:I

.field private viewInset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rect:Landroid/graphics/Rect;

    .line 41
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->hiddenListeners:Ljava/util/Set;

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->shownListeners:Ljava/util/Set;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    const/4 p2, -0x1

    .line 53
    iput p2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    .line 67
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getDeviceRotation()I

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    .line 68
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "status_bar_height"

    const-string v0, "dimen"

    const-string v1, "android"

    .line 69
    invoke-virtual {p2, p3, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 71
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700c3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minKeyboardSize:I

    .line 72
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700c1

    .line 73
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardSize:I

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07005d

    .line 75
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->defaultCustomKeyboardSize:I

    .line 76
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700c2

    .line 77
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardTopMargin:I

    if-lez p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->statusBarHeight:I

    .line 80
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getViewInset()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    return-void
.end method

.method private clamp(III)I
    .locals 0

    .line 193
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getDeviceRotation()I
    .locals 2

    .line 175
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 176
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private getKeyboardLandscapeHeight()I
    .locals 2

    .line 180
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getKeyboardPortraitHeight()I
    .locals 4

    .line 185
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keyboard_height_portrait"

    .line 186
    iget v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->defaultCustomKeyboardSize:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 188
    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardSize:I

    .line 189
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardTopMargin:I

    sub-int/2addr v2, v3

    .line 188
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->clamp(III)I

    move-result v0

    return v0
.end method

.method private getViewInset()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 125
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mStableInsets"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 133
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 139
    sget-object v1, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "access reflection error when measuring view inset"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 136
    sget-object v1, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "field reflection error when measuring view inset"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyHiddenListeners()V
    .locals 2

    .line 250
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->hiddenListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 252
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;

    .line 253
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;->onKeyboardHidden()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyShownListeners()V
    .locals 2

    .line 259
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->shownListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 260
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;

    .line 261
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;->onKeyboardShown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setKeyboardPortraitHeight(I)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyboard_height_portrait"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateKeyboardState()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->onKeyboardClose()V

    :cond_0
    return-void

    .line 105
    :cond_1
    iget v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 106
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getViewInset()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    .line 108
    :cond_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->statusBarHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    sub-int/2addr v0, v1

    .line 109
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 111
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 113
    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minKeyboardSize:I

    if-le v0, v1, :cond_4

    .line 114
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getKeyboardHeight()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 115
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->setKeyboardPortraitHeight(I)V

    .line 116
    :cond_3
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->onKeyboardOpen(I)V

    goto :goto_0

    .line 117
    :cond_4
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-eqz v0, :cond_5

    .line 118
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->onKeyboardClose()V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateRotation()V
    .locals 2

    .line 91
    iget v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    .line 92
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getDeviceRotation()I

    move-result v1

    iput v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    .line 93
    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    if-eq v0, v1, :cond_0

    .line 94
    sget-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Rotation changed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->onKeyboardClose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnKeyboardHiddenListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->hiddenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->shownListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getKeyboardHeight()I
    .locals 1

    .line 164
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getKeyboardLandscapeHeight()I

    move-result v0

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getKeyboardPortraitHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isKeyboardOpen()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    return v0
.end method

.method public isLandscape()Z
    .locals 3

    .line 169
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getDeviceRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onKeyboardClose()V
    .locals 2

    .line 154
    sget-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->LOG:Ljava/util/logging/Logger;

    const-string v1, "onKeyboardClose()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    .line 156
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->notifyHiddenListeners()V

    return-void
.end method

.method protected onKeyboardOpen(I)V
    .locals 3

    .line 146
    sget-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyboardOpen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    .line 150
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->notifyShownListeners()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->updateRotation()V

    .line 86
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->updateKeyboardState()V

    .line 87
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public postOnKeyboardClose(Ljava/lang/Runnable;)V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;-><init>(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->addOnKeyboardHiddenListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public postOnKeyboardOpen(Ljava/lang/Runnable;)V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$2;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$2;-><init>(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->addOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public removeOnKeyboardHiddenListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->hiddenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->shownListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
