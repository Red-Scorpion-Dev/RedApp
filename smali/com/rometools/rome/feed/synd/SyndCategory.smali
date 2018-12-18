.class public interface abstract Lcom/rometools/rome/feed/synd/SyndCategory;
.super Ljava/lang/Object;
.source "SyndCategory.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTaxonomyUri()Ljava/lang/String;
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setTaxonomyUri(Ljava/lang/String;)V
.end method
