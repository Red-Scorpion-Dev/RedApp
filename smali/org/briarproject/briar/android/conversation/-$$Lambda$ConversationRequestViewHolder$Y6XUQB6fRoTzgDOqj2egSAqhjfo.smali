.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$Y6XUQB6fRoTzgDOqj2egSAqhjfo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationListener;

.field private final synthetic f$1:Lorg/briarproject/briar/android/conversation/ConversationRequestItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationListener;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$Y6XUQB6fRoTzgDOqj2egSAqhjfo;->f$0:Lorg/briarproject/briar/android/conversation/ConversationListener;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$Y6XUQB6fRoTzgDOqj2egSAqhjfo;->f$1:Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$Y6XUQB6fRoTzgDOqj2egSAqhjfo;->f$0:Lorg/briarproject/briar/android/conversation/ConversationListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$Y6XUQB6fRoTzgDOqj2egSAqhjfo;->f$1:Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->lambda$bind$0(Lorg/briarproject/briar/android/conversation/ConversationListener;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Landroid/view/View;)V

    return-void
.end method
