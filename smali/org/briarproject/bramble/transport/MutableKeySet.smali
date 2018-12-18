.class Lorg/briarproject/bramble/transport/MutableKeySet;
.super Ljava/lang/Object;
.source "MutableKeySet.java"


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

.field private final transportKeys:Lorg/briarproject/bramble/transport/MutableTransportKeys;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableTransportKeys;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/briarproject/bramble/transport/MutableKeySet;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    .line 15
    iput-object p2, p0, Lorg/briarproject/bramble/transport/MutableKeySet;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 16
    iput-object p3, p0, Lorg/briarproject/bramble/transport/MutableKeySet;->transportKeys:Lorg/briarproject/bramble/transport/MutableTransportKeys;

    return-void
.end method


# virtual methods
.method getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableKeySet;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableKeySet;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    return-object v0
.end method

.method getTransportKeys()Lorg/briarproject/bramble/transport/MutableTransportKeys;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableKeySet;->transportKeys:Lorg/briarproject/bramble/transport/MutableTransportKeys;

    return-object v0
.end method
