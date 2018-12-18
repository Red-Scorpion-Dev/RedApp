.class public final synthetic Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$3KF0AOSCRvBG_OX_9ePJ_LYNj_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/introduction/ContactChooserFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$3KF0AOSCRvBG_OX_9ePJ_LYNj_w;->f$0:Lorg/briarproject/briar/android/introduction/ContactChooserFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/-$$Lambda$ContactChooserFragment$3KF0AOSCRvBG_OX_9ePJ_LYNj_w;->f$0:Lorg/briarproject/briar/android/introduction/ContactChooserFragment;

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-static {v0, p1, p2}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->lambda$onCreateView$0(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Landroid/view/View;Lorg/briarproject/briar/android/contact/ContactListItem;)V

    return-void
.end method
