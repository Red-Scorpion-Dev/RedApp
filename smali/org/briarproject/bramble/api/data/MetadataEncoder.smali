.class public interface abstract Lorg/briarproject/bramble/api/data/MetadataEncoder;
.super Ljava/lang/Object;
.source "MetadataEncoder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract encode(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/db/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
