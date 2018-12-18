.class Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;
.super Ljava/lang/Object;
.source "MemberListItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupMember:Lorg/briarproject/briar/api/privategroup/GroupMember;

.field private online:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/privategroup/GroupMember;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->groupMember:Lorg/briarproject/briar/api/privategroup/GroupMember;

    .line 22
    iput-boolean p2, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->online:Z

    return-void
.end method


# virtual methods
.method getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->groupMember:Lorg/briarproject/briar/api/privategroup/GroupMember;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v0

    return-object v0
.end method

.method getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->groupMember:Lorg/briarproject/briar/api/privategroup/GroupMember;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    return-object v0
.end method

.method getMember()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->groupMember:Lorg/briarproject/briar/api/privategroup/GroupMember;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    return-object v0
.end method

.method getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->groupMember:Lorg/briarproject/briar/api/privategroup/GroupMember;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object v0

    return-object v0
.end method

.method isCreator()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->groupMember:Lorg/briarproject/briar/api/privategroup/GroupMember;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/GroupMember;->isCreator()Z

    move-result v0

    return v0
.end method

.method isOnline()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->online:Z

    return v0
.end method

.method setOnline(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->online:Z

    return-void
.end method
