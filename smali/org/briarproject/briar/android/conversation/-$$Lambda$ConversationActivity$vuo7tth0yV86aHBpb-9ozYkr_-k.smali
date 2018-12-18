.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vuo7tth0yV86aHBpb-9ozYkr_-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

.field private final synthetic f$1:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vuo7tth0yV86aHBpb-9ozYkr_-k;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vuo7tth0yV86aHBpb-9ozYkr_-k;->f$1:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vuo7tth0yV86aHBpb-9ozYkr_-k;->f$0:Lorg/briarproject/briar/android/conversation/ConversationActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vuo7tth0yV86aHBpb-9ozYkr_-k;->f$1:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$enableIntroductionActionIfAvailable$19(Lorg/briarproject/briar/android/conversation/ConversationActivity;Landroid/view/MenuItem;)V

    return-void
.end method
