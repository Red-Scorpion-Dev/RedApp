.class Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList$1;
.super Ljava/lang/Object;
.source "RecentEmojiManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/vanniktech/emoji/RecentEmojiManager$Data;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vanniktech/emoji/RecentEmojiManager$Data;Lcom/vanniktech/emoji/RecentEmojiManager$Data;)I
    .locals 2

    .line 90
    iget-wide v0, p2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p1, Lcom/vanniktech/emoji/RecentEmojiManager$Data;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 88
    check-cast p1, Lcom/vanniktech/emoji/RecentEmojiManager$Data;

    check-cast p2, Lcom/vanniktech/emoji/RecentEmojiManager$Data;

    invoke-virtual {p0, p1, p2}, Lcom/vanniktech/emoji/RecentEmojiManager$EmojiList$1;->compare(Lcom/vanniktech/emoji/RecentEmojiManager$Data;Lcom/vanniktech/emoji/RecentEmojiManager$Data;)I

    move-result p1

    return p1
.end method
