.class public final synthetic Landroidx/work/impl/Wwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkManagerImpl;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/WorkRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/WorkRequest;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/WorkRequest;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkManagerImpl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/WorkRequest;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkManagerImpl;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/work/impl/WorkerUpdater;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/WorkRequest;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
