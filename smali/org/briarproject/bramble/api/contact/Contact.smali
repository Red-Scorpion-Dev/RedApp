.class public Lorg/briarproject/bramble/api/contact/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final active:Z

.field private final alias:Ljava/lang/String;

.field private final author:Lorg/briarproject/bramble/api/identity/Author;

.field private final id:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final localAuthorId:Lorg/briarproject/bramble/api/identity/AuthorId;

.field private final verified:Z


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Ljava/lang/String;ZZ)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    .line 27
    invoke-static {p4}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 31
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/briarproject/bramble/api/contact/Contact;->id:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 32
    iput-object p2, p0, Lorg/briarproject/bramble/api/contact/Contact;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 33
    iput-object p3, p0, Lorg/briarproject/bramble/api/contact/Contact;->localAuthorId:Lorg/briarproject/bramble/api/identity/AuthorId;

    .line 34
    iput-object p4, p0, Lorg/briarproject/bramble/api/contact/Contact;->alias:Ljava/lang/String;

    .line 35
    iput-boolean p5, p0, Lorg/briarproject/bramble/api/contact/Contact;->verified:Z

    .line 36
    iput-boolean p6, p0, Lorg/briarproject/bramble/api/contact/Contact;->active:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 71
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/contact/Contact;->id:Lorg/briarproject/bramble/api/contact/ContactId;

    check-cast p1, Lorg/briarproject/bramble/api/contact/Contact;

    iget-object p1, p1, Lorg/briarproject/bramble/api/contact/Contact;->id:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/briarproject/bramble/api/contact/Contact;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/briarproject/bramble/api/contact/Contact;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/bramble/api/contact/Contact;->id:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getLocalAuthorId()Lorg/briarproject/bramble/api/identity/AuthorId;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/api/contact/Contact;->localAuthorId:Lorg/briarproject/bramble/api/identity/AuthorId;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/briarproject/bramble/api/contact/Contact;->id:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/contact/ContactId;->hashCode()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/contact/Contact;->active:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/contact/Contact;->verified:Z

    return v0
.end method
