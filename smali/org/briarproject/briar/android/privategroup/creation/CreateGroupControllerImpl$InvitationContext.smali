.class Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;
.super Ljava/lang/Object;
.source "CreateGroupControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvitationContext"
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final signature:[B

.field private final timestamp:J


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/contact/ContactId;J[B)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 195
    iput-wide p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->timestamp:J

    .line 196
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->signature:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/contact/ContactId;J[BLorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;J[B)V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 0

    .line 186
    iget-object p0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object p0
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;)J
    .locals 2

    .line 186
    iget-wide v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;)[B
    .locals 0

    .line 186
    iget-object p0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->signature:[B

    return-object p0
.end method
