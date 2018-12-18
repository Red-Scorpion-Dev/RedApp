.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$lN7Gv8KXzei2PpkYQpIubd8FIkU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$lN7Gv8KXzei2PpkYQpIubd8FIkU;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$lN7Gv8KXzei2PpkYQpIubd8FIkU;->f$1:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$lN7Gv8KXzei2PpkYQpIubd8FIkU;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$lN7Gv8KXzei2PpkYQpIubd8FIkU;->f$1:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$null$10(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;Ljava/lang/String;)V

    return-void
.end method
