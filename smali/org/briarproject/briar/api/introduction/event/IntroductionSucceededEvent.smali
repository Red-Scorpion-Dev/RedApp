.class public Lorg/briarproject/briar/api/introduction/event/IntroductionSucceededEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "IntroductionSucceededEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contact:Lorg/briarproject/bramble/api/contact/Contact;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/api/introduction/event/IntroductionSucceededEvent;->contact:Lorg/briarproject/bramble/api/contact/Contact;

    return-void
.end method


# virtual methods
.method public getContact()Lorg/briarproject/bramble/api/contact/Contact;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/briarproject/briar/api/introduction/event/IntroductionSucceededEvent;->contact:Lorg/briarproject/bramble/api/contact/Contact;

    return-object v0
.end method
