.class public final synthetic Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$ORIZ23iv1XQddS_iQrMN1nm3Y28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/RecentEmojiImpl;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/RecentEmojiImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$ORIZ23iv1XQddS_iQrMN1nm3Y28;->f$0:Lorg/briarproject/briar/android/RecentEmojiImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$ORIZ23iv1XQddS_iQrMN1nm3Y28;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$ORIZ23iv1XQddS_iQrMN1nm3Y28;->f$0:Lorg/briarproject/briar/android/RecentEmojiImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/-$$Lambda$RecentEmojiImpl$ORIZ23iv1XQddS_iQrMN1nm3Y28;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/RecentEmojiImpl;->lambda$save$1(Lorg/briarproject/briar/android/RecentEmojiImpl;Ljava/lang/String;)V

    return-void
.end method
