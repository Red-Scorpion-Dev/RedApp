.class Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;
.super Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;
.source "LanTcpPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanKeyAgreementListener"
.end annotation


# instance fields
.field private final ss:Ljava/net/ServerSocket;

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;Lorg/briarproject/bramble/api/data/BdfList;Ljava/net/ServerSocket;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;->this$0:Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;

    .line 282
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;-><init>(Lorg/briarproject/bramble/api/data/BdfList;)V

    .line 283
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;->ss:Ljava/net/ServerSocket;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;Lorg/briarproject/bramble/api/data/BdfList;Ljava/net/ServerSocket;Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;-><init>(Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;Lorg/briarproject/bramble/api/data/BdfList;Ljava/net/ServerSocket;)V

    return-void
.end method


# virtual methods
.method public accept()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 289
    invoke-static {}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Incoming connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 290
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    new-instance v2, Lorg/briarproject/bramble/plugin/tcp/TcpTransportConnection;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;->this$0:Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;

    invoke-direct {v2, v3, v0}, Lorg/briarproject/bramble/plugin/tcp/TcpTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/net/Socket;)V

    sget-object v0, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-direct {v1, v2, v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;-><init>(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-object v1
.end method

.method public close()V
    .locals 3

    .line 297
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanKeyAgreementListener;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    invoke-static {}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
