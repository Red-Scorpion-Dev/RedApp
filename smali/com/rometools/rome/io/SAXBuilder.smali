.class public Lcom/rometools/rome/io/SAXBuilder;
.super Lorg/jdom2/input/SAXBuilder;
.source "SAXBuilder.java"


# direct methods
.method public constructor <init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V

    return-void
.end method


# virtual methods
.method public createParser()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 52
    invoke-super {p0}, Lorg/jdom2/input/SAXBuilder;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method
