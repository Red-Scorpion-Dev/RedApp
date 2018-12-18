.class public final synthetic Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$D9X1Y_AyNvcpOQRTOnd5FAM2L6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$D9X1Y_AyNvcpOQRTOnd5FAM2L6Q;->f$0:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$D9X1Y_AyNvcpOQRTOnd5FAM2L6Q;->f$0:Landroid/view/MenuItem;

    check-cast p1, Lorg/briarproject/bramble/api/contact/Contact;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->lambda$enableAliasActionIfAvailable$20(Landroid/view/MenuItem;Lorg/briarproject/bramble/api/contact/Contact;)V

    return-void
.end method
