.class Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;
.super Ljava/util/AbstractList;
.source "SyndCategoryListFacade.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/rometools/rome/feed/synd/SyndCategory;",
        ">;"
    }
.end annotation


# instance fields
.field private final subjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/DCSubject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/DCSubject;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->subjects:Ljava/util/List;

    return-void
.end method

.method public static convertElementsSyndCategoryToSubject(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndCategory;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/DCSubject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 161
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 162
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v3}, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->getSubject()Lcom/rometools/rome/feed/module/DCSubject;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v0

    .line 167
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public add(ILcom/rometools/rome/feed/synd/SyndCategory;)V
    .locals 1

    .line 120
    check-cast p2, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p2}, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->getSubject()Lcom/rometools/rome/feed/module/DCSubject;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->subjects:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/rometools/rome/feed/synd/SyndCategory;

    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->add(ILcom/rometools/rome/feed/synd/SyndCategory;)V

    return-void
.end method

.method public get(I)Lcom/rometools/rome/feed/synd/SyndCategory;
    .locals 2

    .line 69
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    iget-object v1, p0, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->subjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/feed/module/DCSubject;

    invoke-direct {v0, p1}, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;-><init>(Lcom/rometools/rome/feed/module/DCSubject;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->get(I)Lcom/rometools/rome/feed/synd/SyndCategory;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lcom/rometools/rome/feed/synd/SyndCategory;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->subjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/feed/module/DCSubject;

    if-eqz p1, :cond_0

    .line 142
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    invoke-direct {v0, p1}, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;-><init>(Lcom/rometools/rome/feed/module/DCSubject;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->remove(I)Lcom/rometools/rome/feed/synd/SyndCategory;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/rometools/rome/feed/synd/SyndCategory;)Lcom/rometools/rome/feed/synd/SyndCategory;
    .locals 2

    .line 95
    check-cast p2, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->getSubject()Lcom/rometools/rome/feed/module/DCSubject;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->subjects:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/feed/module/DCSubject;

    if-eqz p1, :cond_1

    .line 104
    new-instance p2, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    invoke-direct {p2, p1}, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;-><init>(Lcom/rometools/rome/feed/module/DCSubject;)V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p2, Lcom/rometools/rome/feed/synd/SyndCategory;

    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->set(ILcom/rometools/rome/feed/synd/SyndCategory;)Lcom/rometools/rome/feed/synd/SyndCategory;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->subjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
