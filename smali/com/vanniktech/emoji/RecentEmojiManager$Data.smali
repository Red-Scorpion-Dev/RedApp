.class Lcom/vanniktech/emoji/RecentEmojiManager$Data;
.super Ljava/lang/Object;
.source "RecentEmojiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vanniktech/emoji/RecentEmojiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field final emoji:Lcom/vanniktech/emoji/emoji/Emoji;

.field final timestamp:J


# direct methods
.method constructor <init>(Lcom/vanniktech/emoji/emoji/Emoji;J)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/vanniktech/emoji/RecentEmojiManager$Data;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    .line 150
    iput-wide p2, p0, Lcom/vanniktech/emoji/RecentEmojiManager$Data;->timestamp:J

    return-void
.end method
