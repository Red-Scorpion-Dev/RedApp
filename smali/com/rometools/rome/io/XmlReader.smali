.class public Lcom/rometools/rome/io/XmlReader;
.super Ljava/io/Reader;
.source "XmlReader.java"


# static fields
.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENCODING_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_EX_1:Ljava/text/MessageFormat;

.field private static final HTTP_EX_2:Ljava/text/MessageFormat;

.field private static final HTTP_EX_3:Ljava/text/MessageFormat;

.field private static final RAW_EX_1:Ljava/text/MessageFormat;

.field private static final RAW_EX_2:Ljava/text/MessageFormat;

.field private static staticDefaultEncoding:Ljava/lang/String;


# instance fields
.field private final defaultEncoding:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "charset=([.[^; ]]*)"

    .line 66
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/XmlReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:\'.[^\']*\'))"

    const/16 v1, 0x8

    .line 67
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/XmlReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rometools/rome/io/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    .line 69
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rometools/rome/io/XmlReader;->RAW_EX_2:Ljava/text/MessageFormat;

    .line 70
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rometools/rome/io/XmlReader;->HTTP_EX_1:Ljava/text/MessageFormat;

    .line 72
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rometools/rome/io/XmlReader;->HTTP_EX_2:Ljava/text/MessageFormat;

    .line 74
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rometools/rome/io/XmlReader;->HTTP_EX_3:Ljava/text/MessageFormat;

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/rometools/rome/io/XmlReader;->staticDefaultEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/rometools/rome/io/XmlReader;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/rometools/rome/io/XmlReaderException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lcom/rometools/rome/io/XmlReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/rometools/rome/io/XmlReaderException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    if-nez p3, :cond_0

    .line 150
    sget-object p3, Lcom/rometools/rome/io/XmlReader;->staticDefaultEncoding:Ljava/lang/String;

    iput-object p3, p0, Lcom/rometools/rome/io/XmlReader;->defaultEncoding:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_0
    iput-object p3, p0, Lcom/rometools/rome/io/XmlReader;->defaultEncoding:Ljava/lang/String;

    .line 155
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/io/XmlReader;->doRawStream(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Lcom/rometools/rome/io/XmlReaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 160
    invoke-direct {p0, p2, p1}, Lcom/rometools/rome/io/XmlReader;->doLenientDetection(Ljava/lang/String;Lcom/rometools/rome/io/XmlReaderException;)V

    :goto_1
    return-void

    .line 158
    :cond_1
    throw p1
.end method

.method private calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    if-eqz p7, :cond_0

    if-eqz v7, :cond_0

    move-object v1, v7

    goto/16 :goto_2

    .line 575
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/rometools/rome/io/XmlReader;->isAppXml(Ljava/lang/String;)Z

    move-result v1

    .line 576
    invoke-static/range {p1 .. p1}, Lcom/rometools/rome/io/XmlReader;->isTextXml(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x5

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    new-instance v14, Lcom/rometools/rome/io/XmlReaderException;

    sget-object v1, Lcom/rometools/rome/io/XmlReader;->HTTP_EX_3:Ljava/text/MessageFormat;

    new-array v2, v13, [Ljava/lang/Object;

    aput-object p1, v2, v12

    aput-object v4, v2, v11

    aput-object v5, v2, v10

    aput-object v6, v2, v9

    aput-object v7, v2, v8

    invoke-virtual {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/rometools/rome/io/XmlReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v14

    :cond_2
    :goto_0
    if-nez v4, :cond_5

    if-eqz v1, :cond_3

    move-object/from16 v14, p6

    .line 580
    invoke-direct {v0, v5, v6, v7, v14}, Lcom/rometools/rome/io/XmlReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 582
    :cond_3
    iget-object v1, v0, Lcom/rometools/rome/io/XmlReader;->defaultEncoding:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "US-ASCII"

    goto/16 :goto_2

    .line 585
    :cond_4
    iget-object v1, v0, Lcom/rometools/rome/io/XmlReader;->defaultEncoding:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    move-object/from16 v14, p6

    if-eqz v5, :cond_7

    const-string v1, "UTF-16BE"

    .line 588
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "UTF-16LE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 589
    :cond_6
    new-instance v15, Lcom/rometools/rome/io/XmlReaderException;

    sget-object v1, Lcom/rometools/rome/io/XmlReader;->HTTP_EX_1:Ljava/text/MessageFormat;

    new-array v2, v13, [Ljava/lang/Object;

    aput-object p1, v2, v12

    aput-object v4, v2, v11

    aput-object v5, v2, v10

    aput-object v6, v2, v9

    aput-object v7, v2, v8

    invoke-virtual {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/rometools/rome/io/XmlReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v15

    :cond_7
    :goto_1
    const-string v1, "UTF-16"

    .line 591
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v5, :cond_8

    const-string v1, "UTF-16"

    .line 592
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v5

    goto :goto_2

    .line 595
    :cond_8
    new-instance v15, Lcom/rometools/rome/io/XmlReaderException;

    sget-object v1, Lcom/rometools/rome/io/XmlReader;->HTTP_EX_2:Ljava/text/MessageFormat;

    new-array v2, v13, [Ljava/lang/Object;

    aput-object p1, v2, v12

    aput-object v4, v2, v11

    aput-object v5, v2, v10

    aput-object v6, v2, v9

    aput-object v7, v2, v8

    invoke-virtual {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/rometools/rome/io/XmlReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v15

    :cond_9
    move-object v1, v4

    :goto_2
    return-object v1
.end method

.method private calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UTF-16"

    .line 527
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "UTF-16BE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "UTF-16LE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move-object p1, p2

    goto/16 :goto_5

    :cond_2
    move-object p1, p3

    goto/16 :goto_5

    .line 522
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/rometools/rome/io/XmlReader;->defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "UTF-8"

    goto/16 :goto_5

    .line 525
    :cond_4
    iget-object p1, p0, Lcom/rometools/rome/io/XmlReader;->defaultEncoding:Ljava/lang/String;

    goto/16 :goto_5

    :cond_5
    const-string v0, "UTF-8"

    .line 532
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_a

    if-eqz p2, :cond_7

    const-string v0, "UTF-8"

    .line 533
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 534
    :cond_6
    new-instance v0, Lcom/rometools/rome/io/XmlReaderException;

    sget-object v5, Lcom/rometools/rome/io/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/rometools/rome/io/XmlReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v0

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    const-string v0, "UTF-8"

    .line 536
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 537
    :cond_8
    new-instance v0, Lcom/rometools/rome/io/XmlReaderException;

    sget-object v5, Lcom/rometools/rome/io/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/rometools/rome/io/XmlReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v0

    :cond_9
    :goto_2
    const-string p1, "UTF-8"

    goto/16 :goto_5

    :cond_a
    const-string v0, "UTF-16BE"

    .line 540
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    .line 549
    :cond_b
    new-instance v0, Lcom/rometools/rome/io/XmlReaderException;

    sget-object v5, Lcom/rometools/rome/io/XmlReader;->RAW_EX_2:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/rometools/rome/io/XmlReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v0

    :cond_c
    :goto_3
    if-eqz p2, :cond_e

    .line 541
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    .line 542
    :cond_d
    new-instance p4, Ljava/io/IOException;

    sget-object v0, Lcom/rometools/rome/io/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_e
    :goto_4
    if-eqz p3, :cond_10

    const-string v0, "UTF-16"

    .line 544
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    .line 545
    :cond_f
    new-instance v0, Lcom/rometools/rome/io/XmlReaderException;

    sget-object v5, Lcom/rometools/rome/io/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/rometools/rome/io/XmlReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v0

    :cond_10
    :goto_5
    return-object p1
.end method

.method private doHttpStream(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v0, 0x1000

    invoke-direct {v8, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 503
    invoke-static {p2}, Lcom/rometools/rome/io/XmlReader;->getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {p2}, Lcom/rometools/rome/io/XmlReader;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v8}, Lcom/rometools/rome/io/XmlReader;->getBOMEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-static {v8}, Lcom/rometools/rome/io/XmlReader;->getXMLGuessEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-static {v8, v4}, Lcom/rometools/rome/io/XmlReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v8

    move v7, p3

    .line 508
    invoke-direct/range {v0 .. v7}, Lcom/rometools/rome/io/XmlReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-direct {p0, v8, p1}, Lcom/rometools/rome/io/XmlReader;->prepareReader(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private doLenientDetection(Ljava/lang/String;Lcom/rometools/rome/io/XmlReaderException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "text/html"

    .line 448
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text/html"

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 452
    :try_start_0
    invoke-virtual {p2}, Lcom/rometools/rome/io/XmlReaderException;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/rometools/rome/io/XmlReader;->doHttpStream(Ljava/io/InputStream;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/rometools/rome/io/XmlReaderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p1

    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 460
    invoke-virtual {p2}, Lcom/rometools/rome/io/XmlReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 462
    invoke-virtual {p2}, Lcom/rometools/rome/io/XmlReaderException;->getContentTypeEncoding()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_3

    .line 465
    iget-object p1, p0, Lcom/rometools/rome/io/XmlReader;->defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "UTF-8"

    goto :goto_1

    .line 468
    :cond_2
    iget-object p1, p0, Lcom/rometools/rome/io/XmlReader;->defaultEncoding:Ljava/lang/String;

    .line 471
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/rometools/rome/io/XmlReaderException;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/rometools/rome/io/XmlReader;->prepareReader(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private doRawStream(Ljava/io/InputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v0, 0x1000

    invoke-direct {p2, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 494
    invoke-static {p2}, Lcom/rometools/rome/io/XmlReader;->getBOMEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-static {p2}, Lcom/rometools/rome/io/XmlReader;->getXMLGuessEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {p2, v0}, Lcom/rometools/rome/io/XmlReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/rometools/rome/io/XmlReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-direct {p0, p2, p1}, Lcom/rometools/rome/io/XmlReader;->prepareReader(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private static getBOMEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 650
    new-array v1, v0, [I

    .line 651
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 652
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 653
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 654
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v4, 0x2

    aput v0, v1, v4

    .line 656
    aget v0, v1, v2

    const/16 v5, 0xff

    const/16 v6, 0xfe

    if-ne v0, v6, :cond_0

    aget v0, v1, v3

    if-ne v0, v5, :cond_0

    const-string v0, "UTF-16BE"

    .line 658
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 659
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    .line 660
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    goto :goto_0

    .line 661
    :cond_0
    aget v0, v1, v2

    if-ne v0, v5, :cond_1

    aget v0, v1, v3

    if-ne v0, v6, :cond_1

    const-string v0, "UTF-16LE"

    .line 663
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 664
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    .line 665
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    goto :goto_0

    .line 666
    :cond_1
    aget v0, v1, v2

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    aget v0, v1, v3

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_2

    aget v0, v1, v4

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_2

    const-string v0, "UTF-8"

    goto :goto_0

    .line 669
    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-string v1, ";"

    .line 628
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    add-int/2addr v1, v3

    .line 630
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 631
    sget-object v1, Lcom/rometools/rome/io/XmlReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 632
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 636
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    const-string p0, "\""

    .line 639
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 640
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private static getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, ";"

    .line 613
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 615
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getXMLGuessEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 678
    new-array v1, v0, [I

    .line 679
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 680
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 681
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 682
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v4, 0x2

    aput v0, v1, v4

    .line 683
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v5, 0x3

    aput v0, v1, v5

    .line 684
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 686
    aget p0, v1, v2

    const/16 v0, 0x3f

    const/16 v6, 0x3c

    if-nez p0, :cond_0

    aget p0, v1, v3

    if-ne p0, v6, :cond_0

    aget p0, v1, v4

    if-nez p0, :cond_0

    aget p0, v1, v5

    if-ne p0, v0, :cond_0

    const-string p0, "UTF-16BE"

    goto :goto_0

    .line 688
    :cond_0
    aget p0, v1, v2

    if-ne p0, v6, :cond_1

    aget p0, v1, v3

    if-nez p0, :cond_1

    aget p0, v1, v4

    if-ne p0, v0, :cond_1

    aget p0, v1, v5

    if-nez p0, :cond_1

    const-string p0, "UTF-16LE"

    goto :goto_0

    .line 690
    :cond_1
    aget p0, v1, v2

    if-ne p0, v6, :cond_2

    aget p0, v1, v3

    if-ne p0, v0, :cond_2

    aget p0, v1, v4

    const/16 v0, 0x78

    if-ne p0, v0, :cond_2

    aget p0, v1, v5

    const/16 v0, 0x6d

    if-ne p0, v0, :cond_2

    const-string p0, "UTF-8"

    goto :goto_0

    .line 692
    :cond_2
    aget p0, v1, v2

    const/16 v0, 0x4c

    if-ne p0, v0, :cond_3

    aget p0, v1, v3

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_3

    aget p0, v1, v4

    const/16 v0, 0xa7

    if-ne p0, v0, :cond_3

    aget p0, v1, v5

    const/16 v0, 0x94

    if-ne p0, v0, :cond_3

    const-string p0, "CP1047"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/16 v0, 0x1000

    .line 702
    new-array v1, v0, [B

    .line 703
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    .line 706
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x1000

    :goto_0
    if-eq v3, v4, :cond_0

    if-ne v5, v4, :cond_0

    if-ge v6, v0, :cond_0

    add-int/2addr v6, v3

    sub-int/2addr v7, v3

    .line 711
    invoke-virtual {p0, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 712
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v2, v6, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v8, ">"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_2

    if-ne v3, v4, :cond_1

    .line 716
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected end of XML stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 718
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XML prolog or ROOT element not found on first "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-lez v6, :cond_3

    .line 723
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 724
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 725
    sget-object p1, Lcom/rometools/rome/io/XmlReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 726
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 727
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static isAppXml(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "application/xml"

    .line 738
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xml-dtd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/"

    .line 739
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTextXml(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "text/xml"

    .line 744
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepareReader(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rometools/rome/io/XmlReader;->reader:Ljava/io/Reader;

    .line 514
    iput-object p2, p0, Lcom/rometools/rome/io/XmlReader;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/rometools/rome/io/XmlReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/rometools/rome/io/XmlReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1
.end method
