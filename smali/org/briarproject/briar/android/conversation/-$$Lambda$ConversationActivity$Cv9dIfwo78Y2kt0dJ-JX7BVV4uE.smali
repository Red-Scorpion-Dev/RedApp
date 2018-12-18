.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;->f$1:Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;->f$1:Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    iget-boolean v2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$respondToRequest$26(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Z)V

    return-void
.end method
