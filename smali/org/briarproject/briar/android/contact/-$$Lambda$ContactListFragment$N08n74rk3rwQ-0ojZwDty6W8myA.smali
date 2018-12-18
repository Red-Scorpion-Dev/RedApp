.class public final synthetic Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-boolean v2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$N08n74rk3rwQ-0ojZwDty6W8myA;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/contact/ContactListFragment;->lambda$setConnected$5(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    return-void
.end method
