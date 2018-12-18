.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$qkkSc8c6rAFlOtYi7lyZLksFxw4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$qkkSc8c6rAFlOtYi7lyZLksFxw4;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$qkkSc8c6rAFlOtYi7lyZLksFxw4;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    check-cast p1, Lorg/briarproject/bramble/api/identity/AuthorId;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$onCreate$1(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/identity/AuthorId;)V

    return-void
.end method
