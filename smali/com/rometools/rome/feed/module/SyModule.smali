.class public interface abstract Lcom/rometools/rome/feed/module/SyModule;
.super Ljava/lang/Object;
.source "SyModule.java"

# interfaces
.implements Lcom/rometools/rome/feed/module/Module;


# virtual methods
.method public abstract getUpdateBase()Ljava/util/Date;
.end method

.method public abstract getUpdateFrequency()I
.end method

.method public abstract getUpdatePeriod()Ljava/lang/String;
.end method

.method public abstract setUpdateBase(Ljava/util/Date;)V
.end method

.method public abstract setUpdateFrequency(I)V
.end method

.method public abstract setUpdatePeriod(Ljava/lang/String;)V
.end method
