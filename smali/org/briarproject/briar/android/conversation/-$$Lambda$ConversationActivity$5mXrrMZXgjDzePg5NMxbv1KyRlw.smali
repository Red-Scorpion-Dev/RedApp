.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$5mXrrMZXgjDzePg5NMxbv1KyRlw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/MessageId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$5mXrrMZXgjDzePg5NMxbv1KyRlw;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$5mXrrMZXgjDzePg5NMxbv1KyRlw;->f$1:Lorg/briarproject/bramble/api/sync/MessageId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$5mXrrMZXgjDzePg5NMxbv1KyRlw;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$5mXrrMZXgjDzePg5NMxbv1KyRlw;->f$1:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$loadMessageText$7(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method
