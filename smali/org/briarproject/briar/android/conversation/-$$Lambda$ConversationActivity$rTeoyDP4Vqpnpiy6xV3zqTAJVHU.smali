.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$rTeoyDP4Vqpnpiy6xV3zqTAJVHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$rTeoyDP4Vqpnpiy6xV3zqTAJVHU;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$rTeoyDP4Vqpnpiy6xV3zqTAJVHU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$rTeoyDP4Vqpnpiy6xV3zqTAJVHU;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$rTeoyDP4Vqpnpiy6xV3zqTAJVHU;->f$1:I

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$loadMessages$5(Lorg/briarproject/briar/android/conversation/ConversationActivity;I)V

    return-void
.end method
