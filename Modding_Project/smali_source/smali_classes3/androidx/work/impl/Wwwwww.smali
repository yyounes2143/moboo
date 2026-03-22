.class public final synthetic Landroidx/work/impl/Wwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkerWrapper;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/ListenableWorker;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/Wwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/ListenableWorker;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/work/impl/Wwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/Wwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/work/impl/Wwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkerWrapper;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Wwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/ListenableWorker;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/work/impl/Wwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/Wwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/impl/Wwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkerWrapper;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Landroidx/work/impl/WorkerWrapper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
