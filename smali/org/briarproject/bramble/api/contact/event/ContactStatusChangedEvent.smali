.class public Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "ContactStatusChangedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final active:Z

.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 21
    iput-boolean p2, p0, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->active:Z

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->active:Z

    return v0
.end method
