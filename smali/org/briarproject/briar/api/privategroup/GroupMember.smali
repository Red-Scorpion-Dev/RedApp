.class public Lorg/briarproject/briar/api/privategroup/GroupMember;
.super Ljava/lang/Object;
.source "GroupMember.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final author:Lorg/briarproject/bramble/api/identity/Author;

.field private final authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final isCreator:Z

.field private final visibility:Lorg/briarproject/briar/api/privategroup/Visibility;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;ZLorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/Visibility;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 25
    iput-object p2, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    .line 26
    iput-boolean p3, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->isCreator:Z

    .line 27
    iput-object p4, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 28
    iput-object p5, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-void
.end method


# virtual methods
.method public getAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    return-object v0
.end method

.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-object v0
.end method

.method public isCreator()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/briarproject/briar/api/privategroup/GroupMember;->isCreator:Z

    return v0
.end method
