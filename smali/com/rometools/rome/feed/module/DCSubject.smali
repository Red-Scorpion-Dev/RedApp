.class public interface abstract Lcom/rometools/rome/feed/module/DCSubject;
.super Ljava/lang/Object;
.source "DCSubject.java"

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

.method public abstract getTaxonomyUri()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract setTaxonomyUri(Ljava/lang/String;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method
