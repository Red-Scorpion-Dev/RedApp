.class public Lorg/briarproject/bramble/api/transport/KeySet;
.super Ljava/lang/Object;
.source "KeySet.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

.field private final transportKeys:Lorg/briarproject/bramble/api/transport/TransportKeys;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/api/transport/KeySet;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/api/transport/KeySet;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 23
    iput-object p3, p0, Lorg/briarproject/bramble/api/transport/KeySet;->transportKeys:Lorg/briarproject/bramble/api/transport/TransportKeys;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 45
    instance-of v0, p1, Lorg/briarproject/bramble/api/transport/KeySet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/KeySet;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    check-cast p1, Lorg/briarproject/bramble/api/transport/KeySet;

    iget-object p1, p1, Lorg/briarproject/bramble/api/transport/KeySet;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/transport/KeySetId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/KeySet;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/KeySet;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    return-object v0
.end method

.method public getTransportKeys()Lorg/briarproject/bramble/api/transport/TransportKeys;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/KeySet;->transportKeys:Lorg/briarproject/bramble/api/transport/TransportKeys;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/KeySet;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/KeySetId;->hashCode()I

    move-result v0

    return v0
.end method
