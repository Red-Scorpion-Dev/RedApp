.class public Lorg/bitlet/weupnp/GatewayDeviceHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GatewayDeviceHandler.java"


# instance fields
.field private currentElement:Ljava/lang/String;

.field private device:Lorg/bitlet/weupnp/GatewayDevice;

.field private level:I

.field private state:S


# direct methods
.method public constructor <init>(Lorg/bitlet/weupnp/GatewayDevice;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->level:I

    .line 57
    iput-short v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->state:S

    .line 51
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setURLBase(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 147
    :cond_0
    iget-short v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->state:S

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b

    .line 148
    iget-short v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->state:S

    if-nez v0, :cond_6

    const-string v0, "friendlyName"

    .line 149
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setFriendlyName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "manufacturer"

    .line 151
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setManufacturer(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "modelDescription"

    .line 153
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setModelDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "presentationURL"

    .line 155
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 156
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setPresentationURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "modelNumber"

    .line 157
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 158
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setModelNumber(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "modelName"

    .line 159
    iget-object v1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 160
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setModelName(Ljava/lang/String;)V

    .line 162
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 163
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setServiceTypeCIF(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_7
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 165
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setControlURLCIF(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 166
    :cond_8
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 167
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setEventSubURLCIF(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :cond_9
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 169
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setSCPDURLCIF(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    :cond_a
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 171
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setDeviceTypeCIF(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_b
    iget-short v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->state:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 173
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 174
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setServiceType(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_c
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 176
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setControlURL(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_d
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 178
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setEventSubURL(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_e
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 180
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setSCPDURL(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_f
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 182
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/bitlet/weupnp/GatewayDevice;->setDeviceType(Ljava/lang/String;)V

    :cond_10
    :goto_1
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, ""

    .line 114
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    .line 115
    iget p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->level:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->level:I

    const-string p1, "service"

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 117
    iget-object p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    invoke-virtual {p1}, Lorg/bitlet/weupnp/GatewayDevice;->getServiceTypeCIF()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    invoke-virtual {p1}, Lorg/bitlet/weupnp/GatewayDevice;->getServiceTypeCIF()Ljava/lang/String;

    move-result-object p1

    const-string p2, "urn:schemas-upnp-org:service:WANCommonInterfaceConfig:1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 119
    iput-short p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->state:S

    .line 120
    :cond_0
    iget-object p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    invoke-virtual {p1}, Lorg/bitlet/weupnp/GatewayDevice;->getServiceType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    invoke-virtual {p1}, Lorg/bitlet/weupnp/GatewayDevice;->getServiceType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "urn:schemas-upnp-org:service:WANIPConnection:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->device:Lorg/bitlet/weupnp/GatewayDevice;

    invoke-virtual {p1}, Lorg/bitlet/weupnp/GatewayDevice;->getServiceType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "urn:schemas-upnp-org:service:WANPPPConnection:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x3

    .line 125
    iput-short p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->state:S

    :cond_2
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 83
    iput-object p2, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    .line 84
    iget p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->level:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->level:I

    .line 85
    iget-short p1, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->state:S

    if-ge p1, p2, :cond_0

    const-string p1, "serviceList"

    iget-object p3, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iput-short p2, p0, Lorg/bitlet/weupnp/GatewayDeviceHandler;->state:S

    :cond_0
    return-void
.end method
