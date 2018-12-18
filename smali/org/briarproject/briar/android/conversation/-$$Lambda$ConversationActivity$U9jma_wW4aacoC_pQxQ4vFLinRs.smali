.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$loadGroupId$13(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/lang/String;J)V

    return-void
.end method
