.class public Lim/delight/android/identicons/IdenticonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IdenticonDrawable.java"


# instance fields
.field private final identicon:Lim/delight/android/identicons/Identicon;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    new-instance v0, Lim/delight/android/identicons/Identicon;

    invoke-direct {v0, p1}, Lim/delight/android/identicons/Identicon;-><init>([B)V

    iput-object v0, p0, Lim/delight/android/identicons/IdenticonDrawable;->identicon:Lim/delight/android/identicons/Identicon;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lim/delight/android/identicons/IdenticonDrawable;->identicon:Lim/delight/android/identicons/Identicon;

    invoke-virtual {v0, p1}, Lim/delight/android/identicons/Identicon;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    iget-object v0, p0, Lim/delight/android/identicons/IdenticonDrawable;->identicon:Lim/delight/android/identicons/Identicon;

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    invoke-virtual {v0, p3, p4}, Lim/delight/android/identicons/Identicon;->updateSize(II)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 53
    iget-object v0, p0, Lim/delight/android/identicons/IdenticonDrawable;->identicon:Lim/delight/android/identicons/Identicon;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lim/delight/android/identicons/Identicon;->updateSize(II)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
