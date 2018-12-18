.class final Lcom/vanniktech/emoji/VariantEmojiManager;
.super Ljava/lang/Object;
.source "VariantEmojiManager.java"

# interfaces
.implements Lcom/vanniktech/emoji/VariantEmoji;


# instance fields
.field private final context:Landroid/content/Context;

.field private variantsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->context:Landroid/content/Context;

    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->context:Landroid/content/Context;

    const-string v1, "variant-emoji-manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initFromSharedPreferences()V
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/vanniktech/emoji/VariantEmojiManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "variant-emojis"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 83
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "~"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vanniktech/emoji/EmojiManager;->findEmoji(Ljava/lang/CharSequence;)Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lcom/vanniktech/emoji/emoji/Emoji;->getLength()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addVariant(Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 4

    .line 43
    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vanniktech/emoji/emoji/Emoji;

    .line 48
    invoke-virtual {v2}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vanniktech/emoji/emoji/Emoji;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {v2, p1}, Lcom/vanniktech/emoji/emoji/Emoji;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getVariant(Lcom/vanniktech/emoji/emoji/Emoji;)Lcom/vanniktech/emoji/emoji/Emoji;
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/vanniktech/emoji/VariantEmojiManager;->initFromSharedPreferences()V

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 32
    iget-object v2, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vanniktech/emoji/emoji/Emoji;

    .line 34
    invoke-virtual {v2}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vanniktech/emoji/emoji/Emoji;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public persist()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/vanniktech/emoji/VariantEmojiManager;->variantsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {v2}, Lcom/vanniktech/emoji/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "~"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, "~"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 73
    invoke-direct {p0}, Lcom/vanniktech/emoji/VariantEmojiManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "variant-emojis"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/vanniktech/emoji/VariantEmojiManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "variant-emojis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method
