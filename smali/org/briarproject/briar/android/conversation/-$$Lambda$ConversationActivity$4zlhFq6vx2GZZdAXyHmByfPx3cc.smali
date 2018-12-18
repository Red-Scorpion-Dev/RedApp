.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$4zlhFq6vx2GZZdAXyHmByfPx3cc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$4zlhFq6vx2GZZdAXyHmByfPx3cc;->f$0:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$4zlhFq6vx2GZZdAXyHmByfPx3cc;->f$0:Landroid/view/MenuItem;

    invoke-static {v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$enableIntroductionAction$21(Landroid/view/MenuItem;)V

    return-void
.end method
