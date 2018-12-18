.class public final synthetic Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final synthetic f$2:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    iput-object p3, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;->f$2:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$_tjxT_kCOiHE3FRBdsX7vKlb16I;->f$2:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/contact/ContactListFragment;->lambda$updateItem$3(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    return-void
.end method
