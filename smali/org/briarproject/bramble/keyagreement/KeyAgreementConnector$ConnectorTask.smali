.class Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;
.super Ljava/lang/Object;
.source "KeyAgreementConnector.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final commitment:[B

.field private final descriptor:Lorg/briarproject/bramble/api/data/BdfList;

.field private final plugin:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

.field final synthetic this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;[BLorg/briarproject/bramble/api/data/BdfList;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->plugin:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    .line 158
    iput-object p3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->commitment:[B

    .line 159
    iput-object p4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->descriptor:Lorg/briarproject/bramble/api/data/BdfList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;[BLorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;[BLorg/briarproject/bramble/api/data/BdfList;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->call()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-static {v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$200(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->plugin:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->commitment:[B

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->descriptor:Lorg/briarproject/bramble/api/data/BdfList;

    .line 168
    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->createKeyAgreementConnection([BLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-static {}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->plugin:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Outgoing connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 173
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ConnectorTask;->plugin:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;-><init>(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-object v1

    :cond_1
    const-wide/16 v0, 0x7d0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
