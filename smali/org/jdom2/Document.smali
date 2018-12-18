.class public Lorg/jdom2/Document;
.super Lorg/jdom2/CloneBase;
.source "Document.java"

# interfaces
.implements Lorg/jdom2/Parent;


# instance fields
.field protected baseURI:Ljava/lang/String;

.field transient content:Lorg/jdom2/ContentList;

.field private transient propertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    :cond_0
    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p0, p2}, Lorg/jdom2/Document;->setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;

    :cond_1
    if-eqz p3, :cond_2

    .line 123
    invoke-virtual {p0, p3}, Lorg/jdom2/Document;->setBaseURI(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public canContainContent(Lorg/jdom2/Content;IZ)V
    .locals 1

    .line 793
    instance-of v0, p1, Lorg/jdom2/Element;

    if-eqz v0, :cond_3

    .line 794
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    if-eqz p3, :cond_0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    if-gez v0, :cond_2

    .line 802
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    if-ge v0, p2, :cond_1

    goto :goto_0

    .line 803
    :cond_1
    new-instance p1, Lorg/jdom2/IllegalAddException;

    const-string p2, "A root element cannot be added before the DocType"

    invoke-direct {p1, p2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 799
    :cond_2
    new-instance p1, Lorg/jdom2/IllegalAddException;

    const-string p2, "Cannot add a second root element, only one is allowed"

    invoke-direct {p1, p2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 807
    :cond_3
    :goto_0
    instance-of v0, p1, Lorg/jdom2/DocType;

    if-eqz v0, :cond_7

    .line 808
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    if-eqz p3, :cond_4

    if-ne v0, p2, :cond_4

    return-void

    :cond_4
    if-gez v0, :cond_6

    .line 817
    iget-object p3, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {p3}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_7

    if-lt p3, p2, :cond_5

    goto :goto_1

    .line 819
    :cond_5
    new-instance p1, Lorg/jdom2/IllegalAddException;

    const-string p2, "A DocType cannot be added after the root element"

    invoke-direct {p1, p2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 814
    :cond_6
    new-instance p1, Lorg/jdom2/IllegalAddException;

    const-string p2, "Cannot add a second doctype, only one is allowed"

    invoke-direct {p1, p2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 824
    :cond_7
    :goto_1
    instance-of p2, p1, Lorg/jdom2/CDATA;

    if-nez p2, :cond_a

    .line 828
    instance-of p2, p1, Lorg/jdom2/Text;

    if-nez p2, :cond_9

    .line 832
    instance-of p1, p1, Lorg/jdom2/EntityRef;

    if-nez p1, :cond_8

    return-void

    .line 833
    :cond_8
    new-instance p1, Lorg/jdom2/IllegalAddException;

    const-string p2, "An EntityRef is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 829
    :cond_9
    new-instance p1, Lorg/jdom2/IllegalAddException;

    const-string p2, "A Text is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 825
    :cond_a
    new-instance p1, Lorg/jdom2/IllegalAddException;

    const-string p2, "A CDATA is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/jdom2/Document;->clone()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/jdom2/Document;->clone()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Document;
    .locals 4

    .line 684
    invoke-super {p0}, Lorg/jdom2/CloneBase;->clone()Lorg/jdom2/CloneBase;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Document;

    .line 688
    new-instance v1, Lorg/jdom2/ContentList;

    invoke-direct {v1, v0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v1, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    const/4 v1, 0x0

    .line 692
    :goto_0
    iget-object v2, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v2}, Lorg/jdom2/ContentList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 693
    iget-object v2, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v2, v1}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v2

    .line 694
    instance-of v3, v2, Lorg/jdom2/Element;

    if-eqz v3, :cond_0

    .line 695
    check-cast v2, Lorg/jdom2/Element;

    invoke-virtual {v2}, Lorg/jdom2/Element;->clone()Lorg/jdom2/Element;

    move-result-object v2

    .line 696
    iget-object v3, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 698
    :cond_0
    instance-of v3, v2, Lorg/jdom2/Comment;

    if-eqz v3, :cond_1

    .line 699
    check-cast v2, Lorg/jdom2/Comment;

    invoke-virtual {v2}, Lorg/jdom2/Comment;->clone()Lorg/jdom2/Comment;

    move-result-object v2

    .line 700
    iget-object v3, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 702
    :cond_1
    instance-of v3, v2, Lorg/jdom2/ProcessingInstruction;

    if-eqz v3, :cond_2

    .line 703
    check-cast v2, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {v2}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v2

    .line 704
    iget-object v3, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 706
    :cond_2
    instance-of v3, v2, Lorg/jdom2/DocType;

    if-eqz v3, :cond_3

    .line 707
    check-cast v2, Lorg/jdom2/DocType;

    invoke-virtual {v2}, Lorg/jdom2/DocType;->clone()Lorg/jdom2/DocType;

    move-result-object v2

    .line 708
    iget-object v3, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter<",
            "TF;>;)",
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 435
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Root element not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDocType()Lorg/jdom2/DocType;
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_0
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/DocType;

    return-object v0
.end method

.method public getDocument()Lorg/jdom2/Document;
    .locals 0

    return-object p0
.end method

.method public getParent()Lorg/jdom2/Parent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootElement()Lorg/jdom2/Element;
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    if-ltz v0, :cond_0

    .line 222
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRootElement()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 674
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeContent(Lorg/jdom2/Content;)Z
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setBaseURI(Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    return-void
.end method

.method public setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;
    .locals 2

    if-nez p1, :cond_1

    .line 289
    iget-object p1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {p1}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result p1

    if-ltz p1, :cond_0

    .line 290
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    :cond_0
    return-object p0

    .line 294
    :cond_1
    invoke-virtual {p1}, Lorg/jdom2/DocType;->getParent()Lorg/jdom2/Document;

    move-result-object v0

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    if-gez v0, :cond_2

    .line 302
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    :goto_0
    return-object p0

    .line 295
    :cond_3
    new-instance v0, Lorg/jdom2/IllegalAddException;

    const-string v1, "The DocType already is attached to a document"

    invoke-direct {v0, p1, v1}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/DocType;Ljava/lang/String;)V

    throw v0
.end method

.method public setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {p0}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1}, Lorg/jdom2/DocType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " No DOCTYPE declaration, "

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :goto_0
    invoke-virtual {p0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const-string v2, "Root is "

    .line 643
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jdom2/Element;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v1, " No root element"

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, "]"

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
