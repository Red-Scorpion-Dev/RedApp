.class public final synthetic Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/contact/ContactItemViewHolder;

.field private final synthetic f$1:Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;

.field private final synthetic f$2:Lorg/briarproject/briar/android/contact/ContactItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/contact/ContactItemViewHolder;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;Lorg/briarproject/briar/android/contact/ContactItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;->f$0:Lorg/briarproject/briar/android/contact/ContactItemViewHolder;

    iput-object p2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;->f$1:Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;

    iput-object p3, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;->f$2:Lorg/briarproject/briar/android/contact/ContactItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;->f$0:Lorg/briarproject/briar/android/contact/ContactItemViewHolder;

    iget-object v1, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;->f$1:Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;

    iget-object v2, p0, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;->f$2:Lorg/briarproject/briar/android/contact/ContactItem;

    invoke-static {v0, v1, v2, p1}, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->lambda$bind$0(Lorg/briarproject/briar/android/contact/ContactItemViewHolder;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;Lorg/briarproject/briar/android/contact/ContactItem;Landroid/view/View;)V

    return-void
.end method
