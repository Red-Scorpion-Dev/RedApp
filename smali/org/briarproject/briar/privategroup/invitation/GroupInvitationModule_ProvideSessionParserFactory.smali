.class public final Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;
.super Ljava/lang/Object;
.source "GroupInvitationModule_ProvideSessionParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/privategroup/invitation/SessionParser;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

.field private final sessionParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;->sessionParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;-><init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/SessionParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/SessionParser;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;->proxyProvideSessionParser(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSessionParser(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/privategroup/invitation/SessionParser;
    .locals 0

    .line 41
    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;->provideSessionParser(Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;)Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;->get()Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/privategroup/invitation/SessionParser;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;->sessionParserProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;->provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    move-result-object v0

    return-object v0
.end method
