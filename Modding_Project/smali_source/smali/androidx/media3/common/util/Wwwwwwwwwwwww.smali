.class public final synthetic Landroidx/media3/common/util/Wwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/AsyncFunction;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/Wwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/common/util/Wwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/SettableFuture;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/common/util/Wwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/Wwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/util/Wwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/SettableFuture;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/common/util/Wwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
