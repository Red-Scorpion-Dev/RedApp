.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;->f$1:Lorg/briarproject/bramble/api/sync/MessageId;

    iput-object p3, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;->f$1:Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$displayMessageText$8(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;)V

    return-void
.end method
