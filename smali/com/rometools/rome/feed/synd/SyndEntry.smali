.class public interface abstract Lcom/rometools/rome/feed/synd/SyndEntry;
.super Ljava/lang/Object;
.source "SyndEntry.java"

# interfaces
.implements Lcom/rometools/rome/feed/module/Extendable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract findRelatedLink(Ljava/lang/String;)Lcom/rometools/rome/feed/synd/SyndLink;
.end method

.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getAuthors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndCategory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getComments()Ljava/lang/String;
.end method

.method public abstract getContents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndContent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContributors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription()Lcom/rometools/rome/feed/synd/SyndContent;
.end method

.method public abstract getEnclosures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEnclosure;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForeignMarkup()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLink()Ljava/lang/String;
.end method

.method public abstract getLinks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndLink;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;
.end method

.method public abstract getModules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublishedDate()Ljava/util/Date;
.end method

.method public abstract getSource()Lcom/rometools/rome/feed/synd/SyndFeed;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleEx()Lcom/rometools/rome/feed/synd/SyndContent;
.end method

.method public abstract getUpdatedDate()Ljava/util/Date;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract setCategories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndCategory;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setComments(Ljava/lang/String;)V
.end method

.method public abstract setContents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndContent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDescription(Lcom/rometools/rome/feed/synd/SyndContent;)V
.end method

.method public abstract setEnclosures(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEnclosure;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLink(Ljava/lang/String;)V
.end method

.method public abstract setPublishedDate(Ljava/util/Date;)V
.end method

.method public abstract setUri(Ljava/lang/String;)V
.end method
