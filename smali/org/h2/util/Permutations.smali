.class public Lorg/h2/util/Permutations;
.super Ljava/lang/Object;
.source "Permutations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private hasNext:Z

.field private final in:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final index:[I

.field private final m:I

.field private final n:I

.field private final out:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lorg/h2/util/Permutations;->hasNext:Z

    .line 41
    array-length v1, p1

    iput v1, p0, Lorg/h2/util/Permutations;->n:I

    .line 42
    iput p3, p0, Lorg/h2/util/Permutations;->m:I

    .line 43
    iget v1, p0, Lorg/h2/util/Permutations;->n:I

    if-lt v1, p3, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const-string v1, "n < m or m < 0"

    .line 44
    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 46
    :cond_1
    iput-object p1, p0, Lorg/h2/util/Permutations;->in:[Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lorg/h2/util/Permutations;->out:[Ljava/lang/Object;

    .line 48
    iget p1, p0, Lorg/h2/util/Permutations;->n:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/h2/util/Permutations;->index:[I

    const/4 p1, 0x0

    .line 49
    :goto_0
    iget p2, p0, Lorg/h2/util/Permutations;->n:I

    if-ge p1, p2, :cond_2

    .line 50
    iget-object p2, p0, Lorg/h2/util/Permutations;->index:[I

    aput p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr p3, v0

    .line 55
    invoke-direct {p0, p3}, Lorg/h2/util/Permutations;->reverseAfter(I)V

    return-void
.end method

.method public static create([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/h2/util/Permutations;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Lorg/h2/util/Permutations<",
            "TT;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/h2/util/Permutations;

    array-length v1, p0

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/util/Permutations;-><init>([Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static create([Ljava/lang/Object;[Ljava/lang/Object;I)Lorg/h2/util/Permutations;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;I)",
            "Lorg/h2/util/Permutations<",
            "TT;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/h2/util/Permutations;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/util/Permutations;-><init>([Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method private moveIndex()V
    .locals 5

    .line 97
    invoke-direct {p0}, Lorg/h2/util/Permutations;->rightmostDip()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lorg/h2/util/Permutations;->hasNext:Z

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x2

    .line 105
    :goto_0
    iget v3, p0, Lorg/h2/util/Permutations;->n:I

    if-ge v2, v3, :cond_2

    .line 106
    iget-object v3, p0, Lorg/h2/util/Permutations;->index:[I

    aget v3, v3, v2

    iget-object v4, p0, Lorg/h2/util/Permutations;->index:[I

    aget v4, v4, v1

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lorg/h2/util/Permutations;->index:[I

    aget v3, v3, v2

    iget-object v4, p0, Lorg/h2/util/Permutations;->index:[I

    aget v4, v4, v0

    if-le v3, v4, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lorg/h2/util/Permutations;->index:[I

    aget v2, v2, v0

    .line 113
    iget-object v3, p0, Lorg/h2/util/Permutations;->index:[I

    iget-object v4, p0, Lorg/h2/util/Permutations;->index:[I

    aget v4, v4, v1

    aput v4, v3, v0

    .line 114
    iget-object v3, p0, Lorg/h2/util/Permutations;->index:[I

    aput v2, v3, v1

    .line 116
    iget v1, p0, Lorg/h2/util/Permutations;->m:I

    add-int/lit8 v1, v1, -0x1

    if-le v1, v0, :cond_3

    .line 118
    invoke-direct {p0, v0}, Lorg/h2/util/Permutations;->reverseAfter(I)V

    .line 121
    iget v0, p0, Lorg/h2/util/Permutations;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/h2/util/Permutations;->reverseAfter(I)V

    :cond_3
    return-void
.end method

.method private reverseAfter(I)V
    .locals 4

    add-int/lit8 p1, p1, 0x1

    .line 147
    iget v0, p0, Lorg/h2/util/Permutations;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 149
    iget-object v1, p0, Lorg/h2/util/Permutations;->index:[I

    aget v1, v1, p1

    .line 150
    iget-object v2, p0, Lorg/h2/util/Permutations;->index:[I

    iget-object v3, p0, Lorg/h2/util/Permutations;->index:[I

    aget v3, v3, v0

    aput v3, v2, p1

    .line 151
    iget-object v2, p0, Lorg/h2/util/Permutations;->index:[I

    aput v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rightmostDip()I
    .locals 4

    .line 132
    iget v0, p0, Lorg/h2/util/Permutations;->n:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 133
    iget-object v1, p0, Lorg/h2/util/Permutations;->index:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/h2/util/Permutations;->index:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public next()Z
    .locals 4

    .line 163
    iget-boolean v0, p0, Lorg/h2/util/Permutations;->hasNext:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 166
    :cond_0
    :goto_0
    iget v0, p0, Lorg/h2/util/Permutations;->m:I

    if-ge v1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/h2/util/Permutations;->out:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/util/Permutations;->in:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/h2/util/Permutations;->index:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0}, Lorg/h2/util/Permutations;->moveIndex()V

    const/4 v0, 0x1

    return v0
.end method
