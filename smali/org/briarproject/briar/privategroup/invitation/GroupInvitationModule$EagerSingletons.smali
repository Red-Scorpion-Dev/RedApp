.class public Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;
.super Ljava/lang/Object;
.source "GroupInvitationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

.field groupInvitationValidator:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
