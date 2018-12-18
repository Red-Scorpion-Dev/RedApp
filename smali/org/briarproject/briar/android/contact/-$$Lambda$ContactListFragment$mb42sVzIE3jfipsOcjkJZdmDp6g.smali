.class public final synthetic Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/contact/ContactListFragment;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    iput p2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;->f$1:I

    iput-object p3, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    iget v1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;->f$1:I

    iget-object v2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$mb42sVzIE3jfipsOcjkJZdmDp6g;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/contact/ContactListFragment;->lambda$displayContacts$2(Lorg/briarproject/briar/android/contact/ContactListFragment;ILjava/util/List;)V

    return-void
.end method
