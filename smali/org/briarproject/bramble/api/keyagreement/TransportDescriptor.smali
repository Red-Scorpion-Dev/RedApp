.class public Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;
.super Ljava/lang/Object;
.source "TransportDescriptor.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final descriptor:Lorg/briarproject/bramble/api/data/BdfList;

.field private final id:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/data/BdfList;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 18
    iput-object p2, p0, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;->descriptor:Lorg/briarproject/bramble/api/data/BdfList;

    return-void
.end method


# virtual methods
.method public getDescriptor()Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;->descriptor:Lorg/briarproject/bramble/api/data/BdfList;

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method
