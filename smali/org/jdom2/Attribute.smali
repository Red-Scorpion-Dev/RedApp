.class public Lorg/jdom2/Attribute;
.super Lorg/jdom2/CloneBase;
.source "Attribute.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CDATA_TYPE:Lorg/jdom2/AttributeType;

.field public static final ENTITIES_TYPE:Lorg/jdom2/AttributeType;

.field public static final ENTITY_TYPE:Lorg/jdom2/AttributeType;

.field public static final ENUMERATED_TYPE:Lorg/jdom2/AttributeType;

.field public static final IDREFS_TYPE:Lorg/jdom2/AttributeType;

.field public static final IDREF_TYPE:Lorg/jdom2/AttributeType;

.field public static final ID_TYPE:Lorg/jdom2/AttributeType;

.field public static final NMTOKENS_TYPE:Lorg/jdom2/AttributeType;

.field public static final NMTOKEN_TYPE:Lorg/jdom2/AttributeType;

.field public static final NOTATION_TYPE:Lorg/jdom2/AttributeType;

.field public static final UNDECLARED_TYPE:Lorg/jdom2/AttributeType;


# instance fields
.field protected name:Ljava/lang/String;

.field protected namespace:Lorg/jdom2/Namespace;

.field protected transient parent:Lorg/jdom2/Element;

.field protected specified:Z

.field protected type:Lorg/jdom2/AttributeType;

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->UNDECLARED_TYPE:Lorg/jdom2/AttributeType;

    .line 96
    sget-object v0, Lorg/jdom2/AttributeType;->CDATA:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->CDATA_TYPE:Lorg/jdom2/AttributeType;

    .line 99
    sget-object v0, Lorg/jdom2/AttributeType;->ID:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->ID_TYPE:Lorg/jdom2/AttributeType;

    .line 102
    sget-object v0, Lorg/jdom2/AttributeType;->IDREF:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->IDREF_TYPE:Lorg/jdom2/AttributeType;

    .line 105
    sget-object v0, Lorg/jdom2/AttributeType;->IDREFS:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->IDREFS_TYPE:Lorg/jdom2/AttributeType;

    .line 108
    sget-object v0, Lorg/jdom2/AttributeType;->ENTITY:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->ENTITY_TYPE:Lorg/jdom2/AttributeType;

    .line 111
    sget-object v0, Lorg/jdom2/AttributeType;->ENTITIES:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->ENTITIES_TYPE:Lorg/jdom2/AttributeType;

    .line 114
    sget-object v0, Lorg/jdom2/AttributeType;->NMTOKEN:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->NMTOKEN_TYPE:Lorg/jdom2/AttributeType;

    .line 117
    sget-object v0, Lorg/jdom2/AttributeType;->NMTOKENS:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->NMTOKENS_TYPE:Lorg/jdom2/AttributeType;

    .line 120
    sget-object v0, Lorg/jdom2/AttributeType;->NOTATION:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->NOTATION_TYPE:Lorg/jdom2/AttributeType;

    .line 123
    sget-object v0, Lorg/jdom2/AttributeType;->ENUMERATION:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->ENUMERATED_TYPE:Lorg/jdom2/AttributeType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 138
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    iput-object v0, p0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lorg/jdom2/Attribute;->specified:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 244
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 138
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    iput-object v0, p0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lorg/jdom2/Attribute;->specified:Z

    .line 220
    invoke-virtual {p0, p1}, Lorg/jdom2/Attribute;->setName(Ljava/lang/String;)Lorg/jdom2/Attribute;

    .line 221
    invoke-virtual {p0, p2}, Lorg/jdom2/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom2/Attribute;

    .line 222
    invoke-virtual {p0, p3}, Lorg/jdom2/Attribute;->setAttributeType(Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;

    .line 223
    invoke-virtual {p0, p4}, Lorg/jdom2/Attribute;->setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .locals 1

    .line 174
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

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

    .line 82
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->clone()Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Attribute;
    .locals 2

    .line 573
    invoke-super {p0}, Lorg/jdom2/CloneBase;->clone()Lorg/jdom2/CloneBase;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    const/4 v1, 0x0

    .line 574
    iput-object v1, v0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->clone()Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/jdom2/Element;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .line 383
    iget-object v0, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isSpecified()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lorg/jdom2/Attribute;->specified:Z

    return v0
.end method

.method public setAttributeType(Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;
    .locals 0

    if-nez p1, :cond_0

    .line 512
    sget-object p1, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    :cond_0
    iput-object p1, p0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    const/4 p1, 0x1

    .line 513
    iput-boolean p1, p0, Lorg/jdom2/Attribute;->specified:Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom2/Attribute;
    .locals 3

    if-eqz p1, :cond_1

    .line 352
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    iput-object p1, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 357
    iput-boolean p1, p0, Lorg/jdom2/Attribute;->specified:Z

    return-object p0

    .line 354
    :cond_0
    new-instance v1, Lorg/jdom2/IllegalNameException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can not set a null name for an Attribute."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .locals 3

    if-nez p1, :cond_0

    .line 444
    sget-object p1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 449
    :cond_0
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq p1, v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 451
    :cond_1
    new-instance p1, Lorg/jdom2/IllegalNameException;

    const-string v0, ""

    const-string v1, "attribute namespace"

    const-string v2, "An attribute namespace without a prefix can only be the NO_NAMESPACE namespace"

    invoke-direct {p1, v0, v1, v2}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    const/4 p1, 0x1

    .line 456
    iput-boolean p1, p0, Lorg/jdom2/Attribute;->specified:Z

    return-object p0
.end method

.method protected setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;
    .locals 0

    .line 596
    iput-object p1, p0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    return-object p0
.end method

.method public setSpecified(Z)V
    .locals 0

    .line 549
    iput-boolean p1, p0, Lorg/jdom2/Attribute;->specified:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)Lorg/jdom2/Attribute;
    .locals 3

    if-eqz p1, :cond_1

    .line 485
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    iput-object p1, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    const/4 p1, 0x1

    .line 490
    iput-boolean p1, p0, Lorg/jdom2/Attribute;->specified:Z

    return-object p0

    .line 487
    :cond_0
    new-instance v1, Lorg/jdom2/IllegalDataException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can not set a null value for an Attribute"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
