.class public interface abstract Lcom/vanniktech/emoji/RecentEmoji;
.super Ljava/lang/Object;
.source "RecentEmoji.java"


# virtual methods
.method public abstract addEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V
.end method

.method public abstract getRecentEmojis()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end method

.method public abstract persist()V
.end method
