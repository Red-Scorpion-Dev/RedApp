.class public interface abstract Lcom/rometools/rome/feed/module/Extendable;
.super Ljava/lang/Object;
.source "Extendable.java"


# virtual methods
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
