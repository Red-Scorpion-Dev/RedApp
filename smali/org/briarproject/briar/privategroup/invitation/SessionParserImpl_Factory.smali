.class public final Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;
.super Ljava/lang/Object;
.source "SessionParserImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;

    invoke-direct {v0}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;-><init>()V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;->INSTANCE:Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;
    .locals 1

    .line 23
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;->INSTANCE:Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;

    return-object v0
.end method

.method public static newSessionParserImpl()Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;
    .locals 1

    .line 27
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;

    invoke-direct {v0}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;
    .locals 1

    .line 19
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;

    invoke-direct {v0}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;->get()Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;
    .locals 1

    .line 15
    invoke-static {}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;->provideInstance()Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;

    move-result-object v0

    return-object v0
.end method
