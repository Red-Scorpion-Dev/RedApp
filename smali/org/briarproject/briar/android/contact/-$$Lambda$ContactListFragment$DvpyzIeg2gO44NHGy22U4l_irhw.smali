.class public final synthetic Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$DvpyzIeg2gO44NHGy22U4l_irhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/contact/ContactListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$DvpyzIeg2gO44NHGy22U4l_irhw;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactListFragment$DvpyzIeg2gO44NHGy22U4l_irhw;->f$0:Lorg/briarproject/briar/android/contact/ContactListFragment;

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-static {v0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactListFragment;->lambda$onCreateView$0(Lorg/briarproject/briar/android/contact/ContactListFragment;Landroid/view/View;Lorg/briarproject/briar/android/contact/ContactListItem;)V

    return-void
.end method
