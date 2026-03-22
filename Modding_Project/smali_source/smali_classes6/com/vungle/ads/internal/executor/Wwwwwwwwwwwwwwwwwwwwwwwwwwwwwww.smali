.class public final synthetic Lcom/vungle/ads/internal/executor/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function0;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/executor/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Callable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/executor/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/executor/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/concurrent/Callable;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
