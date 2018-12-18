.class public final Lorg/jdom2/output/XMLOutputter;
.super Ljava/lang/Object;
.source "XMLOutputter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;


# instance fields
.field private myFormat:Lorg/jdom2/output/Format;

.field private myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 226
    new-instance v0, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;-><init>(Lorg/jdom2/output/XMLOutputter$1;)V

    sput-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, v0, v0}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .locals 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 239
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    if-nez p1, :cond_0

    .line 266
    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    if-nez p2, :cond_1

    .line 267
    sget-object p2, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    :cond_1
    iput-object p2, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/jdom2/output/XMLOutputter;->clone()Lorg/jdom2/output/XMLOutputter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/XMLOutputter;
    .locals 2

    .line 1039
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/XMLOutputter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1045
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final output(Ljava/util/List;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 902
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V

    .line 954
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V

    .line 840
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V

    .line 860
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V

    .line 972
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final outputString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 651
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 653
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/Comment;)Ljava/lang/String;
    .locals 1

    .line 717
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 719
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Comment;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/DocType;)Ljava/lang/String;
    .locals 1

    .line 602
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 604
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/DocType;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 1

    .line 624
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 626
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/ProcessingInstruction;)Ljava/lang/String;
    .locals 1

    .line 739
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 741
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMLOutputter[omitDeclaration = "

    .line 1057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitDeclaration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 1059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "encoding = "

    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 1062
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "omitEncoding = "

    .line 1063
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitEncoding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 1065
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "indent = \'"

    .line 1066
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    .line 1068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 1069
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expandEmptyElements = "

    .line 1070
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 1072
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lineSeparator = \'"

    .line 1073
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 1086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v4, "\\n"

    .line 1080
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v4, "\\t"

    .line 1083
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v4, "\\r"

    .line 1077
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "\', "

    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "textMode = "

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
