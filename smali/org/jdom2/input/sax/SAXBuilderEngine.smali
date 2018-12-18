.class public Lorg/jdom2/input/sax/SAXBuilderEngine;
.super Ljava/lang/Object;
.source "SAXBuilderEngine.java"

# interfaces
.implements Lorg/jdom2/input/sax/SAXEngine;


# instance fields
.field private final saxHandler:Lorg/jdom2/input/sax/SAXHandler;

.field private final saxParser:Lorg/xml/sax/XMLReader;

.field private final validating:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;Z)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxParser:Lorg/xml/sax/XMLReader;

    .line 123
    iput-object p2, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    .line 124
    iput-boolean p3, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->validating:Z

    return-void
.end method


# virtual methods
.method public build(Ljava/io/Reader;)Lorg/jdom2/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXBuilderEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 219
    iget-object p1, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {p1}, Lorg/jdom2/input/sax/SAXHandler;->getDocument()Lorg/jdom2/Document;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/SAXHandler;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 236
    :try_start_1
    new-instance v0, Lorg/jdom2/input/JDOMParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in building: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v2}, Lorg/jdom2/input/sax/SAXHandler;->getDocument()Lorg/jdom2/Document;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/jdom2/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom2/Document;)V

    throw v0

    :catch_1
    move-exception p1

    .line 221
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/SAXHandler;->getDocument()Lorg/jdom2/Document;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 226
    :cond_0
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    new-instance v2, Lorg/jdom2/input/JDOMParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1, v0}, Lorg/jdom2/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom2/Document;)V

    throw v2

    .line 232
    :cond_1
    new-instance v1, Lorg/jdom2/input/JDOMParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/jdom2/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom2/Document;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :goto_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/SAXHandler;->reset()V

    throw p1
.end method
