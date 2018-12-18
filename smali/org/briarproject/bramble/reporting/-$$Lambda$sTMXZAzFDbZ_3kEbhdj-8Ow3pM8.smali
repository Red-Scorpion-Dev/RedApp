.class public final synthetic Lorg/briarproject/bramble/reporting/-$$Lambda$sTMXZAzFDbZ_3kEbhdj-8Ow3pM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/reporting/DevReporterImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/reporting/DevReporterImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/reporting/-$$Lambda$sTMXZAzFDbZ_3kEbhdj-8Ow3pM8;->f$0:Lorg/briarproject/bramble/reporting/DevReporterImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/reporting/-$$Lambda$sTMXZAzFDbZ_3kEbhdj-8Ow3pM8;->f$0:Lorg/briarproject/bramble/reporting/DevReporterImpl;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reporting/DevReporterImpl;->sendReports()V

    return-void
.end method
