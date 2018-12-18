.class public Lcom/rometools/rome/io/impl/XmlFixerReader;
.super Ljava/io/Reader;
.source "XmlFixerReader.java"


# static fields
.field private static CODED_ENTITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ENTITIES_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private bufferPos:I

.field private cdata:Z

.field protected in:Ljava/io/Reader;

.field private state:I

.field private trimmed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    .line 392
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&nbsp;"

    const-string v2, "&#160;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&iexcl;"

    const-string v2, "&#161;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&cent;"

    const-string v2, "&#162;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&pound;"

    const-string v2, "&#163;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&curren;"

    const-string v2, "&#164;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&yen;"

    const-string v2, "&#165;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&brvbar;"

    const-string v2, "&#166;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sect;"

    const-string v2, "&#167;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&uml;"

    const-string v2, "&#168;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&copy;"

    const-string v2, "&#169;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ordf;"

    const-string v2, "&#170;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&laquo;"

    const-string v2, "&#171;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&not;"

    const-string v2, "&#172;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&shy;"

    const-string v2, "&#173;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&reg;"

    const-string v2, "&#174;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&macr;"

    const-string v2, "&#175;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&deg;"

    const-string v2, "&#176;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&plusmn;"

    const-string v2, "&#177;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sup2;"

    const-string v2, "&#178;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sup3;"

    const-string v2, "&#179;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&acute;"

    const-string v2, "&#180;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&micro;"

    const-string v2, "&#181;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&para;"

    const-string v2, "&#182;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&middot;"

    const-string v2, "&#183;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&cedil;"

    const-string v2, "&#184;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sup1;"

    const-string v2, "&#185;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ordm;"

    const-string v2, "&#186;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&raquo;"

    const-string v2, "&#187;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&frac14;"

    const-string v2, "&#188;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&frac12;"

    const-string v2, "&#189;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&frac34;"

    const-string v2, "&#190;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&iquest;"

    const-string v2, "&#191;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Agrave;"

    const-string v2, "&#192;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Aacute;"

    const-string v2, "&#193;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Acirc;"

    const-string v2, "&#194;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Atilde;"

    const-string v2, "&#195;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Auml;"

    const-string v2, "&#196;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Aring;"

    const-string v2, "&#197;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&AElig;"

    const-string v2, "&#198;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Ccedil;"

    const-string v2, "&#199;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Egrave;"

    const-string v2, "&#200;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Eacute;"

    const-string v2, "&#201;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Ecirc;"

    const-string v2, "&#202;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Euml;"

    const-string v2, "&#203;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Igrave;"

    const-string v2, "&#204;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Iacute;"

    const-string v2, "&#205;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Icirc;"

    const-string v2, "&#206;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Iuml;"

    const-string v2, "&#207;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ETH;"

    const-string v2, "&#208;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Ntilde;"

    const-string v2, "&#209;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Ograve;"

    const-string v2, "&#210;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Oacute;"

    const-string v2, "&#211;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Ocirc;"

    const-string v2, "&#212;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Otilde;"

    const-string v2, "&#213;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Ouml;"

    const-string v2, "&#214;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&times;"

    const-string v2, "&#215;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Oslash;"

    const-string v2, "&#216;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Ugrave;"

    const-string v2, "&#217;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Uacute;"

    const-string v2, "&#218;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Ucirc;"

    const-string v2, "&#219;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Uuml;"

    const-string v2, "&#220;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Yacute;"

    const-string v2, "&#221;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&THORN;"

    const-string v2, "&#222;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&szlig;"

    const-string v2, "&#223;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&agrave;"

    const-string v2, "&#224;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&aacute;"

    const-string v2, "&#225;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&acirc;"

    const-string v2, "&#226;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&atilde;"

    const-string v2, "&#227;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&auml;"

    const-string v2, "&#228;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&aring;"

    const-string v2, "&#229;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&aelig;"

    const-string v2, "&#230;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ccedil;"

    const-string v2, "&#231;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&egrave;"

    const-string v2, "&#232;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&eacute;"

    const-string v2, "&#233;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ecirc;"

    const-string v2, "&#234;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&euml;"

    const-string v2, "&#235;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&igrave;"

    const-string v2, "&#236;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&iacute;"

    const-string v2, "&#237;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&icirc;"

    const-string v2, "&#238;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&iuml;"

    const-string v2, "&#239;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&eth;"

    const-string v2, "&#240;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ntilde;"

    const-string v2, "&#241;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ograve;"

    const-string v2, "&#242;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&oacute;"

    const-string v2, "&#243;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ocirc;"

    const-string v2, "&#244;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&otilde;"

    const-string v2, "&#245;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ouml;"

    const-string v2, "&#246;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&divide;"

    const-string v2, "&#247;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&oslash;"

    const-string v2, "&#248;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ugrave;"

    const-string v2, "&#249;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&uacute;"

    const-string v2, "&#250;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ucirc;"

    const-string v2, "&#251;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&uuml;"

    const-string v2, "&#252;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&yacute;"

    const-string v2, "&#253;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&thorn;"

    const-string v2, "&#254;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&yuml;"

    const-string v2, "&#255;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&fnof;"

    const-string v2, "&#402;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Alpha;"

    const-string v2, "&#913;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Beta;"

    const-string v2, "&#914;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Gamma;"

    const-string v2, "&#915;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Delta;"

    const-string v2, "&#916;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Epsilon;"

    const-string v2, "&#917;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Zeta;"

    const-string v2, "&#918;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Eta;"

    const-string v2, "&#919;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Theta;"

    const-string v2, "&#920;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Iota;"

    const-string v2, "&#921;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Kappa;"

    const-string v2, "&#922;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Lambda;"

    const-string v2, "&#923;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Mu;"

    const-string v2, "&#924;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Nu;"

    const-string v2, "&#925;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Xi;"

    const-string v2, "&#926;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Omicron;"

    const-string v2, "&#927;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Pi;"

    const-string v2, "&#928;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Rho;"

    const-string v2, "&#929;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Sigma;"

    const-string v2, "&#931;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Tau;"

    const-string v2, "&#932;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Upsilon;"

    const-string v2, "&#933;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Phi;"

    const-string v2, "&#934;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Chi;"

    const-string v2, "&#935;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Psi;"

    const-string v2, "&#936;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Omega;"

    const-string v2, "&#937;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&alpha;"

    const-string v2, "&#945;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&beta;"

    const-string v2, "&#946;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&gamma;"

    const-string v2, "&#947;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&delta;"

    const-string v2, "&#948;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&epsilon;"

    const-string v2, "&#949;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&zeta;"

    const-string v2, "&#950;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&eta;"

    const-string v2, "&#951;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&theta;"

    const-string v2, "&#952;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&iota;"

    const-string v2, "&#953;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&kappa;"

    const-string v2, "&#954;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lambda;"

    const-string v2, "&#955;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&mu;"

    const-string v2, "&#956;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&nu;"

    const-string v2, "&#957;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&xi;"

    const-string v2, "&#958;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&omicron;"

    const-string v2, "&#959;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&pi;"

    const-string v2, "&#960;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rho;"

    const-string v2, "&#961;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sigmaf;"

    const-string v2, "&#962;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sigma;"

    const-string v2, "&#963;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&tau;"

    const-string v2, "&#964;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&upsilon;"

    const-string v2, "&#965;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&phi;"

    const-string v2, "&#966;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&chi;"

    const-string v2, "&#967;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&psi;"

    const-string v2, "&#968;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&omega;"

    const-string v2, "&#969;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&thetasym;"

    const-string v2, "&#977;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&upsih;"

    const-string v2, "&#978;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&piv;"

    const-string v2, "&#982;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&bull;"

    const-string v2, "&#8226;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&hellip;"

    const-string v2, "&#8230;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&prime;"

    const-string v2, "&#8242;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Prime;"

    const-string v2, "&#8243;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&oline;"

    const-string v2, "&#8254;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&frasl;"

    const-string v2, "&#8260;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&weierp;"

    const-string v2, "&#8472;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&image;"

    const-string v2, "&#8465;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&real;"

    const-string v2, "&#8476;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&trade;"

    const-string v2, "&#8482;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&alefsym;"

    const-string v2, "&#8501;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&larr;"

    const-string v2, "&#8592;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&uarr;"

    const-string v2, "&#8593;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rarr;"

    const-string v2, "&#8594;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&darr;"

    const-string v2, "&#8595;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&harr;"

    const-string v2, "&#8596;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&crarr;"

    const-string v2, "&#8629;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lArr;"

    const-string v2, "&#8656;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&uArr;"

    const-string v2, "&#8657;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rArr;"

    const-string v2, "&#8658;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&dArr;"

    const-string v2, "&#8659;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&hArr;"

    const-string v2, "&#8660;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&forall;"

    const-string v2, "&#8704;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&part;"

    const-string v2, "&#8706;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&exist;"

    const-string v2, "&#8707;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&empty;"

    const-string v2, "&#8709;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&nabla;"

    const-string v2, "&#8711;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&isin;"

    const-string v2, "&#8712;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&notin;"

    const-string v2, "&#8713;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ni;"

    const-string v2, "&#8715;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&prod;"

    const-string v2, "&#8719;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sum;"

    const-string v2, "&#8721;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&minus;"

    const-string v2, "&#8722;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lowast;"

    const-string v2, "&#8727;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&radic;"

    const-string v2, "&#8730;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&prop;"

    const-string v2, "&#8733;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&infin;"

    const-string v2, "&#8734;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ang;"

    const-string v2, "&#8736;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&and;"

    const-string v2, "&#8743;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&or;"

    const-string v2, "&#8744;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&cap;"

    const-string v2, "&#8745;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&cup;"

    const-string v2, "&#8746;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&int;"

    const-string v2, "&#8747;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&there4;"

    const-string v2, "&#8756;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sim;"

    const-string v2, "&#8764;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&cong;"

    const-string v2, "&#8773;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&asymp;"

    const-string v2, "&#8776;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ne;"

    const-string v2, "&#8800;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&equiv;"

    const-string v2, "&#8801;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&le;"

    const-string v2, "&#8804;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ge;"

    const-string v2, "&#8805;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sub;"

    const-string v2, "&#8834;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sup;"

    const-string v2, "&#8835;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&nsub;"

    const-string v2, "&#8836;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sube;"

    const-string v2, "&#8838;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&supe;"

    const-string v2, "&#8839;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&oplus;"

    const-string v2, "&#8853;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&otimes;"

    const-string v2, "&#8855;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&perp;"

    const-string v2, "&#8869;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sdot;"

    const-string v2, "&#8901;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lceil;"

    const-string v2, "&#8968;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rceil;"

    const-string v2, "&#8969;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lfloor;"

    const-string v2, "&#8970;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rfloor;"

    const-string v2, "&#8971;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lang;"

    const-string v2, "&#9001;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rang;"

    const-string v2, "&#9002;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&loz;"

    const-string v2, "&#9674;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&spades;"

    const-string v2, "&#9824;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&clubs;"

    const-string v2, "&#9827;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&hearts;"

    const-string v2, "&#9829;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&diams;"

    const-string v2, "&#9830;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&quot;"

    const-string v2, "&#34;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&amp;"

    const-string v2, "&#38;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lt;"

    const-string v2, "&#60;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&gt;"

    const-string v2, "&#62;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&OElig;"

    const-string v2, "&#338;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&oelig;"

    const-string v2, "&#339;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Scaron;"

    const-string v2, "&#352;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&scaron;"

    const-string v2, "&#353;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Yuml;"

    const-string v2, "&#376;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&circ;"

    const-string v2, "&#710;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&tilde;"

    const-string v2, "&#732;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ensp;"

    const-string v2, "&#8194;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&emsp;"

    const-string v2, "&#8195;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&thinsp;"

    const-string v2, "&#8201;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&zwnj;"

    const-string v2, "&#8204;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&zwj;"

    const-string v2, "&#8205;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lrm;"

    const-string v2, "&#8206;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rlm;"

    const-string v2, "&#8207;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ndash;"

    const-string v2, "&#8211;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&mdash;"

    const-string v2, "&#8212;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lsquo;"

    const-string v2, "&#8216;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rsquo;"

    const-string v2, "&#8217;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&sbquo;"

    const-string v2, "&#8218;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&ldquo;"

    const-string v2, "&#8220;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rdquo;"

    const-string v2, "&#8221;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&bdquo;"

    const-string v2, "&#8222;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&dagger;"

    const-string v2, "&#8224;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&Dagger;"

    const-string v2, "&#8225;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&permil;"

    const-string v2, "&#8240;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&lsaquo;"

    const-string v2, "&#8249;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&rsaquo;"

    const-string v2, "&#8250;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    const-string v1, "&euro;"

    const-string v2, "&#8364;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&[A-Za-z^#]+;"

    .line 658
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/XmlFixerReader;->ENTITIES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->cdata:Z

    .line 41
    iput v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    .line 32
    iput-object p1, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    .line 33
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    .line 34
    iput v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    return-void
.end method

.method private trimStream()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x4

    const/16 v5, 0x2d

    const/4 v6, -0x1

    const/4 v7, 0x3

    packed-switch v2, :pswitch_data_0

    .line 172
    new-instance v0, Ljava/io/IOException;

    const-string v1, "It shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_0
    iget-object v5, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 160
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0x3e

    if-eq v5, v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 140
    :pswitch_1
    iget-object v8, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v8}, Ljava/io/Reader;->read()I

    move-result v8

    if-ne v8, v6, :cond_2

    .line 144
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto/16 :goto_1

    :cond_2
    if-eq v8, v5, :cond_3

    .line 146
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v5, v8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x6

    const/4 v2, 0x1

    const/4 v4, 0x6

    goto/16 :goto_4

    .line 125
    :pswitch_2
    iget-object v4, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 129
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_1

    :cond_4
    if-eq v4, v5, :cond_5

    .line 131
    iget-object v5, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 134
    :cond_5
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x5

    goto/16 :goto_4

    .line 108
    :pswitch_3
    iget-object v8, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v8}, Ljava/io/Reader;->read()I

    move-result v8

    if-ne v8, v6, :cond_6

    .line 112
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_1

    :cond_6
    if-ne v8, v5, :cond_7

    .line 114
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v5, v8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 118
    :cond_7
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_1

    .line 91
    :pswitch_4
    iget-object v4, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 95
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_1

    :cond_8
    if-ne v4, v5, :cond_9

    .line 97
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    const/4 v4, 0x3

    goto/16 :goto_4

    .line 101
    :cond_9
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_1

    .line 73
    :pswitch_5
    iget-object v4, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    if-ne v4, v6, :cond_a

    .line 77
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    :goto_1
    move v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/16 v5, 0x21

    if-eq v4, v5, :cond_b

    .line 79
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    .line 83
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_1

    .line 85
    :cond_b
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x2

    goto :goto_4

    .line 51
    :pswitch_6
    iget-object v4, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    if-ne v4, v6, :cond_c

    move v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    const/16 v5, 0x20

    if-eq v4, v5, :cond_f

    const/16 v5, 0xa

    if-eq v4, v5, :cond_f

    const/16 v5, 0xd

    if-eq v4, v5, :cond_f

    const/16 v5, 0x9

    if-ne v4, v5, :cond_d

    goto :goto_2

    :cond_d
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_e

    .line 59
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 60
    iput v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->bufferPos:I

    .line 61
    iget-object v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_4

    .line 64
    :cond_e
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 65
    iput v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->bufferPos:I

    .line 66
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_1

    :cond_f
    :goto_2
    move v4, v2

    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_10

    return v3

    :cond_10
    move v2, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream does not support mark"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processHtmlEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x26

    .line 661
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 666
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 667
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 668
    sget-object v3, Lcom/rometools/rome/io/impl/XmlFixerReader;->ENTITIES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 669
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 670
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/2addr v2, v1

    .line 671
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/2addr v3, v1

    if-le v2, v1, :cond_1

    .line 673
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    .line 676
    :cond_1
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 677
    sget-object v2, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 681
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    goto :goto_0

    .line 684
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 688
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-boolean v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->trimmed:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 182
    iput-boolean v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->trimmed:Z

    .line 183
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/XmlFixerReader;->trimStream()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    const/4 v3, 0x5

    const/16 v4, 0x5d

    const/16 v5, 0x3e

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    .line 322
    new-instance v0, Ljava/io/IOException;

    const-string v1, "It shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :pswitch_0
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 300
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    if-eq v0, v1, :cond_9

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    .line 317
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 306
    :cond_1
    iget-object v4, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    iput v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto/16 :goto_2

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "]]>"

    .line 312
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 313
    iput-boolean v8, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->cdata:Z

    goto/16 :goto_2

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v8

    .line 272
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    if-eq v8, v1, :cond_6

    const/16 v0, 0x20

    if-eq v8, v0, :cond_5

    const/16 v0, 0x2f

    if-eq v8, v0, :cond_5

    if-eq v8, v5, :cond_5

    const/16 v0, 0x5b

    if-eq v8, v0, :cond_3

    .line 293
    iput v6, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    .line 294
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 285
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "<![CDATA["

    .line 286
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iput-boolean v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->cdata:Z

    goto :goto_0

    .line 289
    :cond_4
    iput v6, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_0

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    :goto_0
    move v0, v8

    goto :goto_2

    .line 260
    :pswitch_2
    iget v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->bufferPos:I

    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 261
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->bufferPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->bufferPos:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    goto/16 :goto_4

    .line 265
    :cond_7
    iput v8, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_1

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    sget-object v3, Lcom/rometools/rome/io/impl/XmlFixerReader;->CODED_ENTITIES:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 253
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 254
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_8
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    :goto_1
    const/4 v0, 0x0

    :cond_9
    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 219
    :pswitch_4
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v8

    if-le v8, v1, :cond_10

    const/16 v0, 0x3b

    if-ne v8, v0, :cond_a

    .line 222
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    .line 223
    iput v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto :goto_0

    :cond_a
    const/16 v0, 0x61

    if-lt v8, v0, :cond_b

    const/16 v0, 0x7a

    if-le v8, v0, :cond_f

    :cond_b
    const/16 v0, 0x41

    if-lt v8, v0, :cond_c

    const/16 v0, 0x5a

    if-le v8, v0, :cond_f

    :cond_c
    const/16 v0, 0x23

    if-eq v8, v0, :cond_f

    const/16 v0, 0x30

    if-lt v8, v0, :cond_d

    const/16 v0, 0x39

    if-gt v8, v0, :cond_d

    goto :goto_3

    .line 231
    :cond_d
    iget-boolean v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->cdata:Z

    if-nez v0, :cond_e

    .line 232
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    const-string v3, "amp;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_e
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto/16 :goto_0

    .line 226
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 241
    :cond_10
    iget-boolean v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->cdata:Z

    if-nez v0, :cond_11

    .line 242
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    const-string v3, "amp;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :cond_11
    iput v7, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    goto/16 :goto_0

    .line 191
    :pswitch_5
    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-le v0, v1, :cond_14

    const/16 v5, 0x26

    if-ne v0, v5, :cond_12

    .line 194
    iput v2, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    .line 195
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 196
    iput v8, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->bufferPos:I

    .line 197
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_12
    const/16 v5, 0x3c

    if-ne v0, v5, :cond_13

    .line 200
    iput v6, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    .line 201
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 202
    iput v8, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->bufferPos:I

    .line 203
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_13
    if-ne v0, v4, :cond_14

    .line 205
    iget-boolean v4, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->cdata:Z

    if-eqz v4, :cond_14

    .line 206
    iput v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    .line 207
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 208
    iput v8, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->bufferPos:I

    .line 209
    iget-object v3, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_14
    :goto_4
    if-nez v8, :cond_0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read([CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/XmlFixerReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, p2, 0x0

    int-to-char v0, v0

    .line 335
    aput-char v0, p1, v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/XmlFixerReader;->read()I

    move-result v2

    if-le v2, v1, :cond_1

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    int-to-char v2, v2

    .line 337
    aput-char v2, p1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rometools/rome/io/impl/XmlFixerReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream does not support mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/XmlFixerReader;->read()I

    move-result v0

    const-wide/16 v1, 0x1

    move-wide v3, v1

    :goto_0
    const/4 v5, -0x1

    if-le v0, v5, :cond_1

    cmp-long v0, v3, p1

    if-gez v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/XmlFixerReader;->read()I

    move-result v0

    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    return-wide v3

    .line 347
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'n\' cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
