.class Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;
.super Ljava/lang/Object;
.source "ContactGroupFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/client/ContactGroupFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOCAL_GROUP_DESCRIPTOR:[B


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [B

    sput-object v0, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->LOCAL_GROUP_DESCRIPTOR:[B

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    .line 31
    iput-object p2, p0, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method

.method private createGroupDescriptor(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)[B
    .locals 4

    .line 58
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/api/Bytes;->COMPARATOR:Lorg/briarproject/bramble/api/Bytes$BytesComparator;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/Bytes$BytesComparator;->compare(Lorg/briarproject/bramble/api/Bytes;Lorg/briarproject/bramble/api/Bytes;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gez v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    invoke-static {v3}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 1

    .line 43
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/contact/Contact;->getLocalAuthorId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    .line 44
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p3

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p3

    .line 45
    invoke-direct {p0, v0, p3}, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->createGroupDescriptor(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)[B

    move-result-object p3

    .line 46
    iget-object v0, p0, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/sync/GroupFactory;->createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method public createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 0

    .line 52
    invoke-direct {p0, p3, p4}, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->createGroupDescriptor(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)[B

    move-result-object p3

    .line 53
    iget-object p4, p0, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    invoke-interface {p4, p1, p2, p3}, Lorg/briarproject/bramble/api/sync/GroupFactory;->createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method public createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    sget-object v1, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;->LOCAL_GROUP_DESCRIPTOR:[B

    invoke-interface {v0, p1, p2, v1}, Lorg/briarproject/bramble/api/sync/GroupFactory;->createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method
