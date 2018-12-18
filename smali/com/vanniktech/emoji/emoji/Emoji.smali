.class public final Lcom/vanniktech/emoji/emoji/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private base:Lcom/vanniktech/emoji/emoji/Emoji;

.field private final resource:I

.field private final unicode:Ljava/lang/String;

.field private final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-direct {p0, p1, p2, v0}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    return-void
.end method

.method public varargs constructor <init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 2

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0, p2, p3}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-direct {p0, p1, p2, v0}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    return-void
.end method

.method public varargs constructor <init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([III)V

    iput-object v0, p0, Lcom/vanniktech/emoji/emoji/Emoji;->unicode:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/vanniktech/emoji/emoji/Emoji;->resource:I

    .line 35
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/vanniktech/emoji/emoji/Emoji;->variants:Ljava/util/List;

    .line 37
    array-length p1, p3

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object p2, p3, v2

    .line 38
    iput-object p0, p2, Lcom/vanniktech/emoji/emoji/Emoji;->base:Lcom/vanniktech/emoji/emoji/Emoji;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    check-cast p1, Lcom/vanniktech/emoji/emoji/Emoji;

    .line 83
    iget v2, p0, Lcom/vanniktech/emoji/emoji/Emoji;->resource:I

    iget v3, p1, Lcom/vanniktech/emoji/emoji/Emoji;->resource:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/vanniktech/emoji/emoji/Emoji;->unicode:Ljava/lang/String;

    iget-object v3, p1, Lcom/vanniktech/emoji/emoji/Emoji;->unicode:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vanniktech/emoji/emoji/Emoji;->variants:Ljava/util/List;

    iget-object p1, p1, Lcom/vanniktech/emoji/emoji/Emoji;->variants:Ljava/util/List;

    .line 85
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBase()Lcom/vanniktech/emoji/emoji/Emoji;
    .locals 2

    move-object v0, p0

    .line 57
    :goto_0
    iget-object v1, v0, Lcom/vanniktech/emoji/emoji/Emoji;->base:Lcom/vanniktech/emoji/emoji/Emoji;

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, v0, Lcom/vanniktech/emoji/emoji/Emoji;->base:Lcom/vanniktech/emoji/emoji/Emoji;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/vanniktech/emoji/emoji/Emoji;->unicode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getResource()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/vanniktech/emoji/emoji/Emoji;->resource:I

    return v0
.end method

.method public getUnicode()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/vanniktech/emoji/emoji/Emoji;->unicode:Ljava/lang/String;

    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vanniktech/emoji/emoji/Emoji;->variants:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasVariants()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/vanniktech/emoji/emoji/Emoji;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/vanniktech/emoji/emoji/Emoji;->unicode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget v1, p0, Lcom/vanniktech/emoji/emoji/Emoji;->resource:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v1, p0, Lcom/vanniktech/emoji/emoji/Emoji;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
