.class Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;
.super Lorg/briarproject/briar/android/contactselection/SelectableContactItem;
.source "RevealableContactItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final visibility:Lorg/briarproject/briar/api/privategroup/Visibility;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/contact/Contact;ZZLorg/briarproject/briar/api/privategroup/Visibility;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;ZZ)V

    .line 19
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-void
.end method


# virtual methods
.method getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-object v0
.end method
