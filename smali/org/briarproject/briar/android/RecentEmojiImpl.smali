.class Lorg/briarproject/briar/android/RecentEmojiImpl;
.super Ljava/lang/Object;
.source "RecentEmojiImpl.java"

# interfaces
.implements Lcom/vanniktech/emoji/RecentEmoji;
.implements Lorg/briarproject/bramble/api/sync/Client;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final EMOJI_LRU_PREFERENCE:Ljava/lang/String; = "pref_emoji_recent2"

.field private static final EMOJI_LRU_SIZE:I = 0x32

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final recentlyUsed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/briarproject/briar/android/RecentEmojiImpl;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/RecentEmojiImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/AndroidExecutor;Lorg/briarproject/bramble/api/settings/SettingsManager;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    .line 51
    iput-object p1, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 52
    iput-object p2, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 53
    iput-object p3, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    return-void
.end method

.method private deserialize(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/vanniktech/emoji/EmojiUtils;->emojis(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vanniktech/emoji/EmojiRange;

    iget-object v1, v1, Lcom/vanniktech/emoji/EmojiRange;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$createLocalState$0(Lorg/briarproject/briar/android/RecentEmojiImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/RecentEmojiImpl;->deserialize(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$save$1(Lorg/briarproject/briar/android/RecentEmojiImpl;Ljava/lang/String;)V
    .locals 2

    .line 100
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "pref_emoji_recent2"

    .line 101
    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :try_start_0
    iget-object p1, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v1, "android-ui"

    invoke-interface {p1, v0, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    sget-object v0, Lorg/briarproject/briar/android/RecentEmojiImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private save(Ljava/lang/String;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$ORIZ23iv1XQddS_iQrMN1nm3Y28;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$ORIZ23iv1XQddS_iQrMN1nm3Y28;-><init>(Lorg/briarproject/briar/android/RecentEmojiImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private serialize(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {v1}, Lcom/vanniktech/emoji/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "\t"

    .line 88
    invoke-static {v0, p1}, Lorg/briarproject/bramble/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 66
    iget-object p1, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v1, "android-ui"

    .line 77
    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Lorg/briarproject/bramble/api/db/Transaction;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    const-string v0, "pref_emoji_recent2"

    .line 78
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/settings/Settings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$MqwQcHDtclHvKpAiQ-en_m3YI6I;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$MqwQcHDtclHvKpAiQ-en_m3YI6I;-><init>(Lorg/briarproject/briar/android/RecentEmojiImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public getRecentEmojis()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public persist()V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl;->recentlyUsed:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/RecentEmojiImpl;->serialize(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/RecentEmojiImpl;->save(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
