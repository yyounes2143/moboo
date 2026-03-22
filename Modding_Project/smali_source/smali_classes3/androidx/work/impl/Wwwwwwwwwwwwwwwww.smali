.class public final synthetic Landroidx/work/impl/Wwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/WorkerParameters$RuntimeExtras;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/StartStopToken;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkLauncherImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkLauncherImpl;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/Wwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkLauncherImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/Wwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/StartStopToken;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/Wwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Wwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkLauncherImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/Wwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/StartStopToken;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/Wwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/work/impl/WorkLauncherImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/impl/WorkLauncherImpl;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
