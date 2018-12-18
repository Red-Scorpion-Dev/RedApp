.class public interface abstract Lcom/rometools/rome/feed/module/Module;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getUri()Ljava/lang/String;
.end method
