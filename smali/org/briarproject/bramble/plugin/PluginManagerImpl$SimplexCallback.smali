.class Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;
.super Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;
.source "PluginManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimplexCallback"
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    .line 332
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/plugin/PluginManagerImpl$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;-><init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-void
.end method


# virtual methods
.method public readerCreated(Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$800(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v1, p1}, Lorg/briarproject/bramble/api/plugin/ConnectionManager;->manageIncomingConnection(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)V

    return-void
.end method

.method public writerCreated(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$800(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$SimplexCallback;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, p1, v1, p2}, Lorg/briarproject/bramble/api/plugin/ConnectionManager;->manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)V

    return-void
.end method
