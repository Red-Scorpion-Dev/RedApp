.class public interface abstract Lorg/briarproject/bramble/api/data/MetadataParser;
.super Ljava/lang/Object;
.source "MetadataParser.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract parse(Lorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
