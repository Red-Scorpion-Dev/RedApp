.class public interface abstract Lcom/rometools/rome/feed/synd/SyndFeed;
.super Ljava/lang/Object;
.source "SyndFeed.java"

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

.method public abstract createWireFeed(Ljava/lang/String;)Lcom/rometools/rome/feed/WireFeed;
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

.method public abstract getCopyright()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptionEx()Lcom/rometools/rome/feed/synd/SyndContent;
.end method

.method public abstract getDocs()Ljava/lang/String;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
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

.method public abstract getGenerator()Ljava/lang/String;
.end method

.method public abstract getIcon()Lcom/rometools/rome/feed/synd/SyndImage;
.end method

.method public abstract getImage()Lcom/rometools/rome/feed/synd/SyndImage;
.end method

.method public abstract getLanguage()Ljava/lang/String;
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

.method public abstract getManagingEditor()Ljava/lang/String;
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

.method public abstract getStyleSheet()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleEx()Lcom/rometools/rome/feed/synd/SyndContent;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract getWebMaster()Ljava/lang/String;
.end method

.method public abstract isPreservingWireFeed()Z
.end method

.method public abstract setAuthor(Ljava/lang/String;)V
.end method

.method public abstract setAuthors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;)V"
        }
    .end annotation
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

.method public abstract setContributors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCopyright(Ljava/lang/String;)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setDescriptionEx(Lcom/rometools/rome/feed/synd/SyndContent;)V
.end method

.method public abstract setDocs(Ljava/lang/String;)V
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setEntries(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setForeignMarkup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setGenerator(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Lcom/rometools/rome/feed/synd/SyndImage;)V
.end method

.method public abstract setImage(Lcom/rometools/rome/feed/synd/SyndImage;)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method

.method public abstract setLink(Ljava/lang/String;)V
.end method

.method public abstract setLinks(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndLink;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setManagingEditor(Ljava/lang/String;)V
.end method

.method public abstract setModules(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPublishedDate(Ljava/util/Date;)V
.end method

.method public abstract setStyleSheet(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setTitleEx(Lcom/rometools/rome/feed/synd/SyndContent;)V
.end method

.method public abstract setUri(Ljava/lang/String;)V
.end method

.method public abstract setWebMaster(Ljava/lang/String;)V
.end method
