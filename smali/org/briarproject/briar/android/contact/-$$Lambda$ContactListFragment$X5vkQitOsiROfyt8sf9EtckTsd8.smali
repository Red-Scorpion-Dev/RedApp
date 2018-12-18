.class public final synthetic Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$X5vkQitOsiROfyt8sf9EtckTsd8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$X5vkQitOsiROfyt8sf9EtckTsd8;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$X5vkQitOsiROfyt8sf9EtckTsd8;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$X5vkQitOsiROfyt8sf9EtckTsd8;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$X5vkQitOsiROfyt8sf9EtckTsd8;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/contact/ContactListFragment;->lambda$removeItem$4(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
