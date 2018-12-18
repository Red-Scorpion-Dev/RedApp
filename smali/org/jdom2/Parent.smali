.class public interface abstract Lorg/jdom2/Parent;
.super Ljava/lang/Object;
.source "Parent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract canContainContent(Lorg/jdom2/Content;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/IllegalAddException;
        }
    .end annotation
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract getDocument()Lorg/jdom2/Document;
.end method

.method public abstract getParent()Lorg/jdom2/Parent;
.end method

.method public abstract removeContent(Lorg/jdom2/Content;)Z
.end method
