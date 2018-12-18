.class Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;
.super Ljava/lang/Object;
.source "GroupInvitationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoredSession"
.end annotation


# instance fields
.field private final bdfSession:Lorg/briarproject/bramble/api/data/BdfDictionary;

.field private final storageId:Lorg/briarproject/bramble/api/sync/MessageId;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 0

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->storageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 640
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->bdfSession:Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$1;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 0

    .line 633
    iget-object p0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->bdfSession:Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object p0
.end method

.method static synthetic access$100(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 0

    .line 633
    iget-object p0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->storageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object p0
.end method
