.class Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;
.super Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;
.source "PluginManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplexCallback"
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    .line 351
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-void
.end method


# virtual methods
.method public incomingConnectionCreated(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$800(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v1, p1}, Lorg/briarproject/bramble/api/plugin/ConnectionManager;->manageIncomingConnection(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    return-void
.end method

.method public outgoingConnectionCreated(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$800(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$DuplexCallback;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, p1, v1, p2}, Lorg/briarproject/bramble/api/plugin/ConnectionManager;->manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    return-void
.end method
