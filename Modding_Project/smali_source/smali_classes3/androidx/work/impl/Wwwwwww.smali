.class public final synthetic Landroidx/work/impl/Wwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkerWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/WorkerWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/WorkerWrapper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
