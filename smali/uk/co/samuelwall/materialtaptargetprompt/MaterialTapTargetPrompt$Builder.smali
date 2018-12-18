.class public Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;
.super Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;
.source "MaterialTapTargetPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions<",
        "Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 1173
    new-instance v0, Luk/co/samuelwall/materialtaptargetprompt/ActivityResourceFinder;

    invoke-direct {v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/ActivityResourceFinder;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;-><init>(Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;I)V

    return-void
.end method

.method public constructor <init>(Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;I)V
    .locals 0

    .line 1189
    invoke-direct {p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;-><init>(Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;)V

    .line 1190
    invoke-virtual {p0, p2}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;->load(I)V

    return-void
.end method
