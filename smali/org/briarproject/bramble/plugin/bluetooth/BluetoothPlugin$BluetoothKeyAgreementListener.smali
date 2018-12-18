.class Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;
.super Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;
.source "BluetoothPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothKeyAgreementListener"
.end annotation


# instance fields
.field private final ss:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSS;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Lorg/briarproject/bramble/api/data/BdfList;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/data/BdfList;",
            "TSS;)V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;->this$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    .line 429
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;-><init>(Lorg/briarproject/bramble/api/data/BdfList;)V

    .line 430
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;->ss:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Lorg/briarproject/bramble/api/data/BdfList;Ljava/lang/Object;Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$1;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Lorg/briarproject/bramble/api/data/BdfList;Ljava/lang/Object;)V

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

    .line 435
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;->this$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;->ss:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->acceptConnection(Ljava/lang/Object;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v0

    .line 436
    invoke-static {}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Incoming connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 437
    :cond_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;->this$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    iget-object v1, v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->keyAgreementConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    .line 438
    new-instance v1, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    sget-object v2, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-direct {v1, v0, v2}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;-><init>(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-object v1
.end method

.method public close()V
    .locals 2

    .line 443
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;->this$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin$BluetoothKeyAgreementListener;->ss:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->tryToClose(Ljava/lang/Object;)V

    return-void
.end method
