.class Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;
.super Ljava/lang/Object;
.source "RecentEmojiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vanniktech/emoji/RecentEmojiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmojiList"
.end annotation


# static fields
.field static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/vanniktech/emoji/RecentEmojiManager$Data;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final emojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vanniktech/emoji/RecentEmojiManager$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList$1;

    invoke-direct {v0}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList$1;-><init>()V

    sput-object v0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 2

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->add(Lcom/vanniktech/emoji/emoji/Emoji;J)V

    return-void
.end method

.method add(Lcom/vanniktech/emoji/emoji/Emoji;J)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v1

    .line 109
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;

    .line 111
    iget-object v2, v2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {v2}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vanniktech/emoji/emoji/Emoji;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;

    invoke-direct {v2, p1, p2, p3}, Lcom/vanniktech/emoji/RecentEmojiManager$Data;-><init>(Lcom/vanniktech/emoji/emoji/Emoji;J)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_2

    .line 119
    iget-object p1, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method get(I)Lcom/vanniktech/emoji/RecentEmojiManager$Data;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vanniktech/emoji/RecentEmojiManager$Data;

    return-object p1
.end method

.method getEmojis()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    sget-object v1, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    iget-object v1, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;

    .line 129
    iget-object v2, v2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method size()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;->emojis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
