.class public Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "ContactRelationshipRevealedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final memberId:Lorg/briarproject/bramble/api/identity/AuthorId;

.field private final visibility:Lorg/briarproject/briar/api/privategroup/Visibility;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/Visibility;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 24
    iput-object p2, p0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->memberId:Lorg/briarproject/bramble/api/identity/AuthorId;

    .line 25
    iput-object p3, p0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 26
    iput-object p4, p0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getMemberId()Lorg/briarproject/bramble/api/identity/AuthorId;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->memberId:Lorg/briarproject/bramble/api/identity/AuthorId;

    return-object v0
.end method

.method public getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-object v0
.end method
