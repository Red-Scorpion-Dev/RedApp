.class public interface abstract Lcom/rometools/rome/feed/synd/SyndContent;
.super Ljava/lang/Object;
.source "SyndContent.java"

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

.method public abstract getMode()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract setMode(Ljava/lang/String;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method
