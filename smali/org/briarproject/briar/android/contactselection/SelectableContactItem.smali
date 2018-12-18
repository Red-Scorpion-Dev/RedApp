.class public Lorg/briarproject/briar/android/contactselection/SelectableContactItem;
.super Lorg/briarproject/briar/android/contact/ContactItem;
.source "SelectableContactItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private disabled:Z

.field private selected:Z


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/Contact;ZZ)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/contact/ContactItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;)V

    .line 18
    iput-boolean p2, p0, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->selected:Z

    .line 19
    iput-boolean p3, p0, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->disabled:Z

    return-void
.end method


# virtual methods
.method public isDisabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->disabled:Z

    return v0
.end method

.method isSelected()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->selected:Z

    return v0
.end method

.method toggleSelected()V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->selected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->selected:Z

    return-void
.end method
