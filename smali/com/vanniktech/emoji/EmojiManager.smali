.class public final Lcom/vanniktech/emoji/EmojiManager;
.super Ljava/lang/Object;
.source "EmojiManager.java"


# static fields
.field private static final INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

.field private static final STRING_LENGTH_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categories:[Lcom/vanniktech/emoji/emoji/EmojiCategory;

.field private final emojiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private emojiPattern:Ljava/util/regex/Pattern;

.field private emojiRepetitivePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/vanniktech/emoji/EmojiManager;

    invoke-direct {v0}, Lcom/vanniktech/emoji/EmojiManager;-><init>()V

    sput-object v0, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    .line 29
    new-instance v0, Lcom/vanniktech/emoji/EmojiManager$1;

    invoke-direct {v0}, Lcom/vanniktech/emoji/EmojiManager$1;-><init>()V

    sput-object v0, Lcom/vanniktech/emoji/EmojiManager;->STRING_LENGTH_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiManager;->emojiMap:Ljava/util/Map;

    return-void
.end method

.method static getInstance()Lcom/vanniktech/emoji/EmojiManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    return-object v0
.end method

.method public static install(Lcom/vanniktech/emoji/EmojiProvider;)V
    .locals 11

    .line 59
    sget-object v0, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    invoke-interface {p0}, Lcom/vanniktech/emoji/EmojiProvider;->getCategories()[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    move-result-object p0

    const-string v1, "categories == null"

    invoke-static {p0, v1}, Lcom/vanniktech/emoji/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/vanniktech/emoji/emoji/EmojiCategory;

    iput-object p0, v0, Lcom/vanniktech/emoji/EmojiManager;->categories:[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    .line 60
    sget-object p0, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    iget-object p0, p0, Lcom/vanniktech/emoji/EmojiManager;->emojiMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 62
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    sget-object v0, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiManager;->categories:[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 67
    sget-object v3, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    iget-object v3, v3, Lcom/vanniktech/emoji/EmojiManager;->categories:[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/vanniktech/emoji/emoji/EmojiCategory;->getEmojis()[Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v3

    const-string v4, "emojies == null"

    invoke-static {v3, v4}, Lcom/vanniktech/emoji/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/vanniktech/emoji/emoji/Emoji;

    .line 69
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 72
    aget-object v6, v3, v5

    .line 73
    invoke-virtual {v6}, Lcom/vanniktech/emoji/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v6}, Lcom/vanniktech/emoji/emoji/Emoji;->getVariants()Ljava/util/List;

    move-result-object v8

    .line 76
    sget-object v9, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    iget-object v9, v9, Lcom/vanniktech/emoji/EmojiManager;->emojiMap:Ljava/util/Map;

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 80
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 81
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vanniktech/emoji/emoji/Emoji;

    .line 82
    invoke-virtual {v7}, Lcom/vanniktech/emoji/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v9

    .line 84
    sget-object v10, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    iget-object v10, v10, Lcom/vanniktech/emoji/EmojiManager;->emojiMap:Ljava/util/Map;

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    sget-object v0, Lcom/vanniktech/emoji/EmojiManager;->STRING_LENGTH_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x2ee0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_3

    .line 101
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    sget-object v0, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/vanniktech/emoji/EmojiManager;->emojiPattern:Ljava/util/regex/Pattern;

    .line 106
    sget-object v0, Lcom/vanniktech/emoji/EmojiManager;->INSTANCE:Lcom/vanniktech/emoji/EmojiManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")+"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    iput-object p0, v0, Lcom/vanniktech/emoji/EmojiManager;->emojiRepetitivePattern:Ljava/util/regex/Pattern;

    return-void

    .line 91
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Your EmojiProvider must at least have one category with at least one emoji."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static replaceWithImages(Landroid/content/Context;Landroid/text/Spannable;F)V
    .locals 7

    .line 117
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object v0

    .line 118
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Lcom/vanniktech/emoji/EmojiSpan;

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/vanniktech/emoji/EmojiSpan;

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 124
    aget-object v6, v1, v5

    invoke-interface {p1, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0, p1}, Lcom/vanniktech/emoji/EmojiManager;->findAllEmojis(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 130
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 131
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vanniktech/emoji/EmojiRange;

    .line 133
    iget v4, v1, Lcom/vanniktech/emoji/EmojiRange;->start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    new-instance v4, Lcom/vanniktech/emoji/EmojiSpan;

    iget-object v5, v1, Lcom/vanniktech/emoji/EmojiRange;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {v5}, Lcom/vanniktech/emoji/emoji/Emoji;->getResource()I

    move-result v5

    invoke-direct {v4, p0, v5, p2}, Lcom/vanniktech/emoji/EmojiSpan;-><init>(Landroid/content/Context;IF)V

    iget v5, v1, Lcom/vanniktech/emoji/EmojiRange;->start:I

    iget v1, v1, Lcom/vanniktech/emoji/EmojiRange;->end:I

    const/16 v6, 0x21

    invoke-interface {p1, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method findAllEmojis(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/vanniktech/emoji/EmojiRange;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiManager;->verifyInstalled()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiManager;->emojiPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 157
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vanniktech/emoji/EmojiManager;->findEmoji(Ljava/lang/CharSequence;)Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    new-instance v3, Lcom/vanniktech/emoji/EmojiRange;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-direct {v3, v4, v5, v2}, Lcom/vanniktech/emoji/EmojiRange;-><init>(IILcom/vanniktech/emoji/emoji/Emoji;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method findEmoji(Ljava/lang/CharSequence;)Lcom/vanniktech/emoji/emoji/Emoji;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiManager;->verifyInstalled()V

    .line 174
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiManager;->emojiMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vanniktech/emoji/emoji/Emoji;

    return-object p1
.end method

.method getCategories()[Lcom/vanniktech/emoji/emoji/EmojiCategory;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiManager;->verifyInstalled()V

    .line 142
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiManager;->categories:[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    return-object v0
.end method

.method verifyInstalled()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiManager;->categories:[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please install an EmojiProvider through the EmojiManager.install() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
