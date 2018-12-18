.class public Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "ContactLeftShareableEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method
