.class public Lorg/bitlet/weupnp/NameValueHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "NameValueHandler.java"


# instance fields
.field private currentElement:Ljava/lang/String;

.field private nameValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/bitlet/weupnp/NameValueHandler;->nameValue:Ljava/util/Map;

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

    .line 131
    iget-object v0, p0, Lorg/bitlet/weupnp/NameValueHandler;->currentElement:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 133
    iget-object p1, p0, Lorg/bitlet/weupnp/NameValueHandler;->nameValue:Ljava/util/Map;

    iget-object p2, p0, Lorg/bitlet/weupnp/NameValueHandler;->currentElement:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 135
    iget-object p2, p0, Lorg/bitlet/weupnp/NameValueHandler;->nameValue:Ljava/util/Map;

    iget-object p3, p0, Lorg/bitlet/weupnp/NameValueHandler;->currentElement:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lorg/bitlet/weupnp/NameValueHandler;->currentElement:Ljava/lang/String;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 85
    iput-object p2, p0, Lorg/bitlet/weupnp/NameValueHandler;->currentElement:Ljava/lang/String;

    return-void
.end method
