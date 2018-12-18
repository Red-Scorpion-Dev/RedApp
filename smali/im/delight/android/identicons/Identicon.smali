.class Lim/delight/android/identicons/Identicon;
.super Ljava/lang/Object;
.source "Identicon.java"


# instance fields
.field private cellHeight:I

.field private cellWidth:I

.field private final colors:[[I

.field private final input:[B

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>([B)V
    .locals 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 41
    iput-object p1, p0, Lim/delight/android/identicons/Identicon;->input:[B

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lim/delight/android/identicons/Identicon;->paint:Landroid/graphics/Paint;

    .line 44
    iget-object p1, p0, Lim/delight/android/identicons/Identicon;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p1, p0, Lim/delight/android/identicons/Identicon;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object p1, p0, Lim/delight/android/identicons/Identicon;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 p1, 0x9

    .line 48
    filled-new-array {p1, p1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lim/delight/android/identicons/Identicon;->colors:[[I

    .line 49
    invoke-direct {p0}, Lim/delight/android/identicons/Identicon;->getForegroundColor()I

    move-result v0

    .line 50
    invoke-direct {p0}, Lim/delight/android/identicons/Identicon;->getBackgroundColor()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 54
    invoke-direct {p0, v3, v4}, Lim/delight/android/identicons/Identicon;->isCellVisible(II)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lim/delight/android/identicons/Identicon;->colors:[[I

    aget-object v5, v5, v3

    aput v0, v5, v4

    goto :goto_2

    .line 55
    :cond_0
    iget-object v5, p0, Lim/delight/android/identicons/Identicon;->colors:[[I

    aget-object v5, v5, v3

    aput v1, v5, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private getBackgroundColor()I
    .locals 1

    const/16 v0, 0xfa

    .line 83
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private getByte(I)B
    .locals 2

    .line 61
    iget-object v0, p0, Lim/delight/android/identicons/Identicon;->input:[B

    iget-object v1, p0, Lim/delight/android/identicons/Identicon;->input:[B

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-byte p1, v0, p1

    return p1
.end method

.method private getForegroundColor()I
    .locals 3

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lim/delight/android/identicons/Identicon;->getByte(I)B

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x60

    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, v1}, Lim/delight/android/identicons/Identicon;->getByte(I)B

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x60

    const/4 v2, 0x2

    .line 77
    invoke-direct {p0, v2}, Lim/delight/android/identicons/Identicon;->getByte(I)B

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x60

    .line 78
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private getSymmetricColumnIndex(I)I
    .locals 1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    rsub-int/lit8 p1, p1, 0x9

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private isCellVisible(II)Z
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x3

    .line 66
    invoke-direct {p0, p2}, Lim/delight/android/identicons/Identicon;->getSymmetricColumnIndex(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 65
    invoke-direct {p0, p1}, Lim/delight/android/identicons/Identicon;->getByte(I)B

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 94
    iget v4, p0, Lim/delight/android/identicons/Identicon;->cellWidth:I

    mul-int v4, v4, v3

    .line 95
    iget v5, p0, Lim/delight/android/identicons/Identicon;->cellHeight:I

    mul-int v5, v5, v1

    .line 96
    iget-object v6, p0, Lim/delight/android/identicons/Identicon;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Lim/delight/android/identicons/Identicon;->colors:[[I

    aget-object v7, v7, v1

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v4

    .line 97
    iget v6, p0, Lim/delight/android/identicons/Identicon;->cellHeight:I

    add-int/2addr v6, v5

    int-to-float v10, v6

    iget v6, p0, Lim/delight/android/identicons/Identicon;->cellWidth:I

    add-int/2addr v4, v6

    int-to-float v11, v4

    int-to-float v12, v5

    iget-object v13, p0, Lim/delight/android/identicons/Identicon;->paint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateSize(II)V
    .locals 0

    .line 87
    div-int/lit8 p1, p1, 0x9

    iput p1, p0, Lim/delight/android/identicons/Identicon;->cellWidth:I

    .line 88
    div-int/lit8 p2, p2, 0x9

    iput p2, p0, Lim/delight/android/identicons/Identicon;->cellHeight:I

    return-void
.end method
