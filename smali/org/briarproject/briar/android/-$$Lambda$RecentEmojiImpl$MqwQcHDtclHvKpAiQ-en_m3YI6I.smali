.class public final synthetic Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$MqwQcHDtclHvKpAiQ-en_m3YI6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/RecentEmojiImpl;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/RecentEmojiImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$MqwQcHDtclHvKpAiQ-en_m3YI6I;->f$0:Lorg/briarproject/briar/android/RecentEmojiImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$MqwQcHDtclHvKpAiQ-en_m3YI6I;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$MqwQcHDtclHvKpAiQ-en_m3YI6I;->f$0:Lorg/briarproject/briar/android/RecentEmojiImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$MqwQcHDtclHvKpAiQ-en_m3YI6I;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/RecentEmojiImpl;->lambda$createLocalState$0(Lorg/briarproject/briar/android/RecentEmojiImpl;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
