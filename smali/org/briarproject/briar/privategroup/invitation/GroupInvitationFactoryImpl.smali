.class Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;
.super Ljava/lang/Object;
.source "GroupInvitationFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 33
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method


# virtual methods
.method public createInviteToken(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/sync/GroupId;J)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 3

    .line 55
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    const/4 p2, 0x3

    .line 57
    new-array p2, p2, [Ljava/lang/Object;

    .line 58
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p2, v2

    .line 59
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p2, p4

    const/4 p1, 0x2

    aput-object p3, p2, p1

    .line 57
    invoke-static {p2}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method public signInvitation(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/GroupId;J[B)[B
    .locals 6

    .line 39
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getLocalAuthorId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-wide v4, p3

    .line 41
    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;->createInviteToken(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/sync/GroupId;J)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 44
    :try_start_0
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object p3, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;->SIGNING_LABEL_INVITE:Ljava/lang/String;

    invoke-interface {p2, p3, p1, p5}, Lorg/briarproject/bramble/api/client/ClientHelper;->sign(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
