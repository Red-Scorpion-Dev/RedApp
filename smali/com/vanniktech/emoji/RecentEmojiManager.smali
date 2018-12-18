.class final Lcom/vanniktech/emoji/RecentEmojiManager;
.super Ljava/lang/Object;
.source "RecentEmojiManager.java"

# interfaces
.implements Lcom/vanniktech/emoji/RecentEmoji;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vanniktech/emoji/RecentEmojiManager$Data;,
        Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;-><init>(I)V

    iput-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->context:Landroid/content/Context;

    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->context:Landroid/content/Context;

    const-string v1, "emoji-recent-manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v0, p1}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->add(Lcom/vanniktech/emoji/emoji/Emoji;)V

    return-void
.end method

.method public getRecentEmojis()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 32
    invoke-direct {p0}, Lcom/vanniktech/emoji/RecentEmojiManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recent-emojis"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 35
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "~"

    invoke-direct {v1, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;-><init>(I)V

    iput-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 44
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/vanniktech/emoji/EmojiManager;->findEmoji(Ljava/lang/CharSequence;)Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v3}, Lcom/vanniktech/emoji/emoji/Emoji;->getLength()I

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .line 47
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 49
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v0, v3, v4, v5}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->add(Lcom/vanniktech/emoji/emoji/Emoji;J)V

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-direct {v0, v2}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;-><init>(I)V

    iput-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->getEmojis()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public persist()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v1}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v2}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/vanniktech/emoji/RecentEmojiManager;->emojiList:Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;

    invoke-virtual {v2, v1}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->get(I)Lcom/vanniktech/emoji/RecentEmojiManager$Data;

    move-result-object v2

    .line 71
    iget-object v3, v2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {v3}, Lcom/vanniktech/emoji/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;->timestamp:J

    .line 73
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "~"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, "~"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    invoke-direct {p0}, Lcom/vanniktech/emoji/RecentEmojiManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "recent-emojis"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
