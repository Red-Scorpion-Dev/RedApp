.class public Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "ContactDisconnectedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method
