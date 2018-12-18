.class public Lorg/jdom2/input/SAXBuilder;
.super Ljava/lang/Object;
.source "SAXBuilder.java"

# interfaces
.implements Lorg/jdom2/input/sax/SAXEngine;


# static fields
.field private static final DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

.field private static final DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;


# instance fields
.field private engine:Lorg/jdom2/input/sax/SAXEngine;

.field private expand:Z

.field private final features:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private jdomfac:Lorg/jdom2/JDOMFactory;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

.field private reuseParser:Z

.field private saxDTDHandler:Lorg/xml/sax/DTDHandler;

.field private saxEntityResolver:Lorg/xml/sax/EntityResolver;

.field private saxErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private saxXMLFilter:Lorg/xml/sax/XMLFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lorg/jdom2/input/sax/DefaultSAXHandlerFactory;

    invoke-direct {v0}, Lorg/jdom2/input/sax/DefaultSAXHandlerFactory;-><init>()V

    sput-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 150
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    sput-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, v0, v0, v0}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V
    .locals 3

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 164
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 169
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    .line 178
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->properties:Ljava/util/HashMap;

    .line 184
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 187
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 190
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 193
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    const/4 v1, 0x1

    .line 196
    iput-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    const/4 v2, 0x0

    .line 199
    iput-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    .line 202
    iput-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    .line 205
    iput-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    .line 208
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    if-nez p1, :cond_0

    .line 338
    sget-object p1, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    :cond_0
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    if-nez p2, :cond_1

    .line 341
    sget-object p2, Lorg/jdom2/input/SAXBuilder;->DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;

    :cond_1
    iput-object p2, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    if-nez p3, :cond_2

    .line 344
    sget-object p3, Lorg/jdom2/input/SAXBuilder;->DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

    :cond_2
    iput-object p3, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    return-void
.end method

.method private getEngine()Lorg/jdom2/input/sax/SAXEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    return-object v0

    .line 904
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->buildEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 905
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    return-object v0
.end method

.method private internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 1020
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1025
    :catch_0
    new-instance p2, Lorg/jdom2/JDOMException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " feature not recognized for SAX driver "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1022
    :catch_1
    new-instance p2, Lorg/jdom2/JDOMException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " feature not supported for SAX driver "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 1039
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1044
    :catch_0
    new-instance p2, Lorg/jdom2/JDOMException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " property not recognized for SAX driver "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1041
    :catch_1
    new-instance p2, Lorg/jdom2/JDOMException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " property not supported for SAX driver "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public build(Ljava/io/Reader;)Lorg/jdom2/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1196
    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/Reader;)Lorg/jdom2/Document;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_0

    .line 1199
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 1198
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_1

    .line 1199
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_1
    throw p1
.end method

.method public buildEngine()Lorg/jdom2/input/sax/SAXEngine;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, v1}, Lorg/jdom2/input/sax/SAXHandlerFactory;->createSAXHandler(Lorg/jdom2/JDOMFactory;)Lorg/jdom2/input/sax/SAXHandler;

    move-result-object v0

    .line 850
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    invoke-virtual {v0, v1}, Lorg/jdom2/input/sax/SAXHandler;->setExpandEntities(Z)V

    .line 851
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    invoke-virtual {v0, v1}, Lorg/jdom2/input/sax/SAXHandler;->setIgnoringElementContentWhitespace(Z)V

    .line 852
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    invoke-virtual {v0, v1}, Lorg/jdom2/input/sax/SAXHandler;->setIgnoringBoundaryWhitespace(Z)V

    .line 854
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 856
    invoke-virtual {p0, v1, v0}, Lorg/jdom2/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;)V

    .line 857
    iget-object v2, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    invoke-interface {v2}, Lorg/jdom2/input/sax/XMLReaderJDOMFactory;->isValidating()Z

    move-result v2

    .line 859
    new-instance v3, Lorg/jdom2/input/sax/SAXBuilderEngine;

    invoke-direct {v3, v1, v0, v2}, Lorg/jdom2/input/sax/SAXBuilderEngine;-><init>(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;Z)V

    return-object v3
.end method

.method protected configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 931
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 933
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    goto :goto_0

    .line 940
    :cond_1
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 943
    :goto_0
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_2

    .line 944
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_1

    .line 946
    :cond_2
    new-instance v0, Lorg/jdom2/input/sax/BuilderErrorHandler;

    invoke-direct {v0}, Lorg/jdom2/input/sax/BuilderErrorHandler;-><init>()V

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    .line 952
    invoke-interface {p1, v1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    if-nez v0, :cond_3

    :try_start_1
    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    .line 964
    invoke-interface {p1, v0, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 975
    :catch_1
    :cond_3
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 976
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3, v1}, Lorg/jdom2/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 980
    :cond_4
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 981
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3, v1}, Lorg/jdom2/input/SAXBuilder;->internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :try_start_2
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    .line 992
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    if-eq v0, v1, :cond_6

    const-string v0, "http://xml.org/sax/features/external-general-entities"

    .line 993
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 999
    :catch_2
    :cond_6
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    if-nez v0, :cond_7

    :try_start_3
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    .line 1001
    invoke-interface {p1, v0, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_7
    return-void
.end method

.method protected createParser()Lorg/xml/sax/XMLReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    invoke-interface {v0}, Lorg/jdom2/input/sax/XMLReaderJDOMFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 877
    :goto_0
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v2

    instance-of v2, v2, Lorg/xml/sax/XMLFilter;

    if-eqz v2, :cond_0

    .line 878
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLFilter;

    goto :goto_0

    .line 880
    :cond_0
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 883
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    :cond_1
    return-object v0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    const/4 p1, 0x0

    .line 566
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0

    .line 720
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    const/4 p1, 0x0

    .line 721
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1

    .line 799
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 800
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    return-void
.end method
