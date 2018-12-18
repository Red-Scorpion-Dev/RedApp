.class public Lorg/briarproject/briar/android/login/StrengthMeter;
.super Landroid/widget/ProgressBar;
.source "StrengthMeter.java"


# static fields
.field public static final GREEN:I

.field public static final LIME:I

.field private static final MAX:I = 0x64

.field public static final ORANGE:I

.field public static final RED:I

.field public static final YELLOW:I


# instance fields
.field private final bar:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sput v2, Lorg/briarproject/briar/android/login/StrengthMeter;->RED:I

    const/16 v2, 0xa0

    .line 29
    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sput v2, Lorg/briarproject/briar/android/login/StrengthMeter;->ORANGE:I

    .line 30
    invoke-static {v0, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sput v2, Lorg/briarproject/briar/android/login/StrengthMeter;->YELLOW:I

    const/16 v2, 0xb4

    .line 31
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sput v2, Lorg/briarproject/briar/android/login/StrengthMeter;->LIME:I

    .line 32
    invoke-static {v1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lorg/briarproject/briar/android/login/StrengthMeter;->GREEN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/login/StrengthMeter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x1010078

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/login/StrengthMeter;->bar:Landroid/graphics/drawable/ShapeDrawable;

    .line 43
    iget-object p1, p0, Lorg/briarproject/briar/android/login/StrengthMeter;->bar:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget p2, Lorg/briarproject/briar/android/login/StrengthMeter;->RED:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    iget-object p2, p0, Lorg/briarproject/briar/android/login/StrengthMeter;->bar:Landroid/graphics/drawable/ShapeDrawable;

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p1, p2, v1, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 45
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 46
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 47
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/StrengthMeter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, -0x1000000

    .line 51
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x2

    .line 52
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object p2, v1, v0

    .line 53
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/StrengthMeter;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0, v3}, Lorg/briarproject/briar/android/login/StrengthMeter;->setIndeterminate(Z)V

    .line 55
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/StrengthMeter;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/login/StrengthMeter;->setStrength(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/briarproject/briar/android/login/StrengthMeter;->bar:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMax()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public setStrength(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_4

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 70
    sget v0, Lorg/briarproject/briar/android/login/StrengthMeter;->RED:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 71
    sget v0, Lorg/briarproject/briar/android/login/StrengthMeter;->ORANGE:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 72
    sget v0, Lorg/briarproject/briar/android/login/StrengthMeter;->YELLOW:I

    goto :goto_0

    :cond_2
    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 73
    sget v0, Lorg/briarproject/briar/android/login/StrengthMeter;->LIME:I

    goto :goto_0

    .line 74
    :cond_3
    sget v0, Lorg/briarproject/briar/android/login/StrengthMeter;->GREEN:I

    .line 75
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/android/login/StrengthMeter;->bar:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 76
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/StrengthMeter;->setProgress(I)V

    return-void

    .line 68
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
