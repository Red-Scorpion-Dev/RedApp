.class Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;
.super Lorg/briarproject/briar/android/conversation/ConversationItem;
.source "ConversationNoticeItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final msgText:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/android/conversation/ConversationItem;-><init>(ILorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;->text:Ljava/lang/String;

    .line 23
    invoke-virtual {p3}, Lorg/briarproject/briar/api/conversation/ConversationRequest;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;->msgText:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationResponse;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/android/conversation/ConversationItem;-><init>(ILorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    .line 29
    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;->msgText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getMsgText()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;->msgText:Ljava/lang/String;

    return-object v0
.end method
