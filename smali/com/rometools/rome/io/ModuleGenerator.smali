.class public interface abstract Lcom/rometools/rome/io/ModuleGenerator;
.super Ljava/lang/Object;
.source "ModuleGenerator.java"


# virtual methods
.method public abstract generate(Lcom/rometools/rome/feed/module/Module;Lorg/jdom2/Element;)V
.end method

.method public abstract getNamespaceUri()Ljava/lang/String;
.end method

.method public abstract getNamespaces()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end method
