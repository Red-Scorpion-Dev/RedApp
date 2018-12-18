.class public abstract Lorg/briarproject/briar/android/contact/BaseContactListAdapter;
.super Lorg/briarproject/briar/android/util/BriarAdapter;
.source "BaseContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/contact/ContactItem;",
        "VH:",
        "Lorg/briarproject/briar/android/contact/ContactItemViewHolder<",
        "TI;>;>",
        "Lorg/briarproject/briar/android/util/BriarAdapter<",
        "TI;TVH;>;"
    }
.end annotation


# instance fields
.field protected final listener:Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "TI;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    iput-object p3, p0, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->listener:Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactItem;

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->areContentsTheSame(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/ContactItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/ContactItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactItem;

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->areItemsTheSame(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/ContactItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/ContactItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TI;)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/contact/ContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactItem;

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->compare(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/ContactItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/ContactItem;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TI;)I"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Lorg/briarproject/briar/android/contact/ContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p2

    invoke-static {p2}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method findItemPosition(Lorg/briarproject/bramble/api/contact/ContactId;)I
    .locals 3

    .line 50
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/contact/ContactItem;

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Lorg/briarproject/briar/android/contact/ContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/contact/ContactItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/contact/ContactItemViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p2}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactItem;

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;->listener:Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;

    invoke-virtual {p1, p2, v0}, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->bind(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method
