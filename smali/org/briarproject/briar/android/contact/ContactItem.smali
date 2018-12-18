.class public Lorg/briarproject/briar/android/contact/ContactItem;
.super Ljava/lang/Object;
.source "ContactItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private connected:Z

.field private final contact:Lorg/briarproject/bramble/api/contact/Contact;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/contact/ContactItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/briarproject/bramble/api/contact/Contact;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactItem;->contact:Lorg/briarproject/bramble/api/contact/Contact;

    .line 21
    iput-boolean p2, p0, Lorg/briarproject/briar/android/contact/ContactItem;->connected:Z

    return-void
.end method


# virtual methods
.method public getContact()Lorg/briarproject/bramble/api/contact/Contact;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItem;->contact:Lorg/briarproject/bramble/api/contact/Contact;

    return-object v0
.end method

.method isConnected()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/briarproject/briar/android/contact/ContactItem;->connected:Z

    return v0
.end method

.method setConnected(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lorg/briarproject/briar/android/contact/ContactItem;->connected:Z

    return-void
.end method
